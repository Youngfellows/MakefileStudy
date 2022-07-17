target=$1

MAKE_FILE=work-build.mk
LOCAL_OUT_PATH=./root/work

# 注意：shell和makefile取变量的不同方式，赋值方式也有些差别
# shell赋值取变量值     ：如变量 var，赋值 var=lsy 或 var=${var}，取值$var or ${var}
# shell赋值时等号两边不能有空格
# makefile赋值取变量值  ：如变量 var，赋值 var = lsy 或 var := lsy，取值$(var)
# makefile赋值时等号两边可以有空格

echo "make prebuild.mk"
make -f prebuild.mk \               # 给make 传参
    MAKE_FILE=${MAKE_FILE} \
    LOCAL_OUT_PATH=${LOCAL_OUT_PATH} \
    ${target}

if [ $? -ne 0 ]; then
    echo "error"
    exit 0
fi

echo "make build.mk"
make -f build.mk \
    MAKE_FILE=${MAKE_FILE} \
    LOCAL_OUT_PATH=${LOCAL_OUT_PATH} \
    ${target}
echo "end"