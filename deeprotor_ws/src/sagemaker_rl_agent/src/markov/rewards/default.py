import math

def exp_decay(x):
    return 0.1 ** (2x)

def reward_function(params):

    target_x = params['target_x']
    target_y = params['target_y']
    target_z = params['target_z']

    x = params['x']
    y = params['y']
    z = params['z']

    ideal_x = params['start_x']
    ideal_y = params['start_y']
    ideal_z = target_z * 1.5

    x_bound = params['x_bound']
    y_bound = params['y_bound']
    z_bound = params['z_bound']

    max_dist_x = abs(-x_bound - abs(ideal_x))
    max_dist_y = abs(-y_bound - abs(ideal_y))
    # can only travel along positive z axis
    max_dist_z = z_bound - ideal_z

    norm_dist_x = (abs(ideal_x - x) / max_dist_x)
    norm_dist_y = (abs(ideal_y - y) / max_dist_y)
    norm_dist_z = (abs(ideal_z - z) / max_dist_z)

    axis_weight = 0.333
    factor_x = exp_decay(norm_dist_x) * axis_weight
    factor_y = exp_decay(norm_dist_y) * axis_weight
    factor_z = exp_decay(norm_dist_z) * axis_weight

    reward = factor_x + factor_y + factor_z

    return float(reward)

def target_track_reward_function(params):

    target_x = params['target_x']
    target_y = params['target_y']
    target_z = params['target_z']

    x = params['x']
    y = params['y']
    z = params['z']

    current_pitch = params['pitch']
    current_yaw = params['yaw']

    dx = target_x - x 
    dy = target_y - y
    dz = target_z - z

    ONE_TURN = math.pi*2

    # rotations needed for drone camera to face target
    pitch = (math.atan2(dz, math.sqrt(dx*dx + dy*dy)) - current_pitch) % ONE_TURN

    # drone starts facing the target in the yaw axis
    start_dx = target_x - params['start_x']
    start_dy = target_y - params['start_y']
    starting_yaw_offset = math.atan2(start_dy, start_dx)

    yaw = (math.atan2(dy, dx) - starting_yaw_offset - current_yaw) % ONE_TURN

    # we want the drone to maintain a close position to the target
    x_bound = params['x_bound']
    y_bound = params['y_bound']
    z_bound = params['z_bound']
    dbx = x_bound - target_x
    dby = y_bound - target_y
    dbz = z_bound - target_z
    ideal_dist = 0.5
    target_dist = math.sqrt(dx*dx + dy*dy + dz*dz)
    max_target_dist = math.sqrt(dbx*dbx + dby*dby + dbz*dbz)
    dist_factor = abs(ideal_dist - target_dist) / max_target_dist

    # a normalized (0, 1) value representing the amount of rotation needed
    rot_factor = ((abs(pitch) + abs(yaw)) / (ONE_TURN*2))

    # higher reward for factors closer to zero
    reward = 1 - dist_factor - rot_factor

    return float(reward)