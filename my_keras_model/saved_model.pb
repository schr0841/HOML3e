��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
-
Sqrt
x"T
y"T"
Ttype:

2
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.15.12v2.15.0-11-g63f5a65c7cd8��
n
ConstConst*
_output_shapes

:*
dtype0*1
value(B&"T$�@X�]>���I�o�@�͑@��@
p
Const_1Const*
_output_shapes

:*
dtype0*1
value(B&"��@���?��D^=@��B9+��
l
Const_2Const*
_output_shapes

:*
dtype0*-
value$B""Mi@��CT$�@X�]>���I
l
Const_3Const*
_output_shapes

:*
dtype0*-
value$B""�y@��A��@���?��D
�
my_cool_model/dense_7/biasVarHandleOp*
_output_shapes
: *+

debug_namemy_cool_model/dense_7/bias/*
dtype0*
shape:*+
shared_namemy_cool_model/dense_7/bias
�
.my_cool_model/dense_7/bias/Read/ReadVariableOpReadVariableOpmy_cool_model/dense_7/bias*
_output_shapes
:*
dtype0
�
my_cool_model/dense_7/kernelVarHandleOp*
_output_shapes
: *-

debug_namemy_cool_model/dense_7/kernel/*
dtype0*
shape
:*-
shared_namemy_cool_model/dense_7/kernel
�
0my_cool_model/dense_7/kernel/Read/ReadVariableOpReadVariableOpmy_cool_model/dense_7/kernel*
_output_shapes

:*
dtype0
�
my_cool_model/dense_6/biasVarHandleOp*
_output_shapes
: *+

debug_namemy_cool_model/dense_6/bias/*
dtype0*
shape:*+
shared_namemy_cool_model/dense_6/bias
�
.my_cool_model/dense_6/bias/Read/ReadVariableOpReadVariableOpmy_cool_model/dense_6/bias*
_output_shapes
:*
dtype0
�
my_cool_model/dense_6/kernelVarHandleOp*
_output_shapes
: *-

debug_namemy_cool_model/dense_6/kernel/*
dtype0*
shape
:#*-
shared_namemy_cool_model/dense_6/kernel
�
0my_cool_model/dense_6/kernel/Read/ReadVariableOpReadVariableOpmy_cool_model/dense_6/kernel*
_output_shapes

:#*
dtype0
�
my_cool_model/dense_5/biasVarHandleOp*
_output_shapes
: *+

debug_namemy_cool_model/dense_5/bias/*
dtype0*
shape:*+
shared_namemy_cool_model/dense_5/bias
�
.my_cool_model/dense_5/bias/Read/ReadVariableOpReadVariableOpmy_cool_model/dense_5/bias*
_output_shapes
:*
dtype0
�
my_cool_model/dense_5/kernelVarHandleOp*
_output_shapes
: *-

debug_namemy_cool_model/dense_5/kernel/*
dtype0*
shape
:*-
shared_namemy_cool_model/dense_5/kernel
�
0my_cool_model/dense_5/kernel/Read/ReadVariableOpReadVariableOpmy_cool_model/dense_5/kernel*
_output_shapes

:*
dtype0
�
my_cool_model/dense_4/biasVarHandleOp*
_output_shapes
: *+

debug_namemy_cool_model/dense_4/bias/*
dtype0*
shape:*+
shared_namemy_cool_model/dense_4/bias
�
.my_cool_model/dense_4/bias/Read/ReadVariableOpReadVariableOpmy_cool_model/dense_4/bias*
_output_shapes
:*
dtype0
�
my_cool_model/dense_4/kernelVarHandleOp*
_output_shapes
: *-

debug_namemy_cool_model/dense_4/kernel/*
dtype0*
shape
:*-
shared_namemy_cool_model/dense_4/kernel
�
0my_cool_model/dense_4/kernel/Read/ReadVariableOpReadVariableOpmy_cool_model/dense_4/kernel*
_output_shapes

:*
dtype0
v
countVarHandleOp*
_output_shapes
: *

debug_namecount/*
dtype0	*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0	
�
varianceVarHandleOp*
_output_shapes
: *

debug_name	variance/*
dtype0*
shape:*
shared_name
variance
a
variance/Read/ReadVariableOpReadVariableOpvariance*
_output_shapes
:*
dtype0
w
meanVarHandleOp*
_output_shapes
: *

debug_namemean/*
dtype0*
shape:*
shared_namemean
Y
mean/Read/ReadVariableOpReadVariableOpmean*
_output_shapes
:*
dtype0
|
count_1VarHandleOp*
_output_shapes
: *

debug_name
count_1/*
dtype0	*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0	
�

variance_1VarHandleOp*
_output_shapes
: *

debug_namevariance_1/*
dtype0*
shape:*
shared_name
variance_1
e
variance_1/Read/ReadVariableOpReadVariableOp
variance_1*
_output_shapes
:*
dtype0
}
mean_1VarHandleOp*
_output_shapes
: *

debug_name	mean_1/*
dtype0*
shape:*
shared_namemean_1
]
mean_1/Read/ReadVariableOpReadVariableOpmean_1*
_output_shapes
:*
dtype0
p
serve_input_1Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
p
serve_input_2Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserve_input_1serve_input_2Const_3Const_2Const_1Constmy_cool_model/dense_4/kernelmy_cool_model/dense_4/biasmy_cool_model/dense_5/kernelmy_cool_model/dense_5/biasmy_cool_model/dense_6/kernelmy_cool_model/dense_6/biasmy_cool_model/dense_7/kernelmy_cool_model/dense_7/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *6
f1R/
-__inference_signature_wrapper___call___470232
z
serving_default_input_1Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
z
serving_default_input_2Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCall_1StatefulPartitionedCallserving_default_input_1serving_default_input_2Const_3Const_2Const_1Constmy_cool_model/dense_4/kernelmy_cool_model/dense_4/biasmy_cool_model/dense_5/kernelmy_cool_model/dense_5/biasmy_cool_model/dense_6/kernelmy_cool_model/dense_6/biasmy_cool_model/dense_7/kernelmy_cool_model/dense_7/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *6
f1R/
-__inference_signature_wrapper___call___470264

NoOpNoOp
�
Const_4Const"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
�
_endpoint_names
_endpoint_signatures
	variables
trainable_variables
non_trainable_variables
_all_variables
_misc_assets
	serve
	
signatures*
* 

	
serve* 
j
0
1
2
3
4
5
6
7
8
9
10
11
12
13*
<
0
1
2
3
4
5
6
7*
.
0
1
2
3
4
5*
<
0
1
2
3
4
5
6
7*
* 

trace_0* 
"
	serve
serving_default* 
* 
F@
VARIABLE_VALUEmean_1&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
variance_1&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
GA
VARIABLE_VALUEcount_1&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
D>
VARIABLE_VALUEmean&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEvariance&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
E?
VARIABLE_VALUEcount&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEmy_cool_model/dense_4/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEmy_cool_model/dense_4/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEmy_cool_model/dense_5/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEmy_cool_model/dense_5/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEmy_cool_model/dense_6/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEmy_cool_model/dense_6/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEmy_cool_model/dense_7/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEmy_cool_model/dense_7/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
>
	capture_0
	capture_1
	capture_2
	capture_3* 
>
	capture_0
	capture_1
	capture_2
	capture_3* 
>
	capture_0
	capture_1
	capture_2
	capture_3* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamemean_1
variance_1count_1meanvariancecountmy_cool_model/dense_4/kernelmy_cool_model/dense_4/biasmy_cool_model/dense_5/kernelmy_cool_model/dense_5/biasmy_cool_model/dense_6/kernelmy_cool_model/dense_6/biasmy_cool_model/dense_7/kernelmy_cool_model/dense_7/biasConst_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference__traced_save_470380
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenamemean_1
variance_1count_1meanvariancecountmy_cool_model/dense_4/kernelmy_cool_model/dense_4/biasmy_cool_model/dense_5/kernelmy_cool_model/dense_5/biasmy_cool_model/dense_6/kernelmy_cool_model/dense_6/biasmy_cool_model/dense_7/kernelmy_cool_model/dense_7/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__traced_restore_470431��
�A
�	
__inference___call___470199
input_1
input_2'
#my_cool_model_normalization_2_sub_y(
$my_cool_model_normalization_2_sqrt_x'
#my_cool_model_normalization_3_sub_y(
$my_cool_model_normalization_3_sqrt_xF
4my_cool_model_dense_4_matmul_readvariableop_resource:C
5my_cool_model_dense_4_biasadd_readvariableop_resource:F
4my_cool_model_dense_5_matmul_readvariableop_resource:C
5my_cool_model_dense_5_biasadd_readvariableop_resource:F
4my_cool_model_dense_6_matmul_readvariableop_resource:#C
5my_cool_model_dense_6_biasadd_readvariableop_resource:F
4my_cool_model_dense_7_matmul_readvariableop_resource:C
5my_cool_model_dense_7_biasadd_readvariableop_resource:
identity

identity_1��,my_cool_model/dense_4/BiasAdd/ReadVariableOp�+my_cool_model/dense_4/MatMul/ReadVariableOp�,my_cool_model/dense_5/BiasAdd/ReadVariableOp�+my_cool_model/dense_5/MatMul/ReadVariableOp�,my_cool_model/dense_6/BiasAdd/ReadVariableOp�+my_cool_model/dense_6/MatMul/ReadVariableOp�,my_cool_model/dense_7/BiasAdd/ReadVariableOp�+my_cool_model/dense_7/MatMul/ReadVariableOp�
!my_cool_model/normalization_2/subSubinput_1#my_cool_model_normalization_2_sub_y*
T0*'
_output_shapes
:���������y
"my_cool_model/normalization_2/SqrtSqrt$my_cool_model_normalization_2_sqrt_x*
T0*
_output_shapes

:l
'my_cool_model/normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
%my_cool_model/normalization_2/MaximumMaximum&my_cool_model/normalization_2/Sqrt:y:00my_cool_model/normalization_2/Maximum/y:output:0*
T0*
_output_shapes

:�
%my_cool_model/normalization_2/truedivRealDiv%my_cool_model/normalization_2/sub:z:0)my_cool_model/normalization_2/Maximum:z:0*
T0*'
_output_shapes
:����������
!my_cool_model/normalization_3/subSubinput_2#my_cool_model_normalization_3_sub_y*
T0*'
_output_shapes
:���������y
"my_cool_model/normalization_3/SqrtSqrt$my_cool_model_normalization_3_sqrt_x*
T0*
_output_shapes

:l
'my_cool_model/normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
%my_cool_model/normalization_3/MaximumMaximum&my_cool_model/normalization_3/Sqrt:y:00my_cool_model/normalization_3/Maximum/y:output:0*
T0*
_output_shapes

:�
%my_cool_model/normalization_3/truedivRealDiv%my_cool_model/normalization_3/sub:z:0)my_cool_model/normalization_3/Maximum:z:0*
T0*'
_output_shapes
:����������
+my_cool_model/dense_4/MatMul/ReadVariableOpReadVariableOp4my_cool_model_dense_4_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
my_cool_model/dense_4/MatMulMatMul)my_cool_model/normalization_3/truediv:z:03my_cool_model/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,my_cool_model/dense_4/BiasAdd/ReadVariableOpReadVariableOp5my_cool_model_dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
my_cool_model/dense_4/BiasAddBiasAdd&my_cool_model/dense_4/MatMul:product:04my_cool_model/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������|
my_cool_model/dense_4/ReluRelu&my_cool_model/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:����������
+my_cool_model/dense_5/MatMul/ReadVariableOpReadVariableOp4my_cool_model_dense_5_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
my_cool_model/dense_5/MatMulMatMul(my_cool_model/dense_4/Relu:activations:03my_cool_model/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,my_cool_model/dense_5/BiasAdd/ReadVariableOpReadVariableOp5my_cool_model_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
my_cool_model/dense_5/BiasAddBiasAdd&my_cool_model/dense_5/MatMul:product:04my_cool_model/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������|
my_cool_model/dense_5/ReluRelu&my_cool_model/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:���������g
%my_cool_model/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
 my_cool_model/concatenate/concatConcatV2)my_cool_model/normalization_2/truediv:z:0(my_cool_model/dense_5/Relu:activations:0.my_cool_model/concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������#�
+my_cool_model/dense_6/MatMul/ReadVariableOpReadVariableOp4my_cool_model_dense_6_matmul_readvariableop_resource*
_output_shapes

:#*
dtype0�
my_cool_model/dense_6/MatMulMatMul)my_cool_model/concatenate/concat:output:03my_cool_model/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,my_cool_model/dense_6/BiasAdd/ReadVariableOpReadVariableOp5my_cool_model_dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
my_cool_model/dense_6/BiasAddBiasAdd&my_cool_model/dense_6/MatMul:product:04my_cool_model/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
+my_cool_model/dense_7/MatMul/ReadVariableOpReadVariableOp4my_cool_model_dense_7_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
my_cool_model/dense_7/MatMulMatMul(my_cool_model/dense_5/Relu:activations:03my_cool_model/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,my_cool_model/dense_7/BiasAdd/ReadVariableOpReadVariableOp5my_cool_model_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
my_cool_model/dense_7/BiasAddBiasAdd&my_cool_model/dense_7/MatMul:product:04my_cool_model/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������u
IdentityIdentity&my_cool_model/dense_6/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w

Identity_1Identity&my_cool_model/dense_7/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp-^my_cool_model/dense_4/BiasAdd/ReadVariableOp,^my_cool_model/dense_4/MatMul/ReadVariableOp-^my_cool_model/dense_5/BiasAdd/ReadVariableOp,^my_cool_model/dense_5/MatMul/ReadVariableOp-^my_cool_model/dense_6/BiasAdd/ReadVariableOp,^my_cool_model/dense_6/MatMul/ReadVariableOp-^my_cool_model/dense_7/BiasAdd/ReadVariableOp,^my_cool_model/dense_7/MatMul/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:���������:���������::::: : : : : : : : 2\
,my_cool_model/dense_4/BiasAdd/ReadVariableOp,my_cool_model/dense_4/BiasAdd/ReadVariableOp2Z
+my_cool_model/dense_4/MatMul/ReadVariableOp+my_cool_model/dense_4/MatMul/ReadVariableOp2\
,my_cool_model/dense_5/BiasAdd/ReadVariableOp,my_cool_model/dense_5/BiasAdd/ReadVariableOp2Z
+my_cool_model/dense_5/MatMul/ReadVariableOp+my_cool_model/dense_5/MatMul/ReadVariableOp2\
,my_cool_model/dense_6/BiasAdd/ReadVariableOp,my_cool_model/dense_6/BiasAdd/ReadVariableOp2Z
+my_cool_model/dense_6/MatMul/ReadVariableOp+my_cool_model/dense_6/MatMul/ReadVariableOp2\
,my_cool_model/dense_7/BiasAdd/ReadVariableOp,my_cool_model/dense_7/BiasAdd/ReadVariableOp2Z
+my_cool_model/dense_7/MatMul/ReadVariableOp+my_cool_model/dense_7/MatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::PL
'
_output_shapes
:���������
!
_user_specified_name	input_2:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�C
�
"__inference__traced_restore_470431
file_prefix%
assignvariableop_mean_1:+
assignvariableop_1_variance_1:$
assignvariableop_2_count_1:	 %
assignvariableop_3_mean:)
assignvariableop_4_variance:"
assignvariableop_5_count:	 A
/assignvariableop_6_my_cool_model_dense_4_kernel:;
-assignvariableop_7_my_cool_model_dense_4_bias:A
/assignvariableop_8_my_cool_model_dense_5_kernel:;
-assignvariableop_9_my_cool_model_dense_5_bias:B
0assignvariableop_10_my_cool_model_dense_6_kernel:#<
.assignvariableop_11_my_cool_model_dense_6_bias:B
0assignvariableop_12_my_cool_model_dense_7_kernel:<
.assignvariableop_13_my_cool_model_dense_7_bias:
identity_15��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*P
_output_shapes>
<:::::::::::::::*
dtypes
2		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_mean_1Identity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_variance_1Identity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_count_1Identity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_meanIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_varianceIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_countIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp/assignvariableop_6_my_cool_model_dense_4_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp-assignvariableop_7_my_cool_model_dense_4_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp/assignvariableop_8_my_cool_model_dense_5_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp-assignvariableop_9_my_cool_model_dense_5_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp0assignvariableop_10_my_cool_model_dense_6_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp.assignvariableop_11_my_cool_model_dense_6_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp0assignvariableop_12_my_cool_model_dense_7_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp.assignvariableop_13_my_cool_model_dense_7_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_14Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_15IdentityIdentity_14:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_15Identity_15:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
: : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp::6
4
_user_specified_namemy_cool_model/dense_7/bias:<8
6
_user_specified_namemy_cool_model/dense_7/kernel::6
4
_user_specified_namemy_cool_model/dense_6/bias:<8
6
_user_specified_namemy_cool_model/dense_6/kernel::
6
4
_user_specified_namemy_cool_model/dense_5/bias:<	8
6
_user_specified_namemy_cool_model/dense_5/kernel::6
4
_user_specified_namemy_cool_model/dense_4/bias:<8
6
_user_specified_namemy_cool_model/dense_4/kernel:%!

_user_specified_namecount:($
"
_user_specified_name
variance:$ 

_user_specified_namemean:'#
!
_user_specified_name	count_1:*&
$
_user_specified_name
variance_1:&"
 
_user_specified_namemean_1:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�s
�
__inference__traced_save_470380
file_prefix+
read_disablecopyonread_mean_1:1
#read_1_disablecopyonread_variance_1:*
 read_2_disablecopyonread_count_1:	 +
read_3_disablecopyonread_mean:/
!read_4_disablecopyonread_variance:(
read_5_disablecopyonread_count:	 G
5read_6_disablecopyonread_my_cool_model_dense_4_kernel:A
3read_7_disablecopyonread_my_cool_model_dense_4_bias:G
5read_8_disablecopyonread_my_cool_model_dense_5_kernel:A
3read_9_disablecopyonread_my_cool_model_dense_5_bias:H
6read_10_disablecopyonread_my_cool_model_dense_6_kernel:#B
4read_11_disablecopyonread_my_cool_model_dense_6_bias:H
6read_12_disablecopyonread_my_cool_model_dense_7_kernel:B
4read_13_disablecopyonread_my_cool_model_dense_7_bias:
savev2_const_4
identity_29��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: o
Read/DisableCopyOnReadDisableCopyOnReadread_disablecopyonread_mean_1"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOpread_disablecopyonread_mean_1^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0e
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:]

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:w
Read_1/DisableCopyOnReadDisableCopyOnRead#read_1_disablecopyonread_variance_1"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp#read_1_disablecopyonread_variance_1^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:t
Read_2/DisableCopyOnReadDisableCopyOnRead read_2_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp read_2_disablecopyonread_count_1^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	e

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: [

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0	*
_output_shapes
: q
Read_3/DisableCopyOnReadDisableCopyOnReadread_3_disablecopyonread_mean"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOpread_3_disablecopyonread_mean^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:u
Read_4/DisableCopyOnReadDisableCopyOnRead!read_4_disablecopyonread_variance"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp!read_4_disablecopyonread_variance^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:r
Read_5/DisableCopyOnReadDisableCopyOnReadread_5_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOpread_5_disablecopyonread_count^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0	*
_output_shapes
: �
Read_6/DisableCopyOnReadDisableCopyOnRead5read_6_disablecopyonread_my_cool_model_dense_4_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp5read_6_disablecopyonread_my_cool_model_dense_4_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0n
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_7/DisableCopyOnReadDisableCopyOnRead3read_7_disablecopyonread_my_cool_model_dense_4_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp3read_7_disablecopyonread_my_cool_model_dense_4_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_8/DisableCopyOnReadDisableCopyOnRead5read_8_disablecopyonread_my_cool_model_dense_5_kernel"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp5read_8_disablecopyonread_my_cool_model_dense_5_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0n
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_9/DisableCopyOnReadDisableCopyOnRead3read_9_disablecopyonread_my_cool_model_dense_5_bias"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp3read_9_disablecopyonread_my_cool_model_dense_5_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_10/DisableCopyOnReadDisableCopyOnRead6read_10_disablecopyonread_my_cool_model_dense_6_kernel"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp6read_10_disablecopyonread_my_cool_model_dense_6_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:#*
dtype0o
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:#e
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes

:#�
Read_11/DisableCopyOnReadDisableCopyOnRead4read_11_disablecopyonread_my_cool_model_dense_6_bias"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp4read_11_disablecopyonread_my_cool_model_dense_6_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_12/DisableCopyOnReadDisableCopyOnRead6read_12_disablecopyonread_my_cool_model_dense_7_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp6read_12_disablecopyonread_my_cool_model_dense_7_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_13/DisableCopyOnReadDisableCopyOnRead4read_13_disablecopyonread_my_cool_model_dense_7_bias"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp4read_13_disablecopyonread_my_cool_model_dense_7_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0savev2_const_4"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2		�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_28Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_29IdentityIdentity_28:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_29Identity_29:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:?;

_output_shapes
: 
!
_user_specified_name	Const_4::6
4
_user_specified_namemy_cool_model/dense_7/bias:<8
6
_user_specified_namemy_cool_model/dense_7/kernel::6
4
_user_specified_namemy_cool_model/dense_6/bias:<8
6
_user_specified_namemy_cool_model/dense_6/kernel::
6
4
_user_specified_namemy_cool_model/dense_5/bias:<	8
6
_user_specified_namemy_cool_model/dense_5/kernel::6
4
_user_specified_namemy_cool_model/dense_4/bias:<8
6
_user_specified_namemy_cool_model/dense_4/kernel:%!

_user_specified_namecount:($
"
_user_specified_name
variance:$ 

_user_specified_namemean:'#
!
_user_specified_name	count_1:*&
$
_user_specified_name
variance_1:&"
 
_user_specified_namemean_1:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
-__inference_signature_wrapper___call___470264
input_1
input_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:#
	unknown_8:
	unknown_9:

unknown_10:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *$
fR
__inference___call___470199o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:���������:���������::::: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name470258:&"
 
_user_specified_name470256:&"
 
_user_specified_name470254:&
"
 
_user_specified_name470252:&	"
 
_user_specified_name470250:&"
 
_user_specified_name470248:&"
 
_user_specified_name470246:&"
 
_user_specified_name470244:$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::PL
'
_output_shapes
:���������
!
_user_specified_name	input_2:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
-__inference_signature_wrapper___call___470232
input_1
input_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:#
	unknown_8:
	unknown_9:

unknown_10:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *$
fR
__inference___call___470199o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:���������:���������::::: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name470226:&"
 
_user_specified_name470224:&"
 
_user_specified_name470222:&
"
 
_user_specified_name470220:&	"
 
_user_specified_name470218:&"
 
_user_specified_name470216:&"
 
_user_specified_name470214:&"
 
_user_specified_name470212:$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::PL
'
_output_shapes
:���������
!
_user_specified_name	input_2:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1"�L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serve�
1
input_1&
serve_input_1:0���������
1
input_2&
serve_input_2:0���������<
output_00
StatefulPartitionedCall:0���������<
output_10
StatefulPartitionedCall:1���������tensorflow/serving/predict*�
serving_default�
;
input_10
serving_default_input_1:0���������
;
input_20
serving_default_input_2:0���������>
output_02
StatefulPartitionedCall_1:0���������>
output_12
StatefulPartitionedCall_1:1���������tensorflow/serving/predict:�
�
_endpoint_names
_endpoint_signatures
	variables
trainable_variables
non_trainable_variables
_all_variables
_misc_assets
	serve
	
signatures"
_generic_user_object
 "
trackable_list_wrapper
+
	
serve"
trackable_dict_wrapper
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13"
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
trace_02�
__inference___call___470199�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *N�K
I�F
!�
input_1���������
!�
input_2���������ztrace_0
7
	serve
serving_default"
signature_map
 "
trackable_list_wrapper
:2mean
:2variance
:	 2count
:2mean
:2variance
:	 2count
.:,2my_cool_model/dense_4/kernel
(:&2my_cool_model/dense_4/bias
.:,2my_cool_model/dense_5/kernel
(:&2my_cool_model/dense_5/bias
.:,#2my_cool_model/dense_6/kernel
(:&2my_cool_model/dense_6/bias
.:,2my_cool_model/dense_7/kernel
(:&2my_cool_model/dense_7/bias
�
	capture_0
	capture_1
	capture_2
	capture_3B�
__inference___call___470199input_1input_2"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z	capture_0z	capture_1z	capture_2z	capture_3
�
	capture_0
	capture_1
	capture_2
	capture_3B�
-__inference_signature_wrapper___call___470232input_1input_2"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 '

kwonlyargs�
	jinput_1
	jinput_2
kwonlydefaults
 
annotations� *
 z	capture_0z	capture_1z	capture_2z	capture_3
�
	capture_0
	capture_1
	capture_2
	capture_3B�
-__inference_signature_wrapper___call___470264input_1input_2"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 '

kwonlyargs�
	jinput_1
	jinput_2
kwonlydefaults
 
annotations� *
 z	capture_0z	capture_1z	capture_2z	capture_3
!J	
Const_3jtf.TrackableConstant
!J	
Const_2jtf.TrackableConstant
!J	
Const_1jtf.TrackableConstant
J
Constjtf.TrackableConstant�
__inference___call___470199�X�U
N�K
I�F
!�
input_1���������
!�
input_2���������
� "K�H
"�
tensor_0���������
"�
tensor_1����������
-__inference_signature_wrapper___call___470232�i�f
� 
_�\
,
input_1!�
input_1���������
,
input_2!�
input_2���������"c�`
.
output_0"�
output_0���������
.
output_1"�
output_1����������
-__inference_signature_wrapper___call___470264�i�f
� 
_�\
,
input_1!�
input_1���������
,
input_2!�
input_2���������"c�`
.
output_0"�
output_0���������
.
output_1"�
output_1���������