import random, string

def generate_password(length=12):
    chars = string.ascii_letters + string.digits + '!#$%&*+,-./:;?@[\]^_`{|}'
    return ''.join([random.choice(chars) for _ in range(length)])

if __name__ == '__main__':
    valid = False
    while not valid:
        try:
            n = int(input('Choose password lenght: '))
        except:
            print('Invalid output')
            continue

        valid = True
        password = generate_password(n)
        print(password)

        