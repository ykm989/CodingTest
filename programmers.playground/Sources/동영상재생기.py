def solution(video_len, pos, op_start, op_end, commands):
    def sec2int(time):
        min, sec = map(int, time.split(":"))
        return min * 60 + sec
    
    def skip(pos):
        return op_end if op_start <= pos < op_end else pos
    
    video_len, pos, op_start, op_end = map(sec2int, [video_len, pos, op_start, op_end])
    
    pos = skip(pos)
    
    for command in commands:
        if command == "prev": pos = max(0, pos - 10)
        else: pos = min(video_len, pos + 10)
        pos = skip(pos)
            
    return f"{pos // 60:02d}:{pos % 60:02d}"