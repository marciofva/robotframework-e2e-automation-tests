def getBaseURL(env):

    if env == 'qa':
        domain = 'http://automationpractice.com/index.php'

    elif env == 'prod':
        domain = 'http://localhost:8080'

    return domain
