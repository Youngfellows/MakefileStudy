.DELETE_ON_ERROR:
all: one two

one:
	touch one
	false			# 此处失败，会删除one目标文件，且会停止运行

two:
	touch two
	false			# 此处失败，会删除two目标文件，且会停止运行；但one目标的规则执行失败，已停止运行，不会执行到two目标的规则

# DELETE_ON_ERROR will delete the target of a rule if the rule fails in this manner. 
# This will happen for all targets, not just the one it is before like PHONY.
# .DELETE_ON_ERROR会影响所有目标；当执行目标的规则失败时，会删除目标文件