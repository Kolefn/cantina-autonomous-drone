import math

def reward_function(params):

    target_x = params['target_x']
    target_y = params['target_y']
    target_z = params['target_z']

    x = params['z']
    y = params['y']
    z = params['z']

    dx = target_x - x 
    dy = target_y - y
    dz = target_z - z

    # rotations needed for drone camera to face target
    pitch = math.atan2(dz, math.sqrt(dx*dx + dy*dy))

    starting_offset = math.atan2(-1.5, 1.5) #@TODO dont hardcode the targets x,y here
    yaw = math.atan2(dy, dx) - starting_offset

    # higher reward for less needed rotation
    reward = 1 - ((abs(pitch) + abs(yaw)) / (math.pi*2))

    return float(reward)