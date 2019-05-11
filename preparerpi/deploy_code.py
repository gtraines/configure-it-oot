import sys
from .robot_deploy import connect_rpi


if __name__ == '__main__':
    args = sys.argv
    if len(args) < 2:
        raise IndexError('Last Octet required for IP')
    ip_octet_4 = sys.argv[1]

    pi_rcxn = connect_rpi(last_octet=ip_octet_4)
    pi_rcxn.update_sources()
