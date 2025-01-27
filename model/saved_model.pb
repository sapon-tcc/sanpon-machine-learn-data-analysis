��

��
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
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resource�
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
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
�
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
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
E
Relu
features"T
activations"T"
Ttype:
2	
�
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	�
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
0
Sigmoid
x"T
y"T"
Ttype:

2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.14.02v2.14.0-rc1-21-g4dacf3f368e8ʌ	
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
�
Adam/v/dcnn/dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/v/dcnn/dense_5/bias
�
,Adam/v/dcnn/dense_5/bias/Read/ReadVariableOpReadVariableOpAdam/v/dcnn/dense_5/bias*
_output_shapes
:*
dtype0
�
Adam/m/dcnn/dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/m/dcnn/dense_5/bias
�
,Adam/m/dcnn/dense_5/bias/Read/ReadVariableOpReadVariableOpAdam/m/dcnn/dense_5/bias*
_output_shapes
:*
dtype0
�
Adam/v/dcnn/dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*+
shared_nameAdam/v/dcnn/dense_5/kernel
�
.Adam/v/dcnn/dense_5/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dcnn/dense_5/kernel*
_output_shapes
:	�*
dtype0
�
Adam/m/dcnn/dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*+
shared_nameAdam/m/dcnn/dense_5/kernel
�
.Adam/m/dcnn/dense_5/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dcnn/dense_5/kernel*
_output_shapes
:	�*
dtype0
�
Adam/v/dcnn/dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*)
shared_nameAdam/v/dcnn/dense_4/bias
�
,Adam/v/dcnn/dense_4/bias/Read/ReadVariableOpReadVariableOpAdam/v/dcnn/dense_4/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/dcnn/dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*)
shared_nameAdam/m/dcnn/dense_4/bias
�
,Adam/m/dcnn/dense_4/bias/Read/ReadVariableOpReadVariableOpAdam/m/dcnn/dense_4/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/dcnn/dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*+
shared_nameAdam/v/dcnn/dense_4/kernel
�
.Adam/v/dcnn/dense_4/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dcnn/dense_4/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/m/dcnn/dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*+
shared_nameAdam/m/dcnn/dense_4/kernel
�
.Adam/m/dcnn/dense_4/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dcnn/dense_4/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/v/dcnn/conv1d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d**
shared_nameAdam/v/dcnn/conv1d_8/bias
�
-Adam/v/dcnn/conv1d_8/bias/Read/ReadVariableOpReadVariableOpAdam/v/dcnn/conv1d_8/bias*
_output_shapes
:d*
dtype0
�
Adam/m/dcnn/conv1d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d**
shared_nameAdam/m/dcnn/conv1d_8/bias
�
-Adam/m/dcnn/conv1d_8/bias/Read/ReadVariableOpReadVariableOpAdam/m/dcnn/conv1d_8/bias*
_output_shapes
:d*
dtype0
�
Adam/v/dcnn/conv1d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�d*,
shared_nameAdam/v/dcnn/conv1d_8/kernel
�
/Adam/v/dcnn/conv1d_8/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dcnn/conv1d_8/kernel*#
_output_shapes
:�d*
dtype0
�
Adam/m/dcnn/conv1d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�d*,
shared_nameAdam/m/dcnn/conv1d_8/kernel
�
/Adam/m/dcnn/conv1d_8/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dcnn/conv1d_8/kernel*#
_output_shapes
:�d*
dtype0
�
Adam/v/dcnn/conv1d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d**
shared_nameAdam/v/dcnn/conv1d_7/bias
�
-Adam/v/dcnn/conv1d_7/bias/Read/ReadVariableOpReadVariableOpAdam/v/dcnn/conv1d_7/bias*
_output_shapes
:d*
dtype0
�
Adam/m/dcnn/conv1d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d**
shared_nameAdam/m/dcnn/conv1d_7/bias
�
-Adam/m/dcnn/conv1d_7/bias/Read/ReadVariableOpReadVariableOpAdam/m/dcnn/conv1d_7/bias*
_output_shapes
:d*
dtype0
�
Adam/v/dcnn/conv1d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�d*,
shared_nameAdam/v/dcnn/conv1d_7/kernel
�
/Adam/v/dcnn/conv1d_7/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dcnn/conv1d_7/kernel*#
_output_shapes
:�d*
dtype0
�
Adam/m/dcnn/conv1d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�d*,
shared_nameAdam/m/dcnn/conv1d_7/kernel
�
/Adam/m/dcnn/conv1d_7/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dcnn/conv1d_7/kernel*#
_output_shapes
:�d*
dtype0
�
Adam/v/dcnn/conv1d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d**
shared_nameAdam/v/dcnn/conv1d_6/bias
�
-Adam/v/dcnn/conv1d_6/bias/Read/ReadVariableOpReadVariableOpAdam/v/dcnn/conv1d_6/bias*
_output_shapes
:d*
dtype0
�
Adam/m/dcnn/conv1d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d**
shared_nameAdam/m/dcnn/conv1d_6/bias
�
-Adam/m/dcnn/conv1d_6/bias/Read/ReadVariableOpReadVariableOpAdam/m/dcnn/conv1d_6/bias*
_output_shapes
:d*
dtype0
�
Adam/v/dcnn/conv1d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�d*,
shared_nameAdam/v/dcnn/conv1d_6/kernel
�
/Adam/v/dcnn/conv1d_6/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dcnn/conv1d_6/kernel*#
_output_shapes
:�d*
dtype0
�
Adam/m/dcnn/conv1d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�d*,
shared_nameAdam/m/dcnn/conv1d_6/kernel
�
/Adam/m/dcnn/conv1d_6/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dcnn/conv1d_6/kernel*#
_output_shapes
:�d*
dtype0
�
"Adam/v/dcnn/embedding_2/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:���*3
shared_name$"Adam/v/dcnn/embedding_2/embeddings
�
6Adam/v/dcnn/embedding_2/embeddings/Read/ReadVariableOpReadVariableOp"Adam/v/dcnn/embedding_2/embeddings*!
_output_shapes
:���*
dtype0
�
"Adam/m/dcnn/embedding_2/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:���*3
shared_name$"Adam/m/dcnn/embedding_2/embeddings
�
6Adam/m/dcnn/embedding_2/embeddings/Read/ReadVariableOpReadVariableOp"Adam/m/dcnn/embedding_2/embeddings*!
_output_shapes
:���*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
z
dcnn/dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namedcnn/dense_5/bias
s
%dcnn/dense_5/bias/Read/ReadVariableOpReadVariableOpdcnn/dense_5/bias*
_output_shapes
:*
dtype0
�
dcnn/dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*$
shared_namedcnn/dense_5/kernel
|
'dcnn/dense_5/kernel/Read/ReadVariableOpReadVariableOpdcnn/dense_5/kernel*
_output_shapes
:	�*
dtype0
{
dcnn/dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_namedcnn/dense_4/bias
t
%dcnn/dense_4/bias/Read/ReadVariableOpReadVariableOpdcnn/dense_4/bias*
_output_shapes	
:�*
dtype0
�
dcnn/dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*$
shared_namedcnn/dense_4/kernel
}
'dcnn/dense_4/kernel/Read/ReadVariableOpReadVariableOpdcnn/dense_4/kernel* 
_output_shapes
:
��*
dtype0
|
dcnn/conv1d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*#
shared_namedcnn/conv1d_8/bias
u
&dcnn/conv1d_8/bias/Read/ReadVariableOpReadVariableOpdcnn/conv1d_8/bias*
_output_shapes
:d*
dtype0
�
dcnn/conv1d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�d*%
shared_namedcnn/conv1d_8/kernel
�
(dcnn/conv1d_8/kernel/Read/ReadVariableOpReadVariableOpdcnn/conv1d_8/kernel*#
_output_shapes
:�d*
dtype0
|
dcnn/conv1d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*#
shared_namedcnn/conv1d_7/bias
u
&dcnn/conv1d_7/bias/Read/ReadVariableOpReadVariableOpdcnn/conv1d_7/bias*
_output_shapes
:d*
dtype0
�
dcnn/conv1d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�d*%
shared_namedcnn/conv1d_7/kernel
�
(dcnn/conv1d_7/kernel/Read/ReadVariableOpReadVariableOpdcnn/conv1d_7/kernel*#
_output_shapes
:�d*
dtype0
|
dcnn/conv1d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*#
shared_namedcnn/conv1d_6/bias
u
&dcnn/conv1d_6/bias/Read/ReadVariableOpReadVariableOpdcnn/conv1d_6/bias*
_output_shapes
:d*
dtype0
�
dcnn/conv1d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�d*%
shared_namedcnn/conv1d_6/kernel
�
(dcnn/conv1d_6/kernel/Read/ReadVariableOpReadVariableOpdcnn/conv1d_6/kernel*#
_output_shapes
:�d*
dtype0
�
dcnn/embedding_2/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:���*,
shared_namedcnn/embedding_2/embeddings
�
/dcnn/embedding_2/embeddings/Read/ReadVariableOpReadVariableOpdcnn/embedding_2/embeddings*!
_output_shapes
:���*
dtype0
|
serving_default_input_1Placeholder*(
_output_shapes
:����������*
dtype0*
shape:����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1dcnn/embedding_2/embeddingsdcnn/conv1d_6/kerneldcnn/conv1d_6/biasdcnn/conv1d_7/kerneldcnn/conv1d_7/biasdcnn/conv1d_8/kerneldcnn/conv1d_8/biasdcnn/dense_4/kerneldcnn/dense_4/biasdcnn/dense_5/kerneldcnn/dense_5/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_10816

NoOpNoOp
�N
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�N
value�NB�N B�N
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	embedding

	bigram

trigram
fourgram
pool
dense_1
dropout

last_dense
	optimizer

signatures*
R
0
1
2
3
4
5
6
7
8
9
10*
R
0
1
2
3
4
5
6
7
8
9
10*
* 
�
non_trainable_variables

layers
metrics
 layer_regularization_losses
!layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

"trace_0
#trace_1* 

$trace_0
%trace_1* 
* 
�
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses

embeddings*
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

kernel
bias
 2_jit_compiled_convolution_op*
�
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

kernel
bias
 9_jit_compiled_convolution_op*
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses

kernel
bias
 @_jit_compiled_convolution_op*
�
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses* 
�
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses

kernel
bias*
�
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses
S_random_generator* 
�
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses

kernel
bias*
�
Z
_variables
[_iterations
\_learning_rate
]_index_dict
^
_momentums
__velocities
`_update_step_xla*

aserving_default* 
[U
VARIABLE_VALUEdcnn/embedding_2/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEdcnn/conv1d_6/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEdcnn/conv1d_6/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEdcnn/conv1d_7/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEdcnn/conv1d_7/bias&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEdcnn/conv1d_8/kernel&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEdcnn/conv1d_8/bias&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEdcnn/dense_4/kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEdcnn/dense_4/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEdcnn/dense_5/kernel&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEdcnn/dense_5/bias'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
* 
<
0
	1

2
3
4
5
6
7*

b0
c1*
* 
* 
* 
* 
* 
* 

0*

0*
* 
�
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses*

itrace_0* 

jtrace_0* 

0
1*

0
1*
* 
�
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses*

ptrace_0* 

qtrace_0* 
* 

0
1*

0
1*
* 
�
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses*

wtrace_0* 

xtrace_0* 
* 

0
1*

0
1*
* 
�
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses*

~trace_0* 

trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
�
[0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
]
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10*
]
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10*
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
mg
VARIABLE_VALUE"Adam/m/dcnn/embedding_2/embeddings1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/v/dcnn/embedding_2/embeddings1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEAdam/m/dcnn/conv1d_6/kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEAdam/v/dcnn/conv1d_6/kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/m/dcnn/conv1d_6/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/v/dcnn/conv1d_6/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEAdam/m/dcnn/conv1d_7/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEAdam/v/dcnn/conv1d_7/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/m/dcnn/conv1d_7/bias1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/v/dcnn/conv1d_7/bias2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/m/dcnn/conv1d_8/kernel2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/v/dcnn/conv1d_8/kernel2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/m/dcnn/conv1d_8/bias2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/v/dcnn/conv1d_8/bias2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEAdam/m/dcnn/dense_4/kernel2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEAdam/v/dcnn/dense_4/kernel2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/m/dcnn/dense_4/bias2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/v/dcnn/dense_4/bias2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEAdam/m/dcnn/dense_5/kernel2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEAdam/v/dcnn/dense_5/kernel2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/m/dcnn/dense_5/bias2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/v/dcnn/dense_5/bias2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedcnn/embedding_2/embeddingsdcnn/conv1d_6/kerneldcnn/conv1d_6/biasdcnn/conv1d_7/kerneldcnn/conv1d_7/biasdcnn/conv1d_8/kerneldcnn/conv1d_8/biasdcnn/dense_4/kerneldcnn/dense_4/biasdcnn/dense_5/kerneldcnn/dense_5/bias	iterationlearning_rate"Adam/m/dcnn/embedding_2/embeddings"Adam/v/dcnn/embedding_2/embeddingsAdam/m/dcnn/conv1d_6/kernelAdam/v/dcnn/conv1d_6/kernelAdam/m/dcnn/conv1d_6/biasAdam/v/dcnn/conv1d_6/biasAdam/m/dcnn/conv1d_7/kernelAdam/v/dcnn/conv1d_7/kernelAdam/m/dcnn/conv1d_7/biasAdam/v/dcnn/conv1d_7/biasAdam/m/dcnn/conv1d_8/kernelAdam/v/dcnn/conv1d_8/kernelAdam/m/dcnn/conv1d_8/biasAdam/v/dcnn/conv1d_8/biasAdam/m/dcnn/dense_4/kernelAdam/v/dcnn/dense_4/kernelAdam/m/dcnn/dense_4/biasAdam/v/dcnn/dense_4/biasAdam/m/dcnn/dense_5/kernelAdam/v/dcnn/dense_5/kernelAdam/m/dcnn/dense_5/biasAdam/v/dcnn/dense_5/biastotal_1count_1totalcountConst*4
Tin-
+2)*
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
GPU 2J 8� *'
f"R 
__inference__traced_save_11240
�	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedcnn/embedding_2/embeddingsdcnn/conv1d_6/kerneldcnn/conv1d_6/biasdcnn/conv1d_7/kerneldcnn/conv1d_7/biasdcnn/conv1d_8/kerneldcnn/conv1d_8/biasdcnn/dense_4/kerneldcnn/dense_4/biasdcnn/dense_5/kerneldcnn/dense_5/bias	iterationlearning_rate"Adam/m/dcnn/embedding_2/embeddings"Adam/v/dcnn/embedding_2/embeddingsAdam/m/dcnn/conv1d_6/kernelAdam/v/dcnn/conv1d_6/kernelAdam/m/dcnn/conv1d_6/biasAdam/v/dcnn/conv1d_6/biasAdam/m/dcnn/conv1d_7/kernelAdam/v/dcnn/conv1d_7/kernelAdam/m/dcnn/conv1d_7/biasAdam/v/dcnn/conv1d_7/biasAdam/m/dcnn/conv1d_8/kernelAdam/v/dcnn/conv1d_8/kernelAdam/m/dcnn/conv1d_8/biasAdam/v/dcnn/conv1d_8/biasAdam/m/dcnn/dense_4/kernelAdam/v/dcnn/dense_4/kernelAdam/m/dcnn/dense_4/biasAdam/v/dcnn/dense_4/biasAdam/m/dcnn/dense_5/kernelAdam/v/dcnn/dense_5/kernelAdam/m/dcnn/dense_5/biasAdam/v/dcnn/dense_5/biastotal_1count_1totalcount*3
Tin,
*2(*
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
GPU 2J 8� **
f%R#
!__inference__traced_restore_11366��
�
�
!__inference__traced_restore_11366
file_prefixA
,assignvariableop_dcnn_embedding_2_embeddings:���>
'assignvariableop_1_dcnn_conv1d_6_kernel:�d3
%assignvariableop_2_dcnn_conv1d_6_bias:d>
'assignvariableop_3_dcnn_conv1d_7_kernel:�d3
%assignvariableop_4_dcnn_conv1d_7_bias:d>
'assignvariableop_5_dcnn_conv1d_8_kernel:�d3
%assignvariableop_6_dcnn_conv1d_8_bias:d:
&assignvariableop_7_dcnn_dense_4_kernel:
��3
$assignvariableop_8_dcnn_dense_4_bias:	�9
&assignvariableop_9_dcnn_dense_5_kernel:	�3
%assignvariableop_10_dcnn_dense_5_bias:'
assignvariableop_11_iteration:	 +
!assignvariableop_12_learning_rate: K
6assignvariableop_13_adam_m_dcnn_embedding_2_embeddings:���K
6assignvariableop_14_adam_v_dcnn_embedding_2_embeddings:���F
/assignvariableop_15_adam_m_dcnn_conv1d_6_kernel:�dF
/assignvariableop_16_adam_v_dcnn_conv1d_6_kernel:�d;
-assignvariableop_17_adam_m_dcnn_conv1d_6_bias:d;
-assignvariableop_18_adam_v_dcnn_conv1d_6_bias:dF
/assignvariableop_19_adam_m_dcnn_conv1d_7_kernel:�dF
/assignvariableop_20_adam_v_dcnn_conv1d_7_kernel:�d;
-assignvariableop_21_adam_m_dcnn_conv1d_7_bias:d;
-assignvariableop_22_adam_v_dcnn_conv1d_7_bias:dF
/assignvariableop_23_adam_m_dcnn_conv1d_8_kernel:�dF
/assignvariableop_24_adam_v_dcnn_conv1d_8_kernel:�d;
-assignvariableop_25_adam_m_dcnn_conv1d_8_bias:d;
-assignvariableop_26_adam_v_dcnn_conv1d_8_bias:dB
.assignvariableop_27_adam_m_dcnn_dense_4_kernel:
��B
.assignvariableop_28_adam_v_dcnn_dense_4_kernel:
��;
,assignvariableop_29_adam_m_dcnn_dense_4_bias:	�;
,assignvariableop_30_adam_v_dcnn_dense_4_bias:	�A
.assignvariableop_31_adam_m_dcnn_dense_5_kernel:	�A
.assignvariableop_32_adam_v_dcnn_dense_5_kernel:	�:
,assignvariableop_33_adam_m_dcnn_dense_5_bias::
,assignvariableop_34_adam_v_dcnn_dense_5_bias:%
assignvariableop_35_total_1: %
assignvariableop_36_count_1: #
assignvariableop_37_total: #
assignvariableop_38_count: 
identity_40��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*�
value�B�(B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::*6
dtypes,
*2(	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp,assignvariableop_dcnn_embedding_2_embeddingsIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp'assignvariableop_1_dcnn_conv1d_6_kernelIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp%assignvariableop_2_dcnn_conv1d_6_biasIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp'assignvariableop_3_dcnn_conv1d_7_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp%assignvariableop_4_dcnn_conv1d_7_biasIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp'assignvariableop_5_dcnn_conv1d_8_kernelIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp%assignvariableop_6_dcnn_conv1d_8_biasIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp&assignvariableop_7_dcnn_dense_4_kernelIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp$assignvariableop_8_dcnn_dense_4_biasIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp&assignvariableop_9_dcnn_dense_5_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp%assignvariableop_10_dcnn_dense_5_biasIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_iterationIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp!assignvariableop_12_learning_rateIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp6assignvariableop_13_adam_m_dcnn_embedding_2_embeddingsIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp6assignvariableop_14_adam_v_dcnn_embedding_2_embeddingsIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp/assignvariableop_15_adam_m_dcnn_conv1d_6_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp/assignvariableop_16_adam_v_dcnn_conv1d_6_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp-assignvariableop_17_adam_m_dcnn_conv1d_6_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp-assignvariableop_18_adam_v_dcnn_conv1d_6_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp/assignvariableop_19_adam_m_dcnn_conv1d_7_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp/assignvariableop_20_adam_v_dcnn_conv1d_7_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp-assignvariableop_21_adam_m_dcnn_conv1d_7_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp-assignvariableop_22_adam_v_dcnn_conv1d_7_biasIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp/assignvariableop_23_adam_m_dcnn_conv1d_8_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp/assignvariableop_24_adam_v_dcnn_conv1d_8_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp-assignvariableop_25_adam_m_dcnn_conv1d_8_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp-assignvariableop_26_adam_v_dcnn_conv1d_8_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp.assignvariableop_27_adam_m_dcnn_dense_4_kernelIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp.assignvariableop_28_adam_v_dcnn_dense_4_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp,assignvariableop_29_adam_m_dcnn_dense_4_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp,assignvariableop_30_adam_v_dcnn_dense_4_biasIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp.assignvariableop_31_adam_m_dcnn_dense_5_kernelIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp.assignvariableop_32_adam_v_dcnn_dense_5_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp,assignvariableop_33_adam_m_dcnn_dense_5_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp,assignvariableop_34_adam_v_dcnn_dense_5_biasIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpassignvariableop_35_total_1Identity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOpassignvariableop_36_count_1Identity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOpassignvariableop_37_totalIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpassignvariableop_38_countIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_39Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_40IdentityIdentity_39:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_40Identity_40:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:;7
5
_user_specified_namedcnn/embedding_2/embeddings:40
.
_user_specified_namedcnn/conv1d_6/kernel:2.
,
_user_specified_namedcnn/conv1d_6/bias:40
.
_user_specified_namedcnn/conv1d_7/kernel:2.
,
_user_specified_namedcnn/conv1d_7/bias:40
.
_user_specified_namedcnn/conv1d_8/kernel:2.
,
_user_specified_namedcnn/conv1d_8/bias:3/
-
_user_specified_namedcnn/dense_4/kernel:1	-
+
_user_specified_namedcnn/dense_4/bias:3
/
-
_user_specified_namedcnn/dense_5/kernel:1-
+
_user_specified_namedcnn/dense_5/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:B>
<
_user_specified_name$"Adam/m/dcnn/embedding_2/embeddings:B>
<
_user_specified_name$"Adam/v/dcnn/embedding_2/embeddings:;7
5
_user_specified_nameAdam/m/dcnn/conv1d_6/kernel:;7
5
_user_specified_nameAdam/v/dcnn/conv1d_6/kernel:95
3
_user_specified_nameAdam/m/dcnn/conv1d_6/bias:95
3
_user_specified_nameAdam/v/dcnn/conv1d_6/bias:;7
5
_user_specified_nameAdam/m/dcnn/conv1d_7/kernel:;7
5
_user_specified_nameAdam/v/dcnn/conv1d_7/kernel:95
3
_user_specified_nameAdam/m/dcnn/conv1d_7/bias:95
3
_user_specified_nameAdam/v/dcnn/conv1d_7/bias:;7
5
_user_specified_nameAdam/m/dcnn/conv1d_8/kernel:;7
5
_user_specified_nameAdam/v/dcnn/conv1d_8/kernel:95
3
_user_specified_nameAdam/m/dcnn/conv1d_8/bias:95
3
_user_specified_nameAdam/v/dcnn/conv1d_8/bias::6
4
_user_specified_nameAdam/m/dcnn/dense_4/kernel::6
4
_user_specified_nameAdam/v/dcnn/dense_4/kernel:84
2
_user_specified_nameAdam/m/dcnn/dense_4/bias:84
2
_user_specified_nameAdam/v/dcnn/dense_4/bias:: 6
4
_user_specified_nameAdam/m/dcnn/dense_5/kernel::!6
4
_user_specified_nameAdam/v/dcnn/dense_5/kernel:8"4
2
_user_specified_nameAdam/m/dcnn/dense_5/bias:8#4
2
_user_specified_nameAdam/v/dcnn/dense_5/bias:'$#
!
_user_specified_name	total_1:'%#
!
_user_specified_name	count_1:%&!

_user_specified_nametotal:%'!

_user_specified_namecount
�
�
$__inference_dcnn_layer_call_fn_10697
input_1
unknown:��� 
	unknown_0:�d
	unknown_1:d 
	unknown_2:�d
	unknown_3:d 
	unknown_4:�d
	unknown_5:d
	unknown_6:
��
	unknown_7:	�
	unknown_8:	�
	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_dcnn_layer_call_and_return_conditional_losses_10627o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:����������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:����������
!
_user_specified_name	input_1:%!

_user_specified_name10673:%!

_user_specified_name10675:%!

_user_specified_name10677:%!

_user_specified_name10679:%!

_user_specified_name10681:%!

_user_specified_name10683:%!

_user_specified_name10685:%!

_user_specified_name10687:%	!

_user_specified_name10689:%
!

_user_specified_name10691:%!

_user_specified_name10693
�
�
(__inference_conv1d_8_layer_call_fn_10890

inputs
unknown:�d
	unknown_0:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_8_layer_call_and_return_conditional_losses_10572t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������d<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs:%!

_user_specified_name10884:%!

_user_specified_name10886
�
�
'__inference_dense_5_layer_call_fn_10973

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_10620o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:%!

_user_specified_name10967:%!

_user_specified_name10969
�
m
Q__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_10494

inputs
identityW
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
MaxMaxinputsMax/reduction_indices:output:0*
T0*0
_output_shapes
:������������������]
IdentityIdentityMax:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
�
F__inference_embedding_2_layer_call_and_return_conditional_losses_10831

inputs+
embedding_lookup_10826:���
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_10826inputs*
Tindices0*)
_class
loc:@embedding_lookup/10826*-
_output_shapes
:�����������*
dtype0x
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*-
_output_shapes
:�����������w
IdentityIdentity"embedding_lookup/Identity:output:0^NoOp*
T0*-
_output_shapes
:�����������5
NoOpNoOp^embedding_lookup*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:����������: 2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:%!

_user_specified_name10826
�
b
)__inference_dropout_2_layer_call_fn_10942

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_10608p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
(__inference_conv1d_6_layer_call_fn_10840

inputs
unknown:�d
	unknown_0:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_6_layer_call_and_return_conditional_losses_10528t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������d<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs:%!

_user_specified_name10834:%!

_user_specified_name10836
�
�
'__inference_dense_4_layer_call_fn_10926

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_10591p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:%!

_user_specified_name10920:%!

_user_specified_name10922
�
�
$__inference_dcnn_layer_call_fn_10724
input_1
unknown:��� 
	unknown_0:�d
	unknown_1:d 
	unknown_2:�d
	unknown_3:d 
	unknown_4:�d
	unknown_5:d
	unknown_6:
��
	unknown_7:	�
	unknown_8:	�
	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_dcnn_layer_call_and_return_conditional_losses_10670o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:����������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:����������
!
_user_specified_name	input_1:%!

_user_specified_name10700:%!

_user_specified_name10702:%!

_user_specified_name10704:%!

_user_specified_name10706:%!

_user_specified_name10708:%!

_user_specified_name10710:%!

_user_specified_name10712:%!

_user_specified_name10714:%	!

_user_specified_name10716:%
!

_user_specified_name10718:%!

_user_specified_name10720
�1
�
?__inference_dcnn_layer_call_and_return_conditional_losses_10670
input_1&
embedding_2_10630:���%
conv1d_6_10633:�d
conv1d_6_10635:d%
conv1d_7_10639:�d
conv1d_7_10641:d%
conv1d_8_10645:�d
conv1d_8_10647:d!
dense_4_10653:
��
dense_4_10655:	� 
dense_5_10664:	�
dense_5_10666:
identity�� conv1d_6/StatefulPartitionedCall� conv1d_7/StatefulPartitionedCall� conv1d_8/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�#embedding_2/StatefulPartitionedCall�
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallinput_1embedding_2_10630*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_embedding_2_layer_call_and_return_conditional_losses_10509�
 conv1d_6/StatefulPartitionedCallStatefulPartitionedCall,embedding_2/StatefulPartitionedCall:output:0conv1d_6_10633conv1d_6_10635*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_6_layer_call_and_return_conditional_losses_10528�
&global_max_pooling1d_2/PartitionedCallPartitionedCall)conv1d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_10494�
 conv1d_7/StatefulPartitionedCallStatefulPartitionedCall,embedding_2/StatefulPartitionedCall:output:0conv1d_7_10639conv1d_7_10641*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_7_layer_call_and_return_conditional_losses_10550�
(global_max_pooling1d_2/PartitionedCall_1PartitionedCall)conv1d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_10494�
 conv1d_8/StatefulPartitionedCallStatefulPartitionedCall,embedding_2/StatefulPartitionedCall:output:0conv1d_8_10645conv1d_8_10647*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_8_layer_call_and_return_conditional_losses_10572�
(global_max_pooling1d_2/PartitionedCall_2PartitionedCall)conv1d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_10494V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
����������
concatConcatV2/global_max_pooling1d_2/PartitionedCall:output:01global_max_pooling1d_2/PartitionedCall_1:output:01global_max_pooling1d_2/PartitionedCall_2:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:�����������
dense_4/StatefulPartitionedCallStatefulPartitionedCallconcat:output:0dense_4_10653dense_4_10655*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_10591�
dropout_2/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_10662�
dense_5/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_5_10664dense_5_10666*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_10620w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^conv1d_6/StatefulPartitionedCall!^conv1d_7/StatefulPartitionedCall!^conv1d_8/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall$^embedding_2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:����������: : : : : : : : : : : 2D
 conv1d_6/StatefulPartitionedCall conv1d_6/StatefulPartitionedCall2D
 conv1d_7/StatefulPartitionedCall conv1d_7/StatefulPartitionedCall2D
 conv1d_8/StatefulPartitionedCall conv1d_8/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall:Q M
(
_output_shapes
:����������
!
_user_specified_name	input_1:%!

_user_specified_name10630:%!

_user_specified_name10633:%!

_user_specified_name10635:%!

_user_specified_name10639:%!

_user_specified_name10641:%!

_user_specified_name10645:%!

_user_specified_name10647:%!

_user_specified_name10653:%	!

_user_specified_name10655:%
!

_user_specified_name10664:%!

_user_specified_name10666
�Z
�	
 __inference__wrapped_model_10488
input_1<
'dcnn_embedding_2_embedding_lookup_10424:���P
9dcnn_conv1d_6_conv1d_expanddims_1_readvariableop_resource:�d;
-dcnn_conv1d_6_biasadd_readvariableop_resource:dP
9dcnn_conv1d_7_conv1d_expanddims_1_readvariableop_resource:�d;
-dcnn_conv1d_7_biasadd_readvariableop_resource:dP
9dcnn_conv1d_8_conv1d_expanddims_1_readvariableop_resource:�d;
-dcnn_conv1d_8_biasadd_readvariableop_resource:d?
+dcnn_dense_4_matmul_readvariableop_resource:
��;
,dcnn_dense_4_biasadd_readvariableop_resource:	�>
+dcnn_dense_5_matmul_readvariableop_resource:	�:
,dcnn_dense_5_biasadd_readvariableop_resource:
identity��$dcnn/conv1d_6/BiasAdd/ReadVariableOp�0dcnn/conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp�$dcnn/conv1d_7/BiasAdd/ReadVariableOp�0dcnn/conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp�$dcnn/conv1d_8/BiasAdd/ReadVariableOp�0dcnn/conv1d_8/Conv1D/ExpandDims_1/ReadVariableOp�#dcnn/dense_4/BiasAdd/ReadVariableOp�"dcnn/dense_4/MatMul/ReadVariableOp�#dcnn/dense_5/BiasAdd/ReadVariableOp�"dcnn/dense_5/MatMul/ReadVariableOp�!dcnn/embedding_2/embedding_lookup�
!dcnn/embedding_2/embedding_lookupResourceGather'dcnn_embedding_2_embedding_lookup_10424input_1*
Tindices0*:
_class0
.,loc:@dcnn/embedding_2/embedding_lookup/10424*-
_output_shapes
:�����������*
dtype0�
*dcnn/embedding_2/embedding_lookup/IdentityIdentity*dcnn/embedding_2/embedding_lookup:output:0*
T0*-
_output_shapes
:�����������n
#dcnn/conv1d_6/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
dcnn/conv1d_6/Conv1D/ExpandDims
ExpandDims3dcnn/embedding_2/embedding_lookup/Identity:output:0,dcnn/conv1d_6/Conv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:������������
0dcnn/conv1d_6/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp9dcnn_conv1d_6_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:�d*
dtype0g
%dcnn/conv1d_6/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
!dcnn/conv1d_6/Conv1D/ExpandDims_1
ExpandDims8dcnn/conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp:value:0.dcnn/conv1d_6/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:�d�
dcnn/conv1d_6/Conv1DConv2D(dcnn/conv1d_6/Conv1D/ExpandDims:output:0*dcnn/conv1d_6/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������d*
paddingSAME*
strides
�
dcnn/conv1d_6/Conv1D/SqueezeSqueezedcnn/conv1d_6/Conv1D:output:0*
T0*,
_output_shapes
:����������d*
squeeze_dims

����������
$dcnn/conv1d_6/BiasAdd/ReadVariableOpReadVariableOp-dcnn_conv1d_6_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
dcnn/conv1d_6/BiasAddBiasAdd%dcnn/conv1d_6/Conv1D/Squeeze:output:0,dcnn/conv1d_6/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������dq
dcnn/conv1d_6/ReluReludcnn/conv1d_6/BiasAdd:output:0*
T0*,
_output_shapes
:����������ds
1dcnn/global_max_pooling1d_2/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
dcnn/global_max_pooling1d_2/MaxMax dcnn/conv1d_6/Relu:activations:0:dcnn/global_max_pooling1d_2/Max/reduction_indices:output:0*
T0*'
_output_shapes
:���������dn
#dcnn/conv1d_7/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
dcnn/conv1d_7/Conv1D/ExpandDims
ExpandDims3dcnn/embedding_2/embedding_lookup/Identity:output:0,dcnn/conv1d_7/Conv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:������������
0dcnn/conv1d_7/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp9dcnn_conv1d_7_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:�d*
dtype0g
%dcnn/conv1d_7/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
!dcnn/conv1d_7/Conv1D/ExpandDims_1
ExpandDims8dcnn/conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp:value:0.dcnn/conv1d_7/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:�d�
dcnn/conv1d_7/Conv1DConv2D(dcnn/conv1d_7/Conv1D/ExpandDims:output:0*dcnn/conv1d_7/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������d*
paddingSAME*
strides
�
dcnn/conv1d_7/Conv1D/SqueezeSqueezedcnn/conv1d_7/Conv1D:output:0*
T0*,
_output_shapes
:����������d*
squeeze_dims

����������
$dcnn/conv1d_7/BiasAdd/ReadVariableOpReadVariableOp-dcnn_conv1d_7_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
dcnn/conv1d_7/BiasAddBiasAdd%dcnn/conv1d_7/Conv1D/Squeeze:output:0,dcnn/conv1d_7/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������dq
dcnn/conv1d_7/ReluReludcnn/conv1d_7/BiasAdd:output:0*
T0*,
_output_shapes
:����������du
3dcnn/global_max_pooling1d_2/Max_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
!dcnn/global_max_pooling1d_2/Max_1Max dcnn/conv1d_7/Relu:activations:0<dcnn/global_max_pooling1d_2/Max_1/reduction_indices:output:0*
T0*'
_output_shapes
:���������dn
#dcnn/conv1d_8/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
dcnn/conv1d_8/Conv1D/ExpandDims
ExpandDims3dcnn/embedding_2/embedding_lookup/Identity:output:0,dcnn/conv1d_8/Conv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:������������
0dcnn/conv1d_8/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp9dcnn_conv1d_8_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:�d*
dtype0g
%dcnn/conv1d_8/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
!dcnn/conv1d_8/Conv1D/ExpandDims_1
ExpandDims8dcnn/conv1d_8/Conv1D/ExpandDims_1/ReadVariableOp:value:0.dcnn/conv1d_8/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:�d�
dcnn/conv1d_8/Conv1DConv2D(dcnn/conv1d_8/Conv1D/ExpandDims:output:0*dcnn/conv1d_8/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������d*
paddingSAME*
strides
�
dcnn/conv1d_8/Conv1D/SqueezeSqueezedcnn/conv1d_8/Conv1D:output:0*
T0*,
_output_shapes
:����������d*
squeeze_dims

����������
$dcnn/conv1d_8/BiasAdd/ReadVariableOpReadVariableOp-dcnn_conv1d_8_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
dcnn/conv1d_8/BiasAddBiasAdd%dcnn/conv1d_8/Conv1D/Squeeze:output:0,dcnn/conv1d_8/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������dq
dcnn/conv1d_8/ReluReludcnn/conv1d_8/BiasAdd:output:0*
T0*,
_output_shapes
:����������du
3dcnn/global_max_pooling1d_2/Max_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
!dcnn/global_max_pooling1d_2/Max_2Max dcnn/conv1d_8/Relu:activations:0<dcnn/global_max_pooling1d_2/Max_2/reduction_indices:output:0*
T0*'
_output_shapes
:���������d[
dcnn/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
����������
dcnn/concatConcatV2(dcnn/global_max_pooling1d_2/Max:output:0*dcnn/global_max_pooling1d_2/Max_1:output:0*dcnn/global_max_pooling1d_2/Max_2:output:0dcnn/concat/axis:output:0*
N*
T0*(
_output_shapes
:�����������
"dcnn/dense_4/MatMul/ReadVariableOpReadVariableOp+dcnn_dense_4_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dcnn/dense_4/MatMulMatMuldcnn/concat:output:0*dcnn/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
#dcnn/dense_4/BiasAdd/ReadVariableOpReadVariableOp,dcnn_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dcnn/dense_4/BiasAddBiasAdddcnn/dense_4/MatMul:product:0+dcnn/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������k
dcnn/dense_4/ReluReludcnn/dense_4/BiasAdd:output:0*
T0*(
_output_shapes
:����������w
dcnn/dropout_2/IdentityIdentitydcnn/dense_4/Relu:activations:0*
T0*(
_output_shapes
:�����������
"dcnn/dense_5/MatMul/ReadVariableOpReadVariableOp+dcnn_dense_5_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dcnn/dense_5/MatMulMatMul dcnn/dropout_2/Identity:output:0*dcnn/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
#dcnn/dense_5/BiasAdd/ReadVariableOpReadVariableOp,dcnn_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dcnn/dense_5/BiasAddBiasAdddcnn/dense_5/MatMul:product:0+dcnn/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������p
dcnn/dense_5/SigmoidSigmoiddcnn/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:���������g
IdentityIdentitydcnn/dense_5/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp%^dcnn/conv1d_6/BiasAdd/ReadVariableOp1^dcnn/conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp%^dcnn/conv1d_7/BiasAdd/ReadVariableOp1^dcnn/conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp%^dcnn/conv1d_8/BiasAdd/ReadVariableOp1^dcnn/conv1d_8/Conv1D/ExpandDims_1/ReadVariableOp$^dcnn/dense_4/BiasAdd/ReadVariableOp#^dcnn/dense_4/MatMul/ReadVariableOp$^dcnn/dense_5/BiasAdd/ReadVariableOp#^dcnn/dense_5/MatMul/ReadVariableOp"^dcnn/embedding_2/embedding_lookup*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:����������: : : : : : : : : : : 2L
$dcnn/conv1d_6/BiasAdd/ReadVariableOp$dcnn/conv1d_6/BiasAdd/ReadVariableOp2d
0dcnn/conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp0dcnn/conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp2L
$dcnn/conv1d_7/BiasAdd/ReadVariableOp$dcnn/conv1d_7/BiasAdd/ReadVariableOp2d
0dcnn/conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp0dcnn/conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp2L
$dcnn/conv1d_8/BiasAdd/ReadVariableOp$dcnn/conv1d_8/BiasAdd/ReadVariableOp2d
0dcnn/conv1d_8/Conv1D/ExpandDims_1/ReadVariableOp0dcnn/conv1d_8/Conv1D/ExpandDims_1/ReadVariableOp2J
#dcnn/dense_4/BiasAdd/ReadVariableOp#dcnn/dense_4/BiasAdd/ReadVariableOp2H
"dcnn/dense_4/MatMul/ReadVariableOp"dcnn/dense_4/MatMul/ReadVariableOp2J
#dcnn/dense_5/BiasAdd/ReadVariableOp#dcnn/dense_5/BiasAdd/ReadVariableOp2H
"dcnn/dense_5/MatMul/ReadVariableOp"dcnn/dense_5/MatMul/ReadVariableOp2F
!dcnn/embedding_2/embedding_lookup!dcnn/embedding_2/embedding_lookup:Q M
(
_output_shapes
:����������
!
_user_specified_name	input_1:%!

_user_specified_name10424:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
B__inference_dense_4_layer_call_and_return_conditional_losses_10591

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
B__inference_dense_5_layer_call_and_return_conditional_losses_10984

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
+__inference_embedding_2_layer_call_fn_10823

inputs
unknown:���
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_embedding_2_layer_call_and_return_conditional_losses_10509u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:����������: 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:%!

_user_specified_name10819
�
�
F__inference_embedding_2_layer_call_and_return_conditional_losses_10509

inputs+
embedding_lookup_10504:���
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_10504inputs*
Tindices0*)
_class
loc:@embedding_lookup/10504*-
_output_shapes
:�����������*
dtype0x
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*-
_output_shapes
:�����������w
IdentityIdentity"embedding_lookup/Identity:output:0^NoOp*
T0*-
_output_shapes
:�����������5
NoOpNoOp^embedding_lookup*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:����������: 2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:%!

_user_specified_name10504
�
�
C__inference_conv1d_6_layer_call_and_return_conditional_losses_10528

inputsB
+conv1d_expanddims_1_readvariableop_resource:�d-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:������������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:�d*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:�d�
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������d*
paddingSAME*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:����������d*
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������dU
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:����������df
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:����������d`
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
C__inference_conv1d_8_layer_call_and_return_conditional_losses_10572

inputsB
+conv1d_expanddims_1_readvariableop_resource:�d-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:������������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:�d*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:�d�
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������d*
paddingSAME*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:����������d*
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������dU
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:����������df
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:����������d`
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
C__inference_conv1d_6_layer_call_and_return_conditional_losses_10856

inputsB
+conv1d_expanddims_1_readvariableop_resource:�d-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:������������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:�d*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:�d�
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������d*
paddingSAME*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:����������d*
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������dU
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:����������df
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:����������d`
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

c
D__inference_dropout_2_layer_call_and_return_conditional_losses_10959

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
m
Q__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_10917

inputs
identityW
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
MaxMaxinputsMax/reduction_indices:output:0*
T0*0
_output_shapes
:������������������]
IdentityIdentityMax:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
�
#__inference_signature_wrapper_10816
input_1
unknown:��� 
	unknown_0:�d
	unknown_1:d 
	unknown_2:�d
	unknown_3:d 
	unknown_4:�d
	unknown_5:d
	unknown_6:
��
	unknown_7:	�
	unknown_8:	�
	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_10488o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:����������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:����������
!
_user_specified_name	input_1:%!

_user_specified_name10792:%!

_user_specified_name10794:%!

_user_specified_name10796:%!

_user_specified_name10798:%!

_user_specified_name10800:%!

_user_specified_name10802:%!

_user_specified_name10804:%!

_user_specified_name10806:%	!

_user_specified_name10808:%
!

_user_specified_name10810:%!

_user_specified_name10812
�
E
)__inference_dropout_2_layer_call_fn_10947

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_10662a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_10964

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
R
6__inference_global_max_pooling1d_2_layer_call_fn_10911

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_10494i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
�
C__inference_conv1d_8_layer_call_and_return_conditional_losses_10906

inputsB
+conv1d_expanddims_1_readvariableop_resource:�d-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:������������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:�d*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:�d�
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������d*
paddingSAME*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:����������d*
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������dU
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:����������df
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:����������d`
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
C__inference_conv1d_7_layer_call_and_return_conditional_losses_10550

inputsB
+conv1d_expanddims_1_readvariableop_resource:�d-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:������������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:�d*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:�d�
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������d*
paddingSAME*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:����������d*
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������dU
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:����������df
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:����������d`
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
(__inference_conv1d_7_layer_call_fn_10865

inputs
unknown:�d
	unknown_0:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_7_layer_call_and_return_conditional_losses_10550t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������d<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs:%!

_user_specified_name10859:%!

_user_specified_name10861
�

�
B__inference_dense_5_layer_call_and_return_conditional_losses_10620

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
B__inference_dense_4_layer_call_and_return_conditional_losses_10937

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

c
D__inference_dropout_2_layer_call_and_return_conditional_losses_10608

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
C__inference_conv1d_7_layer_call_and_return_conditional_losses_10881

inputsB
+conv1d_expanddims_1_readvariableop_resource:�d-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:������������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:�d*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:�d�
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������d*
paddingSAME*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:����������d*
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������dU
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:����������df
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:����������d`
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_10662

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�2
�
?__inference_dcnn_layer_call_and_return_conditional_losses_10627
input_1&
embedding_2_10510:���%
conv1d_6_10529:�d
conv1d_6_10531:d%
conv1d_7_10551:�d
conv1d_7_10553:d%
conv1d_8_10573:�d
conv1d_8_10575:d!
dense_4_10592:
��
dense_4_10594:	� 
dense_5_10621:	�
dense_5_10623:
identity�� conv1d_6/StatefulPartitionedCall� conv1d_7/StatefulPartitionedCall� conv1d_8/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�!dropout_2/StatefulPartitionedCall�#embedding_2/StatefulPartitionedCall�
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallinput_1embedding_2_10510*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_embedding_2_layer_call_and_return_conditional_losses_10509�
 conv1d_6/StatefulPartitionedCallStatefulPartitionedCall,embedding_2/StatefulPartitionedCall:output:0conv1d_6_10529conv1d_6_10531*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_6_layer_call_and_return_conditional_losses_10528�
&global_max_pooling1d_2/PartitionedCallPartitionedCall)conv1d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_10494�
 conv1d_7/StatefulPartitionedCallStatefulPartitionedCall,embedding_2/StatefulPartitionedCall:output:0conv1d_7_10551conv1d_7_10553*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_7_layer_call_and_return_conditional_losses_10550�
(global_max_pooling1d_2/PartitionedCall_1PartitionedCall)conv1d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_10494�
 conv1d_8/StatefulPartitionedCallStatefulPartitionedCall,embedding_2/StatefulPartitionedCall:output:0conv1d_8_10573conv1d_8_10575*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_8_layer_call_and_return_conditional_losses_10572�
(global_max_pooling1d_2/PartitionedCall_2PartitionedCall)conv1d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_10494V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
����������
concatConcatV2/global_max_pooling1d_2/PartitionedCall:output:01global_max_pooling1d_2/PartitionedCall_1:output:01global_max_pooling1d_2/PartitionedCall_2:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:�����������
dense_4/StatefulPartitionedCallStatefulPartitionedCallconcat:output:0dense_4_10592dense_4_10594*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_10591�
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_10608�
dense_5/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_5_10621dense_5_10623*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_10620w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^conv1d_6/StatefulPartitionedCall!^conv1d_7/StatefulPartitionedCall!^conv1d_8/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall$^embedding_2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:����������: : : : : : : : : : : 2D
 conv1d_6/StatefulPartitionedCall conv1d_6/StatefulPartitionedCall2D
 conv1d_7/StatefulPartitionedCall conv1d_7/StatefulPartitionedCall2D
 conv1d_8/StatefulPartitionedCall conv1d_8/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall:Q M
(
_output_shapes
:����������
!
_user_specified_name	input_1:%!

_user_specified_name10510:%!

_user_specified_name10529:%!

_user_specified_name10531:%!

_user_specified_name10551:%!

_user_specified_name10553:%!

_user_specified_name10573:%!

_user_specified_name10575:%!

_user_specified_name10592:%	!

_user_specified_name10594:%
!

_user_specified_name10621:%!

_user_specified_name10623
��
�$
__inference__traced_save_11240
file_prefixG
2read_disablecopyonread_dcnn_embedding_2_embeddings:���D
-read_1_disablecopyonread_dcnn_conv1d_6_kernel:�d9
+read_2_disablecopyonread_dcnn_conv1d_6_bias:dD
-read_3_disablecopyonread_dcnn_conv1d_7_kernel:�d9
+read_4_disablecopyonread_dcnn_conv1d_7_bias:dD
-read_5_disablecopyonread_dcnn_conv1d_8_kernel:�d9
+read_6_disablecopyonread_dcnn_conv1d_8_bias:d@
,read_7_disablecopyonread_dcnn_dense_4_kernel:
��9
*read_8_disablecopyonread_dcnn_dense_4_bias:	�?
,read_9_disablecopyonread_dcnn_dense_5_kernel:	�9
+read_10_disablecopyonread_dcnn_dense_5_bias:-
#read_11_disablecopyonread_iteration:	 1
'read_12_disablecopyonread_learning_rate: Q
<read_13_disablecopyonread_adam_m_dcnn_embedding_2_embeddings:���Q
<read_14_disablecopyonread_adam_v_dcnn_embedding_2_embeddings:���L
5read_15_disablecopyonread_adam_m_dcnn_conv1d_6_kernel:�dL
5read_16_disablecopyonread_adam_v_dcnn_conv1d_6_kernel:�dA
3read_17_disablecopyonread_adam_m_dcnn_conv1d_6_bias:dA
3read_18_disablecopyonread_adam_v_dcnn_conv1d_6_bias:dL
5read_19_disablecopyonread_adam_m_dcnn_conv1d_7_kernel:�dL
5read_20_disablecopyonread_adam_v_dcnn_conv1d_7_kernel:�dA
3read_21_disablecopyonread_adam_m_dcnn_conv1d_7_bias:dA
3read_22_disablecopyonread_adam_v_dcnn_conv1d_7_bias:dL
5read_23_disablecopyonread_adam_m_dcnn_conv1d_8_kernel:�dL
5read_24_disablecopyonread_adam_v_dcnn_conv1d_8_kernel:�dA
3read_25_disablecopyonread_adam_m_dcnn_conv1d_8_bias:dA
3read_26_disablecopyonread_adam_v_dcnn_conv1d_8_bias:dH
4read_27_disablecopyonread_adam_m_dcnn_dense_4_kernel:
��H
4read_28_disablecopyonread_adam_v_dcnn_dense_4_kernel:
��A
2read_29_disablecopyonread_adam_m_dcnn_dense_4_bias:	�A
2read_30_disablecopyonread_adam_v_dcnn_dense_4_bias:	�G
4read_31_disablecopyonread_adam_m_dcnn_dense_5_kernel:	�G
4read_32_disablecopyonread_adam_v_dcnn_dense_5_kernel:	�@
2read_33_disablecopyonread_adam_m_dcnn_dense_5_bias:@
2read_34_disablecopyonread_adam_v_dcnn_dense_5_bias:+
!read_35_disablecopyonread_total_1: +
!read_36_disablecopyonread_count_1: )
read_37_disablecopyonread_total: )
read_38_disablecopyonread_count: 
savev2_const
identity_79��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
: �
Read/DisableCopyOnReadDisableCopyOnRead2read_disablecopyonread_dcnn_embedding_2_embeddings"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp2read_disablecopyonread_dcnn_embedding_2_embeddings^Read/DisableCopyOnRead"/device:CPU:0*!
_output_shapes
:���*
dtype0l
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*!
_output_shapes
:���d

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*!
_output_shapes
:����
Read_1/DisableCopyOnReadDisableCopyOnRead-read_1_disablecopyonread_dcnn_conv1d_6_kernel"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp-read_1_disablecopyonread_dcnn_conv1d_6_kernel^Read_1/DisableCopyOnRead"/device:CPU:0*#
_output_shapes
:�d*
dtype0r

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*#
_output_shapes
:�dh

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*#
_output_shapes
:�d
Read_2/DisableCopyOnReadDisableCopyOnRead+read_2_disablecopyonread_dcnn_conv1d_6_bias"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp+read_2_disablecopyonread_dcnn_conv1d_6_bias^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:d*
dtype0i

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:d_

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:d�
Read_3/DisableCopyOnReadDisableCopyOnRead-read_3_disablecopyonread_dcnn_conv1d_7_kernel"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp-read_3_disablecopyonread_dcnn_conv1d_7_kernel^Read_3/DisableCopyOnRead"/device:CPU:0*#
_output_shapes
:�d*
dtype0r

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*#
_output_shapes
:�dh

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*#
_output_shapes
:�d
Read_4/DisableCopyOnReadDisableCopyOnRead+read_4_disablecopyonread_dcnn_conv1d_7_bias"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp+read_4_disablecopyonread_dcnn_conv1d_7_bias^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:d*
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:d_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:d�
Read_5/DisableCopyOnReadDisableCopyOnRead-read_5_disablecopyonread_dcnn_conv1d_8_kernel"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp-read_5_disablecopyonread_dcnn_conv1d_8_kernel^Read_5/DisableCopyOnRead"/device:CPU:0*#
_output_shapes
:�d*
dtype0s
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*#
_output_shapes
:�dj
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*#
_output_shapes
:�d
Read_6/DisableCopyOnReadDisableCopyOnRead+read_6_disablecopyonread_dcnn_conv1d_8_bias"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp+read_6_disablecopyonread_dcnn_conv1d_8_bias^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:d*
dtype0j
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:da
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
:d�
Read_7/DisableCopyOnReadDisableCopyOnRead,read_7_disablecopyonread_dcnn_dense_4_kernel"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp,read_7_disablecopyonread_dcnn_dense_4_kernel^Read_7/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0p
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��~
Read_8/DisableCopyOnReadDisableCopyOnRead*read_8_disablecopyonread_dcnn_dense_4_bias"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp*read_8_disablecopyonread_dcnn_dense_4_bias^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_9/DisableCopyOnReadDisableCopyOnRead,read_9_disablecopyonread_dcnn_dense_5_kernel"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp,read_9_disablecopyonread_dcnn_dense_5_kernel^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0o
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_10/DisableCopyOnReadDisableCopyOnRead+read_10_disablecopyonread_dcnn_dense_5_bias"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp+read_10_disablecopyonread_dcnn_dense_5_bias^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_11/DisableCopyOnReadDisableCopyOnRead#read_11_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp#read_11_disablecopyonread_iteration^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_12/DisableCopyOnReadDisableCopyOnRead'read_12_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp'read_12_disablecopyonread_learning_rate^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_13/DisableCopyOnReadDisableCopyOnRead<read_13_disablecopyonread_adam_m_dcnn_embedding_2_embeddings"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp<read_13_disablecopyonread_adam_m_dcnn_embedding_2_embeddings^Read_13/DisableCopyOnRead"/device:CPU:0*!
_output_shapes
:���*
dtype0r
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*!
_output_shapes
:���h
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*!
_output_shapes
:����
Read_14/DisableCopyOnReadDisableCopyOnRead<read_14_disablecopyonread_adam_v_dcnn_embedding_2_embeddings"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp<read_14_disablecopyonread_adam_v_dcnn_embedding_2_embeddings^Read_14/DisableCopyOnRead"/device:CPU:0*!
_output_shapes
:���*
dtype0r
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*!
_output_shapes
:���h
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*!
_output_shapes
:����
Read_15/DisableCopyOnReadDisableCopyOnRead5read_15_disablecopyonread_adam_m_dcnn_conv1d_6_kernel"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp5read_15_disablecopyonread_adam_m_dcnn_conv1d_6_kernel^Read_15/DisableCopyOnRead"/device:CPU:0*#
_output_shapes
:�d*
dtype0t
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*#
_output_shapes
:�dj
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*#
_output_shapes
:�d�
Read_16/DisableCopyOnReadDisableCopyOnRead5read_16_disablecopyonread_adam_v_dcnn_conv1d_6_kernel"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp5read_16_disablecopyonread_adam_v_dcnn_conv1d_6_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*#
_output_shapes
:�d*
dtype0t
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*#
_output_shapes
:�dj
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*#
_output_shapes
:�d�
Read_17/DisableCopyOnReadDisableCopyOnRead3read_17_disablecopyonread_adam_m_dcnn_conv1d_6_bias"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp3read_17_disablecopyonread_adam_m_dcnn_conv1d_6_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:d*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:da
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:d�
Read_18/DisableCopyOnReadDisableCopyOnRead3read_18_disablecopyonread_adam_v_dcnn_conv1d_6_bias"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp3read_18_disablecopyonread_adam_v_dcnn_conv1d_6_bias^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:d*
dtype0k
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:da
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:d�
Read_19/DisableCopyOnReadDisableCopyOnRead5read_19_disablecopyonread_adam_m_dcnn_conv1d_7_kernel"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp5read_19_disablecopyonread_adam_m_dcnn_conv1d_7_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*#
_output_shapes
:�d*
dtype0t
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*#
_output_shapes
:�dj
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*#
_output_shapes
:�d�
Read_20/DisableCopyOnReadDisableCopyOnRead5read_20_disablecopyonread_adam_v_dcnn_conv1d_7_kernel"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp5read_20_disablecopyonread_adam_v_dcnn_conv1d_7_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*#
_output_shapes
:�d*
dtype0t
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*#
_output_shapes
:�dj
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*#
_output_shapes
:�d�
Read_21/DisableCopyOnReadDisableCopyOnRead3read_21_disablecopyonread_adam_m_dcnn_conv1d_7_bias"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp3read_21_disablecopyonread_adam_m_dcnn_conv1d_7_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:d*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:da
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:d�
Read_22/DisableCopyOnReadDisableCopyOnRead3read_22_disablecopyonread_adam_v_dcnn_conv1d_7_bias"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp3read_22_disablecopyonread_adam_v_dcnn_conv1d_7_bias^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:d*
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:da
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:d�
Read_23/DisableCopyOnReadDisableCopyOnRead5read_23_disablecopyonread_adam_m_dcnn_conv1d_8_kernel"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp5read_23_disablecopyonread_adam_m_dcnn_conv1d_8_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*#
_output_shapes
:�d*
dtype0t
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*#
_output_shapes
:�dj
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*#
_output_shapes
:�d�
Read_24/DisableCopyOnReadDisableCopyOnRead5read_24_disablecopyonread_adam_v_dcnn_conv1d_8_kernel"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp5read_24_disablecopyonread_adam_v_dcnn_conv1d_8_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*#
_output_shapes
:�d*
dtype0t
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*#
_output_shapes
:�dj
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*#
_output_shapes
:�d�
Read_25/DisableCopyOnReadDisableCopyOnRead3read_25_disablecopyonread_adam_m_dcnn_conv1d_8_bias"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp3read_25_disablecopyonread_adam_m_dcnn_conv1d_8_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:d*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:da
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:d�
Read_26/DisableCopyOnReadDisableCopyOnRead3read_26_disablecopyonread_adam_v_dcnn_conv1d_8_bias"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp3read_26_disablecopyonread_adam_v_dcnn_conv1d_8_bias^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:d*
dtype0k
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:da
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
:d�
Read_27/DisableCopyOnReadDisableCopyOnRead4read_27_disablecopyonread_adam_m_dcnn_dense_4_kernel"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp4read_27_disablecopyonread_adam_m_dcnn_dense_4_kernel^Read_27/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_28/DisableCopyOnReadDisableCopyOnRead4read_28_disablecopyonread_adam_v_dcnn_dense_4_kernel"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp4read_28_disablecopyonread_adam_v_dcnn_dense_4_kernel^Read_28/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_29/DisableCopyOnReadDisableCopyOnRead2read_29_disablecopyonread_adam_m_dcnn_dense_4_bias"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp2read_29_disablecopyonread_adam_m_dcnn_dense_4_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_30/DisableCopyOnReadDisableCopyOnRead2read_30_disablecopyonread_adam_v_dcnn_dense_4_bias"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp2read_30_disablecopyonread_adam_v_dcnn_dense_4_bias^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_31/DisableCopyOnReadDisableCopyOnRead4read_31_disablecopyonread_adam_m_dcnn_dense_5_kernel"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp4read_31_disablecopyonread_adam_m_dcnn_dense_5_kernel^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_32/DisableCopyOnReadDisableCopyOnRead4read_32_disablecopyonread_adam_v_dcnn_dense_5_kernel"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp4read_32_disablecopyonread_adam_v_dcnn_dense_5_kernel^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_33/DisableCopyOnReadDisableCopyOnRead2read_33_disablecopyonread_adam_m_dcnn_dense_5_bias"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp2read_33_disablecopyonread_adam_m_dcnn_dense_5_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_34/DisableCopyOnReadDisableCopyOnRead2read_34_disablecopyonread_adam_v_dcnn_dense_5_bias"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp2read_34_disablecopyonread_adam_v_dcnn_dense_5_bias^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_35/DisableCopyOnReadDisableCopyOnRead!read_35_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp!read_35_disablecopyonread_total_1^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_36/DisableCopyOnReadDisableCopyOnRead!read_36_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp!read_36_disablecopyonread_count_1^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_37/DisableCopyOnReadDisableCopyOnReadread_37_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOpread_37_disablecopyonread_total^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_38/DisableCopyOnReadDisableCopyOnReadread_38_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOpread_38_disablecopyonread_count^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*�
value�B�(B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *6
dtypes,
*2(	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_78Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_79IdentityIdentity_78:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_79Identity_79:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
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
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp24
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
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:;7
5
_user_specified_namedcnn/embedding_2/embeddings:40
.
_user_specified_namedcnn/conv1d_6/kernel:2.
,
_user_specified_namedcnn/conv1d_6/bias:40
.
_user_specified_namedcnn/conv1d_7/kernel:2.
,
_user_specified_namedcnn/conv1d_7/bias:40
.
_user_specified_namedcnn/conv1d_8/kernel:2.
,
_user_specified_namedcnn/conv1d_8/bias:3/
-
_user_specified_namedcnn/dense_4/kernel:1	-
+
_user_specified_namedcnn/dense_4/bias:3
/
-
_user_specified_namedcnn/dense_5/kernel:1-
+
_user_specified_namedcnn/dense_5/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:B>
<
_user_specified_name$"Adam/m/dcnn/embedding_2/embeddings:B>
<
_user_specified_name$"Adam/v/dcnn/embedding_2/embeddings:;7
5
_user_specified_nameAdam/m/dcnn/conv1d_6/kernel:;7
5
_user_specified_nameAdam/v/dcnn/conv1d_6/kernel:95
3
_user_specified_nameAdam/m/dcnn/conv1d_6/bias:95
3
_user_specified_nameAdam/v/dcnn/conv1d_6/bias:;7
5
_user_specified_nameAdam/m/dcnn/conv1d_7/kernel:;7
5
_user_specified_nameAdam/v/dcnn/conv1d_7/kernel:95
3
_user_specified_nameAdam/m/dcnn/conv1d_7/bias:95
3
_user_specified_nameAdam/v/dcnn/conv1d_7/bias:;7
5
_user_specified_nameAdam/m/dcnn/conv1d_8/kernel:;7
5
_user_specified_nameAdam/v/dcnn/conv1d_8/kernel:95
3
_user_specified_nameAdam/m/dcnn/conv1d_8/bias:95
3
_user_specified_nameAdam/v/dcnn/conv1d_8/bias::6
4
_user_specified_nameAdam/m/dcnn/dense_4/kernel::6
4
_user_specified_nameAdam/v/dcnn/dense_4/kernel:84
2
_user_specified_nameAdam/m/dcnn/dense_4/bias:84
2
_user_specified_nameAdam/v/dcnn/dense_4/bias:: 6
4
_user_specified_nameAdam/m/dcnn/dense_5/kernel::!6
4
_user_specified_nameAdam/v/dcnn/dense_5/kernel:8"4
2
_user_specified_nameAdam/m/dcnn/dense_5/bias:8#4
2
_user_specified_nameAdam/v/dcnn/dense_5/bias:'$#
!
_user_specified_name	total_1:'%#
!
_user_specified_name	count_1:%&!

_user_specified_nametotal:%'!

_user_specified_namecount:=(9

_output_shapes
: 

_user_specified_nameConst"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
<
input_11
serving_default_input_1:0����������<
output_10
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	embedding

	bigram

trigram
fourgram
pool
dense_1
dropout

last_dense
	optimizer

signatures"
_tf_keras_model
n
0
1
2
3
4
5
6
7
8
9
10"
trackable_list_wrapper
n
0
1
2
3
4
5
6
7
8
9
10"
trackable_list_wrapper
 "
trackable_list_wrapper
�
non_trainable_variables

layers
metrics
 layer_regularization_losses
!layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
"trace_0
#trace_12�
$__inference_dcnn_layer_call_fn_10697
$__inference_dcnn_layer_call_fn_10724�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z"trace_0z#trace_1
�
$trace_0
%trace_12�
?__inference_dcnn_layer_call_and_return_conditional_losses_10627
?__inference_dcnn_layer_call_and_return_conditional_losses_10670�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z$trace_0z%trace_1
�B�
 __inference__wrapped_model_10488input_1"�
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
 
�
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

kernel
bias
 2_jit_compiled_convolution_op"
_tf_keras_layer
�
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

kernel
bias
 9_jit_compiled_convolution_op"
_tf_keras_layer
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses

kernel
bias
 @_jit_compiled_convolution_op"
_tf_keras_layer
�
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses"
_tf_keras_layer
�
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses
S_random_generator"
_tf_keras_layer
�
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
Z
_variables
[_iterations
\_learning_rate
]_index_dict
^
_momentums
__velocities
`_update_step_xla"
experimentalOptimizer
,
aserving_default"
signature_map
0:.���2dcnn/embedding_2/embeddings
+:)�d2dcnn/conv1d_6/kernel
 :d2dcnn/conv1d_6/bias
+:)�d2dcnn/conv1d_7/kernel
 :d2dcnn/conv1d_7/bias
+:)�d2dcnn/conv1d_8/kernel
 :d2dcnn/conv1d_8/bias
':%
��2dcnn/dense_4/kernel
 :�2dcnn/dense_4/bias
&:$	�2dcnn/dense_5/kernel
:2dcnn/dense_5/bias
 "
trackable_list_wrapper
X
0
	1

2
3
4
5
6
7"
trackable_list_wrapper
.
b0
c1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
$__inference_dcnn_layer_call_fn_10697input_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining
kwonlydefaults
 
annotations� *
 
�B�
$__inference_dcnn_layer_call_fn_10724input_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining
kwonlydefaults
 
annotations� *
 
�B�
?__inference_dcnn_layer_call_and_return_conditional_losses_10627input_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining
kwonlydefaults
 
annotations� *
 
�B�
?__inference_dcnn_layer_call_and_return_conditional_losses_10670input_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining
kwonlydefaults
 
annotations� *
 
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
�
itrace_02�
+__inference_embedding_2_layer_call_fn_10823�
���
FullArgSpec
args�

jinputs
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
 zitrace_0
�
jtrace_02�
F__inference_embedding_2_layer_call_and_return_conditional_losses_10831�
���
FullArgSpec
args�

jinputs
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
 zjtrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
�
ptrace_02�
(__inference_conv1d_6_layer_call_fn_10840�
���
FullArgSpec
args�

jinputs
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
 zptrace_0
�
qtrace_02�
C__inference_conv1d_6_layer_call_and_return_conditional_losses_10856�
���
FullArgSpec
args�

jinputs
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
 zqtrace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
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
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
�
wtrace_02�
(__inference_conv1d_7_layer_call_fn_10865�
���
FullArgSpec
args�

jinputs
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
 zwtrace_0
�
xtrace_02�
C__inference_conv1d_7_layer_call_and_return_conditional_losses_10881�
���
FullArgSpec
args�

jinputs
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
 zxtrace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
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
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
�
~trace_02�
(__inference_conv1d_8_layer_call_fn_10890�
���
FullArgSpec
args�

jinputs
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
 z~trace_0
�
trace_02�
C__inference_conv1d_8_layer_call_and_return_conditional_losses_10906�
���
FullArgSpec
args�

jinputs
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
 ztrace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
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
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
6__inference_global_max_pooling1d_2_layer_call_fn_10911�
���
FullArgSpec
args�

jinputs
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
 z�trace_0
�
�trace_02�
Q__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_10917�
���
FullArgSpec
args�

jinputs
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
 z�trace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_dense_4_layer_call_fn_10926�
���
FullArgSpec
args�

jinputs
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
 z�trace_0
�
�trace_02�
B__inference_dense_4_layer_call_and_return_conditional_losses_10937�
���
FullArgSpec
args�

jinputs
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
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
)__inference_dropout_2_layer_call_fn_10942
)__inference_dropout_2_layer_call_fn_10947�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
D__inference_dropout_2_layer_call_and_return_conditional_losses_10959
D__inference_dropout_2_layer_call_and_return_conditional_losses_10964�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_dense_5_layer_call_fn_10973�
���
FullArgSpec
args�

jinputs
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
 z�trace_0
�
�trace_02�
B__inference_dense_5_layer_call_and_return_conditional_losses_10984�
���
FullArgSpec
args�

jinputs
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
 z�trace_0
�
[0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
y
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10"
trackable_list_wrapper
y
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10"
trackable_list_wrapper
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
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
 0
�B�
#__inference_signature_wrapper_10816input_1"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs�
	jinput_1
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_embedding_2_layer_call_fn_10823inputs"�
���
FullArgSpec
args�

jinputs
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
 
�B�
F__inference_embedding_2_layer_call_and_return_conditional_losses_10831inputs"�
���
FullArgSpec
args�

jinputs
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
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_conv1d_6_layer_call_fn_10840inputs"�
���
FullArgSpec
args�

jinputs
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
 
�B�
C__inference_conv1d_6_layer_call_and_return_conditional_losses_10856inputs"�
���
FullArgSpec
args�

jinputs
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
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_conv1d_7_layer_call_fn_10865inputs"�
���
FullArgSpec
args�

jinputs
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
 
�B�
C__inference_conv1d_7_layer_call_and_return_conditional_losses_10881inputs"�
���
FullArgSpec
args�

jinputs
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
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_conv1d_8_layer_call_fn_10890inputs"�
���
FullArgSpec
args�

jinputs
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
 
�B�
C__inference_conv1d_8_layer_call_and_return_conditional_losses_10906inputs"�
���
FullArgSpec
args�

jinputs
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
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_global_max_pooling1d_2_layer_call_fn_10911inputs"�
���
FullArgSpec
args�

jinputs
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
 
�B�
Q__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_10917inputs"�
���
FullArgSpec
args�

jinputs
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
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_dense_4_layer_call_fn_10926inputs"�
���
FullArgSpec
args�

jinputs
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
 
�B�
B__inference_dense_4_layer_call_and_return_conditional_losses_10937inputs"�
���
FullArgSpec
args�

jinputs
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
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_dropout_2_layer_call_fn_10942inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
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
 
�B�
)__inference_dropout_2_layer_call_fn_10947inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
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
 
�B�
D__inference_dropout_2_layer_call_and_return_conditional_losses_10959inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
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
 
�B�
D__inference_dropout_2_layer_call_and_return_conditional_losses_10964inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
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
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_dense_5_layer_call_fn_10973inputs"�
���
FullArgSpec
args�

jinputs
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
 
�B�
B__inference_dense_5_layer_call_and_return_conditional_losses_10984inputs"�
���
FullArgSpec
args�

jinputs
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
 
5:3���2"Adam/m/dcnn/embedding_2/embeddings
5:3���2"Adam/v/dcnn/embedding_2/embeddings
0:.�d2Adam/m/dcnn/conv1d_6/kernel
0:.�d2Adam/v/dcnn/conv1d_6/kernel
%:#d2Adam/m/dcnn/conv1d_6/bias
%:#d2Adam/v/dcnn/conv1d_6/bias
0:.�d2Adam/m/dcnn/conv1d_7/kernel
0:.�d2Adam/v/dcnn/conv1d_7/kernel
%:#d2Adam/m/dcnn/conv1d_7/bias
%:#d2Adam/v/dcnn/conv1d_7/bias
0:.�d2Adam/m/dcnn/conv1d_8/kernel
0:.�d2Adam/v/dcnn/conv1d_8/kernel
%:#d2Adam/m/dcnn/conv1d_8/bias
%:#d2Adam/v/dcnn/conv1d_8/bias
,:*
��2Adam/m/dcnn/dense_4/kernel
,:*
��2Adam/v/dcnn/dense_4/kernel
%:#�2Adam/m/dcnn/dense_4/bias
%:#�2Adam/v/dcnn/dense_4/bias
+:)	�2Adam/m/dcnn/dense_5/kernel
+:)	�2Adam/v/dcnn/dense_5/kernel
$:"2Adam/m/dcnn/dense_5/bias
$:"2Adam/v/dcnn/dense_5/bias
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
 __inference__wrapped_model_10488u1�.
'�$
"�
input_1����������
� "3�0
.
output_1"�
output_1����������
C__inference_conv1d_6_layer_call_and_return_conditional_losses_10856n5�2
+�(
&�#
inputs�����������
� "1�.
'�$
tensor_0����������d
� �
(__inference_conv1d_6_layer_call_fn_10840c5�2
+�(
&�#
inputs�����������
� "&�#
unknown����������d�
C__inference_conv1d_7_layer_call_and_return_conditional_losses_10881n5�2
+�(
&�#
inputs�����������
� "1�.
'�$
tensor_0����������d
� �
(__inference_conv1d_7_layer_call_fn_10865c5�2
+�(
&�#
inputs�����������
� "&�#
unknown����������d�
C__inference_conv1d_8_layer_call_and_return_conditional_losses_10906n5�2
+�(
&�#
inputs�����������
� "1�.
'�$
tensor_0����������d
� �
(__inference_conv1d_8_layer_call_fn_10890c5�2
+�(
&�#
inputs�����������
� "&�#
unknown����������d�
?__inference_dcnn_layer_call_and_return_conditional_losses_10627~A�>
'�$
"�
input_1����������
�

trainingp",�)
"�
tensor_0���������
� �
?__inference_dcnn_layer_call_and_return_conditional_losses_10670~A�>
'�$
"�
input_1����������
�

trainingp ",�)
"�
tensor_0���������
� �
$__inference_dcnn_layer_call_fn_10697sA�>
'�$
"�
input_1����������
�

trainingp"!�
unknown����������
$__inference_dcnn_layer_call_fn_10724sA�>
'�$
"�
input_1����������
�

trainingp "!�
unknown����������
B__inference_dense_4_layer_call_and_return_conditional_losses_10937e0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
'__inference_dense_4_layer_call_fn_10926Z0�-
&�#
!�
inputs����������
� ""�
unknown�����������
B__inference_dense_5_layer_call_and_return_conditional_losses_10984d0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������
� �
'__inference_dense_5_layer_call_fn_10973Y0�-
&�#
!�
inputs����������
� "!�
unknown����������
D__inference_dropout_2_layer_call_and_return_conditional_losses_10959e4�1
*�'
!�
inputs����������
p
� "-�*
#� 
tensor_0����������
� �
D__inference_dropout_2_layer_call_and_return_conditional_losses_10964e4�1
*�'
!�
inputs����������
p 
� "-�*
#� 
tensor_0����������
� �
)__inference_dropout_2_layer_call_fn_10942Z4�1
*�'
!�
inputs����������
p
� ""�
unknown�����������
)__inference_dropout_2_layer_call_fn_10947Z4�1
*�'
!�
inputs����������
p 
� ""�
unknown�����������
F__inference_embedding_2_layer_call_and_return_conditional_losses_10831i0�-
&�#
!�
inputs����������
� "2�/
(�%
tensor_0�����������
� �
+__inference_embedding_2_layer_call_fn_10823^0�-
&�#
!�
inputs����������
� "'�$
unknown������������
Q__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_10917~E�B
;�8
6�3
inputs'���������������������������
� "5�2
+�(
tensor_0������������������
� �
6__inference_global_max_pooling1d_2_layer_call_fn_10911sE�B
;�8
6�3
inputs'���������������������������
� "*�'
unknown�������������������
#__inference_signature_wrapper_10816�<�9
� 
2�/
-
input_1"�
input_1����������"3�0
.
output_1"�
output_1���������