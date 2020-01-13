import math

def reward_function(params):

    target_x = params['target_x']
    target_y = params['target_y']
    target_z = params['target_z']

    x = params['z']
    y = params['y']
    z = params['z']

    current_pitch = params['pitch']
    current_yaw = params['yaw']

    dx = target_x - x 
    dy = target_y - y
    dz = target_z - z

    xymag = math.sqrt(dx*dx + dy*dy)

    ONE_TURN = math.pi*2

    # rotations needed for drone camera to face target
    pitch = (math.atan2(dz, xymag) - current_pitch) % ONE_TURN

    starting_yaw_offset = math.atan2(-1.5, 1.5) #@TODO dont hardcode the targets x,y here
    yaw = (math.atan2(dy, dx) - starting_yaw_offset - current_yaw) % ONE_TURN

    # we want the drone to maintain a close position to the target
    # note xymag cannot be negative because it is the sqrt of a positive
    # dividing by an arbitrary max dist normalizes (0,1)
    ideal_dist = 0.5
    max_dist = 10
    dist_factor = abs(ideal_dist - xymag) / max_dist

    # a normalized (0, 1) value representing the amount of rotation needed
    rot_factor = ((abs(pitch) + abs(yaw)) / (ONE_TURN*2))

    # higher reward for factors closer to zero
    reward = 1 - dist_factor - rot_factor

    return float(reward)