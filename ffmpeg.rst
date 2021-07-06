FFMPEG
======

* install:

    sudo apt install ffmpeg

* use:

    # cut file
    ffmpeg \
        -i file_origin.mkv  \       
        -ss 00:01:50 \              # initial cut
        -c copy \                   # not change codec
        -t 00:02:00 \               # duration 
        file_result_cut.mkv         # file result