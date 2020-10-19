FROM busybox

ADD serve_hostname /
ENTRYPOINT /serve_hostname

