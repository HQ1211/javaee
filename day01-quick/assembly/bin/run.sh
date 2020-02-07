cd `direname $0`
cd ..
DEPLOY_DIR=`pwd`
CONF_DIR=$DEPLOY_DIR/conf
SIDOUT_FILE=$DEPLOY_DIR/stdout.log

LIB_DIR=$DEPLOY_DIR/lib
CONF_DIR=$DEPLOY_DIR/conf
LIB_JARS=`ls $LIB_DIR|grep .jar|awk '{print "'$LIB_DIR'/"$0}'|tr "\n" ":"`
echo $LIB_JARS
java -classpath $CONF_DIR:$LIB_JARS club.banyuan.App >$SIDOUT_FILE 2>&1 &
echo "RUN SUCCESS!"