### CMAKE
  ![Alt text](image.png)

## aux_source_directory(dir var)

## include_directories ( dir )
  �Զ�ȥdir·���²���ͷ�ļ�
  gcc -l dir

### ���ɶ�̬��;�̬��
  ![Alt text](image-1.png)

## $ PROJECT_BINARY_DIR
  cmakeϵͳ������ִ��cmake����ĵ�ַ �����buildĿ¼��ִ�� ��ΪbuildĿ¼
## add_library(lib_name STATIC/SHARED src)
  ���ɿ�
  lib_name: ����
  STATIC/SHARED: ��̬/��̬��
  src : ������������ļ� ָԴ�ļ�
## set_target_properties()
  ���¶��������
## $ LIBRARY_OUTPUT_PATH
  cmakeϵͳ���������ɵĿ��ļ��������Ŀ¼��

### ���ӿ��ļ�
## $ EXECUTABLE_OUTPUT_PATH
  cmakeϵͳ���������ɵĿ�ִ���ļ���Ŀ¼
  ![Alt text](image-2.png)
## find_library(var lib_name lib_path1 lib_path2)
  ���ҿ� �� �洢������var
## target_link_libraries(target lib_name)
  ���ӿ⵽��ִ���ļ���

### �������
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(tools /home/z/nfs/gcc-linaro-7.3.1-2018.05-x86_64_arm-linux-gnueabihf/bin)
set(CMAKE_C_COMPILER ${tools}/arm-linux-gnueabihf-gcc)
set(CMAKE_CXX_COMPILER  ${tools}/arm-linux-gnueabihf-g++)

��������c c++�ı�����Ϊ���������

### ���ȫ�ֺ궨��
`add_definitions(-Dxxxx)`