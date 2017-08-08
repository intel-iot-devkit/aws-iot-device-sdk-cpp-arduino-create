#Merge src and include
rsync -av include/ src/
#Rename samples as examples
mv samples examples
#Remove websocket and mbedtls
rm -rf network/MbedTLS
rm -rf network/WebSocket
#Move common, network to src
mv common/ src/
mv network/ src/
#Create mega header file
#search_dir=src/
#for entry in "$search_dir"*; do
#  if [ ${entry: -4} == ".hpp" ]
#  then
#      echo "#include \"${entry#$search_dir}\"" >> src/aws-iot-device-sdk-cpp.h
#  fi
##done
find src -name *.hpp | sed -n 's|^src/|#include\ "|p' | sed 's/$/"/' | sed 'w src/aws-iot-device-sdk-cpp.h'
#Remove include folder
rm -rf include/
#Add corei7 folder to support load flags
mkdir src/corei7
:> src/corei7/empty
#Remove doxygen, cli, tests
rm -rf doxygen
rm -rf cli
rm -rf tests
#Move readme to extras
mkdir extras
mv *.md extras/
mv LICENSE extras/
mv NOTICE extras/
#Get rapidJson and its license
git clone https://github.com/miloyip/rapidjson.git tmp
mv tmp/include/rapidjson src/
mv tmp/license.txt src/rapidjson/
rm -rf tmp
#Get the discovery Arduino sample TODO


