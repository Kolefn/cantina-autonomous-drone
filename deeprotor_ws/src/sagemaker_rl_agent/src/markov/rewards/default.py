import math

def reward_function(params):

    target_x = params['target_x']
    target_y = params['target_y']
    target_z = params['target_z']

    x = params['z']
    y = params['y']
    z = params['z']

    dx = x - target_x
    dy = y - target_y
    dz = z = target_z

    # rotations needed for drone camera to face target
    pitch = -math.atan2(dy, math.sqrt(dx*dx + dz*dz))
    yaw = math.atan2(dz, dx) - 1.5708

    # higher reward for less needed rotation
    reward = 1 - ((abs(pitch) + abs(yaw)) / (math.pi*2))

    return float(reward)