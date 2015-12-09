IVY_MIRROR_PROP=${IVY_MIRROR_PROP:-http://cloud.sogou-inc.com/nexus/content/groups/public/}

export ANT_HOME=/search/share/ant
export PATH=${ANT_HOME}/bin:$PATH
FORREST_HOME=/opt/forrest
#ant -Doffline=true -Dmvnrepo=$IVY_MIRROR_PROP -Dforrest.home=$FORREST_HOME tar piggybank
ant -lib /search/litao/apache-pig/ant-junit-1.8.2.jar:/search/share/ant/lib/ant-launcher.jar -Dmvnrepo=$IVY_MIRROR_PROP -Dforrest.home=$FORREST_HOME -Dhbaseversion=94 -Dhadoopversion=23 piggybank tar
#ant -lib /search/litao/apache-pig/ant-junit-1.8.2.jar -Dmvnrepo=$IVY_MIRROR_PROP -Dforrest.home=$FORREST_HOME -Dhbaseversion=94 -Dhadoopversion=23 test-commit

