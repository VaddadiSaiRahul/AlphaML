��%
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
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
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
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
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handle��element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListReserve
element_shape"
shape_type
num_elements#
handle��element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint���������
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
�
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
�"serve*2.6.22v2.6.1-9-gc2363d6d0258��$
z
dense_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_17/kernel
s
#dense_17/kernel/Read/ReadVariableOpReadVariableOpdense_17/kernel*
_output_shapes

: *
dtype0
r
dense_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_17/bias
k
!dense_17/bias/Read/ReadVariableOpReadVariableOpdense_17/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
�
lstm_34/lstm_cell_68/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*,
shared_namelstm_34/lstm_cell_68/kernel
�
/lstm_34/lstm_cell_68/kernel/Read/ReadVariableOpReadVariableOplstm_34/lstm_cell_68/kernel*
_output_shapes
:	�*
dtype0
�
%lstm_34/lstm_cell_68/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*6
shared_name'%lstm_34/lstm_cell_68/recurrent_kernel
�
9lstm_34/lstm_cell_68/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_34/lstm_cell_68/recurrent_kernel*
_output_shapes
:	@�*
dtype0
�
lstm_34/lstm_cell_68/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�**
shared_namelstm_34/lstm_cell_68/bias
�
-lstm_34/lstm_cell_68/bias/Read/ReadVariableOpReadVariableOplstm_34/lstm_cell_68/bias*
_output_shapes	
:�*
dtype0
�
lstm_35/lstm_cell_69/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*,
shared_namelstm_35/lstm_cell_69/kernel
�
/lstm_35/lstm_cell_69/kernel/Read/ReadVariableOpReadVariableOplstm_35/lstm_cell_69/kernel*
_output_shapes
:	@�*
dtype0
�
%lstm_35/lstm_cell_69/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*6
shared_name'%lstm_35/lstm_cell_69/recurrent_kernel
�
9lstm_35/lstm_cell_69/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_35/lstm_cell_69/recurrent_kernel*
_output_shapes
:	 �*
dtype0
�
lstm_35/lstm_cell_69/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�**
shared_namelstm_35/lstm_cell_69/bias
�
-lstm_35/lstm_cell_69/bias/Read/ReadVariableOpReadVariableOplstm_35/lstm_cell_69/bias*
_output_shapes	
:�*
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
�
Adam/dense_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_17/kernel/m
�
*Adam/dense_17/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_17/kernel/m*
_output_shapes

: *
dtype0
�
Adam/dense_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_17/bias/m
y
(Adam/dense_17/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_17/bias/m*
_output_shapes
:*
dtype0
�
"Adam/lstm_34/lstm_cell_68/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*3
shared_name$"Adam/lstm_34/lstm_cell_68/kernel/m
�
6Adam/lstm_34/lstm_cell_68/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_34/lstm_cell_68/kernel/m*
_output_shapes
:	�*
dtype0
�
,Adam/lstm_34/lstm_cell_68/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*=
shared_name.,Adam/lstm_34/lstm_cell_68/recurrent_kernel/m
�
@Adam/lstm_34/lstm_cell_68/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_34/lstm_cell_68/recurrent_kernel/m*
_output_shapes
:	@�*
dtype0
�
 Adam/lstm_34/lstm_cell_68/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_34/lstm_cell_68/bias/m
�
4Adam/lstm_34/lstm_cell_68/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_34/lstm_cell_68/bias/m*
_output_shapes	
:�*
dtype0
�
"Adam/lstm_35/lstm_cell_69/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*3
shared_name$"Adam/lstm_35/lstm_cell_69/kernel/m
�
6Adam/lstm_35/lstm_cell_69/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_35/lstm_cell_69/kernel/m*
_output_shapes
:	@�*
dtype0
�
,Adam/lstm_35/lstm_cell_69/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*=
shared_name.,Adam/lstm_35/lstm_cell_69/recurrent_kernel/m
�
@Adam/lstm_35/lstm_cell_69/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_35/lstm_cell_69/recurrent_kernel/m*
_output_shapes
:	 �*
dtype0
�
 Adam/lstm_35/lstm_cell_69/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_35/lstm_cell_69/bias/m
�
4Adam/lstm_35/lstm_cell_69/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_35/lstm_cell_69/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_17/kernel/v
�
*Adam/dense_17/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_17/kernel/v*
_output_shapes

: *
dtype0
�
Adam/dense_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_17/bias/v
y
(Adam/dense_17/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_17/bias/v*
_output_shapes
:*
dtype0
�
"Adam/lstm_34/lstm_cell_68/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*3
shared_name$"Adam/lstm_34/lstm_cell_68/kernel/v
�
6Adam/lstm_34/lstm_cell_68/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_34/lstm_cell_68/kernel/v*
_output_shapes
:	�*
dtype0
�
,Adam/lstm_34/lstm_cell_68/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*=
shared_name.,Adam/lstm_34/lstm_cell_68/recurrent_kernel/v
�
@Adam/lstm_34/lstm_cell_68/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_34/lstm_cell_68/recurrent_kernel/v*
_output_shapes
:	@�*
dtype0
�
 Adam/lstm_34/lstm_cell_68/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_34/lstm_cell_68/bias/v
�
4Adam/lstm_34/lstm_cell_68/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_34/lstm_cell_68/bias/v*
_output_shapes	
:�*
dtype0
�
"Adam/lstm_35/lstm_cell_69/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*3
shared_name$"Adam/lstm_35/lstm_cell_69/kernel/v
�
6Adam/lstm_35/lstm_cell_69/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_35/lstm_cell_69/kernel/v*
_output_shapes
:	@�*
dtype0
�
,Adam/lstm_35/lstm_cell_69/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*=
shared_name.,Adam/lstm_35/lstm_cell_69/recurrent_kernel/v
�
@Adam/lstm_35/lstm_cell_69/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_35/lstm_cell_69/recurrent_kernel/v*
_output_shapes
:	 �*
dtype0
�
 Adam/lstm_35/lstm_cell_69/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_35/lstm_cell_69/bias/v
�
4Adam/lstm_35/lstm_cell_69/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_35/lstm_cell_69/bias/v*
_output_shapes	
:�*
dtype0

NoOpNoOp
�3
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�2
value�2B�2 B�2
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
	optimizer
trainable_variables
regularization_losses
	variables
		keras_api


signatures
l
cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api
l
cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
 	keras_api
�
!iter

"beta_1

#beta_2
	$decay
%learning_ratem`ma&mb'mc(md)me*mf+mgvhvi&vj'vk(vl)vm*vn+vo
8
&0
'1
(2
)3
*4
+5
6
7
 
8
&0
'1
(2
)3
*4
+5
6
7
�
trainable_variables
regularization_losses
,layer_metrics

-layers
	variables
.metrics
/non_trainable_variables
0layer_regularization_losses
 
�
1
state_size

&kernel
'recurrent_kernel
(bias
2trainable_variables
3regularization_losses
4	variables
5	keras_api
 

&0
'1
(2
 

&0
'1
(2
�
trainable_variables
regularization_losses
6layer_metrics

7layers
	variables
8layer_regularization_losses
9metrics
:non_trainable_variables

;states
�
<
state_size

)kernel
*recurrent_kernel
+bias
=trainable_variables
>regularization_losses
?	variables
@	keras_api
 

)0
*1
+2
 

)0
*1
+2
�
trainable_variables
regularization_losses
Alayer_metrics

Blayers
	variables
Clayer_regularization_losses
Dmetrics
Enon_trainable_variables

Fstates
 
 
 
�
trainable_variables
regularization_losses
Glayer_metrics

Hlayers
	variables
Imetrics
Jnon_trainable_variables
Klayer_regularization_losses
[Y
VARIABLE_VALUEdense_17/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_17/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
�
trainable_variables
regularization_losses
Llayer_metrics

Mlayers
	variables
Nmetrics
Onon_trainable_variables
Player_regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUElstm_34/lstm_cell_68/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%lstm_34/lstm_cell_68/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_34/lstm_cell_68/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUElstm_35/lstm_cell_69/kernel0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%lstm_35/lstm_cell_69/recurrent_kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_35/lstm_cell_69/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
3

Q0
 
 
 

&0
'1
(2
 

&0
'1
(2
�
2trainable_variables
3regularization_losses
Rlayer_metrics

Slayers
4	variables
Tmetrics
Unon_trainable_variables
Vlayer_regularization_losses
 

0
 
 
 
 
 

)0
*1
+2
 

)0
*1
+2
�
=trainable_variables
>regularization_losses
Wlayer_metrics

Xlayers
?	variables
Ymetrics
Znon_trainable_variables
[layer_regularization_losses
 

0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	\total
	]count
^	variables
_	keras_api
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

\0
]1

^	variables
~|
VARIABLE_VALUEAdam/dense_17/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_17/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/lstm_34/lstm_cell_68/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_34/lstm_cell_68/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE Adam/lstm_34/lstm_cell_68/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/lstm_35/lstm_cell_69/kernel/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_35/lstm_cell_69/recurrent_kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE Adam/lstm_35/lstm_cell_69/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_17/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_17/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/lstm_34/lstm_cell_68/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_34/lstm_cell_68/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE Adam/lstm_34/lstm_cell_68/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/lstm_35/lstm_cell_69/kernel/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_35/lstm_cell_69/recurrent_kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE Adam/lstm_35/lstm_cell_69/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_lstm_34_inputPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_34_inputlstm_34/lstm_cell_68/kernel%lstm_34/lstm_cell_68/recurrent_kernellstm_34/lstm_cell_68/biaslstm_35/lstm_cell_69/kernel%lstm_35/lstm_cell_69/recurrent_kernellstm_35/lstm_cell_69/biasdense_17/kerneldense_17/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_566045
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_17/kernel/Read/ReadVariableOp!dense_17/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_34/lstm_cell_68/kernel/Read/ReadVariableOp9lstm_34/lstm_cell_68/recurrent_kernel/Read/ReadVariableOp-lstm_34/lstm_cell_68/bias/Read/ReadVariableOp/lstm_35/lstm_cell_69/kernel/Read/ReadVariableOp9lstm_35/lstm_cell_69/recurrent_kernel/Read/ReadVariableOp-lstm_35/lstm_cell_69/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_17/kernel/m/Read/ReadVariableOp(Adam/dense_17/bias/m/Read/ReadVariableOp6Adam/lstm_34/lstm_cell_68/kernel/m/Read/ReadVariableOp@Adam/lstm_34/lstm_cell_68/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_34/lstm_cell_68/bias/m/Read/ReadVariableOp6Adam/lstm_35/lstm_cell_69/kernel/m/Read/ReadVariableOp@Adam/lstm_35/lstm_cell_69/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_35/lstm_cell_69/bias/m/Read/ReadVariableOp*Adam/dense_17/kernel/v/Read/ReadVariableOp(Adam/dense_17/bias/v/Read/ReadVariableOp6Adam/lstm_34/lstm_cell_68/kernel/v/Read/ReadVariableOp@Adam/lstm_34/lstm_cell_68/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_34/lstm_cell_68/bias/v/Read/ReadVariableOp6Adam/lstm_35/lstm_cell_69/kernel/v/Read/ReadVariableOp@Adam/lstm_35/lstm_cell_69/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_35/lstm_cell_69/bias/v/Read/ReadVariableOpConst*,
Tin%
#2!	*
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
__inference__traced_save_568358
�	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_17/kerneldense_17/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_34/lstm_cell_68/kernel%lstm_34/lstm_cell_68/recurrent_kernellstm_34/lstm_cell_68/biaslstm_35/lstm_cell_69/kernel%lstm_35/lstm_cell_69/recurrent_kernellstm_35/lstm_cell_69/biastotalcountAdam/dense_17/kernel/mAdam/dense_17/bias/m"Adam/lstm_34/lstm_cell_68/kernel/m,Adam/lstm_34/lstm_cell_68/recurrent_kernel/m Adam/lstm_34/lstm_cell_68/bias/m"Adam/lstm_35/lstm_cell_69/kernel/m,Adam/lstm_35/lstm_cell_69/recurrent_kernel/m Adam/lstm_35/lstm_cell_69/bias/mAdam/dense_17/kernel/vAdam/dense_17/bias/v"Adam/lstm_34/lstm_cell_68/kernel/v,Adam/lstm_34/lstm_cell_68/recurrent_kernel/v Adam/lstm_34/lstm_cell_68/bias/v"Adam/lstm_35/lstm_cell_69/kernel/v,Adam/lstm_35/lstm_cell_69/recurrent_kernel/v Adam/lstm_35/lstm_cell_69/bias/v*+
Tin$
"2 *
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
"__inference__traced_restore_568461��#
��
�
I__inference_sequential_17_layer_call_and_return_conditional_losses_566704

inputsF
3lstm_34_lstm_cell_68_matmul_readvariableop_resource:	�H
5lstm_34_lstm_cell_68_matmul_1_readvariableop_resource:	@�C
4lstm_34_lstm_cell_68_biasadd_readvariableop_resource:	�F
3lstm_35_lstm_cell_69_matmul_readvariableop_resource:	@�H
5lstm_35_lstm_cell_69_matmul_1_readvariableop_resource:	 �C
4lstm_35_lstm_cell_69_biasadd_readvariableop_resource:	�9
'dense_17_matmul_readvariableop_resource: 6
(dense_17_biasadd_readvariableop_resource:
identity��dense_17/BiasAdd/ReadVariableOp�dense_17/MatMul/ReadVariableOp�+lstm_34/lstm_cell_68/BiasAdd/ReadVariableOp�*lstm_34/lstm_cell_68/MatMul/ReadVariableOp�,lstm_34/lstm_cell_68/MatMul_1/ReadVariableOp�lstm_34/while�+lstm_35/lstm_cell_69/BiasAdd/ReadVariableOp�*lstm_35/lstm_cell_69/MatMul/ReadVariableOp�,lstm_35/lstm_cell_69/MatMul_1/ReadVariableOp�lstm_35/whileT
lstm_34/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_34/Shape�
lstm_34/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_34/strided_slice/stack�
lstm_34/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_34/strided_slice/stack_1�
lstm_34/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_34/strided_slice/stack_2�
lstm_34/strided_sliceStridedSlicelstm_34/Shape:output:0$lstm_34/strided_slice/stack:output:0&lstm_34/strided_slice/stack_1:output:0&lstm_34/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_34/strided_slicel
lstm_34/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_34/zeros/mul/y�
lstm_34/zeros/mulMullstm_34/strided_slice:output:0lstm_34/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_34/zeros/mulo
lstm_34/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_34/zeros/Less/y�
lstm_34/zeros/LessLesslstm_34/zeros/mul:z:0lstm_34/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_34/zeros/Lessr
lstm_34/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_34/zeros/packed/1�
lstm_34/zeros/packedPacklstm_34/strided_slice:output:0lstm_34/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_34/zeros/packedo
lstm_34/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_34/zeros/Const�
lstm_34/zerosFilllstm_34/zeros/packed:output:0lstm_34/zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
lstm_34/zerosp
lstm_34/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_34/zeros_1/mul/y�
lstm_34/zeros_1/mulMullstm_34/strided_slice:output:0lstm_34/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_34/zeros_1/muls
lstm_34/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_34/zeros_1/Less/y�
lstm_34/zeros_1/LessLesslstm_34/zeros_1/mul:z:0lstm_34/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_34/zeros_1/Lessv
lstm_34/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_34/zeros_1/packed/1�
lstm_34/zeros_1/packedPacklstm_34/strided_slice:output:0!lstm_34/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_34/zeros_1/packeds
lstm_34/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_34/zeros_1/Const�
lstm_34/zeros_1Filllstm_34/zeros_1/packed:output:0lstm_34/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@2
lstm_34/zeros_1�
lstm_34/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_34/transpose/perm�
lstm_34/transpose	Transposeinputslstm_34/transpose/perm:output:0*
T0*+
_output_shapes
:���������2
lstm_34/transposeg
lstm_34/Shape_1Shapelstm_34/transpose:y:0*
T0*
_output_shapes
:2
lstm_34/Shape_1�
lstm_34/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_34/strided_slice_1/stack�
lstm_34/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_34/strided_slice_1/stack_1�
lstm_34/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_34/strided_slice_1/stack_2�
lstm_34/strided_slice_1StridedSlicelstm_34/Shape_1:output:0&lstm_34/strided_slice_1/stack:output:0(lstm_34/strided_slice_1/stack_1:output:0(lstm_34/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_34/strided_slice_1�
#lstm_34/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2%
#lstm_34/TensorArrayV2/element_shape�
lstm_34/TensorArrayV2TensorListReserve,lstm_34/TensorArrayV2/element_shape:output:0 lstm_34/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_34/TensorArrayV2�
=lstm_34/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2?
=lstm_34/TensorArrayUnstack/TensorListFromTensor/element_shape�
/lstm_34/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_34/transpose:y:0Flstm_34/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_34/TensorArrayUnstack/TensorListFromTensor�
lstm_34/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_34/strided_slice_2/stack�
lstm_34/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_34/strided_slice_2/stack_1�
lstm_34/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_34/strided_slice_2/stack_2�
lstm_34/strided_slice_2StridedSlicelstm_34/transpose:y:0&lstm_34/strided_slice_2/stack:output:0(lstm_34/strided_slice_2/stack_1:output:0(lstm_34/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
lstm_34/strided_slice_2�
*lstm_34/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp3lstm_34_lstm_cell_68_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02,
*lstm_34/lstm_cell_68/MatMul/ReadVariableOp�
lstm_34/lstm_cell_68/MatMulMatMul lstm_34/strided_slice_2:output:02lstm_34/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_34/lstm_cell_68/MatMul�
,lstm_34/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp5lstm_34_lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype02.
,lstm_34/lstm_cell_68/MatMul_1/ReadVariableOp�
lstm_34/lstm_cell_68/MatMul_1MatMullstm_34/zeros:output:04lstm_34/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_34/lstm_cell_68/MatMul_1�
lstm_34/lstm_cell_68/addAddV2%lstm_34/lstm_cell_68/MatMul:product:0'lstm_34/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_34/lstm_cell_68/add�
+lstm_34/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp4lstm_34_lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02-
+lstm_34/lstm_cell_68/BiasAdd/ReadVariableOp�
lstm_34/lstm_cell_68/BiasAddBiasAddlstm_34/lstm_cell_68/add:z:03lstm_34/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_34/lstm_cell_68/BiasAdd�
$lstm_34/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_34/lstm_cell_68/split/split_dim�
lstm_34/lstm_cell_68/splitSplit-lstm_34/lstm_cell_68/split/split_dim:output:0%lstm_34/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
lstm_34/lstm_cell_68/split�
lstm_34/lstm_cell_68/SigmoidSigmoid#lstm_34/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������@2
lstm_34/lstm_cell_68/Sigmoid�
lstm_34/lstm_cell_68/Sigmoid_1Sigmoid#lstm_34/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������@2 
lstm_34/lstm_cell_68/Sigmoid_1�
lstm_34/lstm_cell_68/mulMul"lstm_34/lstm_cell_68/Sigmoid_1:y:0lstm_34/zeros_1:output:0*
T0*'
_output_shapes
:���������@2
lstm_34/lstm_cell_68/mul�
lstm_34/lstm_cell_68/ReluRelu#lstm_34/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������@2
lstm_34/lstm_cell_68/Relu�
lstm_34/lstm_cell_68/mul_1Mul lstm_34/lstm_cell_68/Sigmoid:y:0'lstm_34/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������@2
lstm_34/lstm_cell_68/mul_1�
lstm_34/lstm_cell_68/add_1AddV2lstm_34/lstm_cell_68/mul:z:0lstm_34/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_34/lstm_cell_68/add_1�
lstm_34/lstm_cell_68/Sigmoid_2Sigmoid#lstm_34/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������@2 
lstm_34/lstm_cell_68/Sigmoid_2�
lstm_34/lstm_cell_68/Relu_1Relulstm_34/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_34/lstm_cell_68/Relu_1�
lstm_34/lstm_cell_68/mul_2Mul"lstm_34/lstm_cell_68/Sigmoid_2:y:0)lstm_34/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
lstm_34/lstm_cell_68/mul_2�
%lstm_34/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2'
%lstm_34/TensorArrayV2_1/element_shape�
lstm_34/TensorArrayV2_1TensorListReserve.lstm_34/TensorArrayV2_1/element_shape:output:0 lstm_34/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_34/TensorArrayV2_1^
lstm_34/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_34/time�
 lstm_34/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2"
 lstm_34/while/maximum_iterationsz
lstm_34/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_34/while/loop_counter�
lstm_34/whileWhile#lstm_34/while/loop_counter:output:0)lstm_34/while/maximum_iterations:output:0lstm_34/time:output:0 lstm_34/TensorArrayV2_1:handle:0lstm_34/zeros:output:0lstm_34/zeros_1:output:0 lstm_34/strided_slice_1:output:0?lstm_34/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_34_lstm_cell_68_matmul_readvariableop_resource5lstm_34_lstm_cell_68_matmul_1_readvariableop_resource4lstm_34_lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������@:���������@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_34_while_body_566459*%
condR
lstm_34_while_cond_566458*K
output_shapes:
8: : : : :���������@:���������@: : : : : *
parallel_iterations 2
lstm_34/while�
8lstm_34/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2:
8lstm_34/TensorArrayV2Stack/TensorListStack/element_shape�
*lstm_34/TensorArrayV2Stack/TensorListStackTensorListStacklstm_34/while:output:3Alstm_34/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype02,
*lstm_34/TensorArrayV2Stack/TensorListStack�
lstm_34/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
lstm_34/strided_slice_3/stack�
lstm_34/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_34/strided_slice_3/stack_1�
lstm_34/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_34/strided_slice_3/stack_2�
lstm_34/strided_slice_3StridedSlice3lstm_34/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_34/strided_slice_3/stack:output:0(lstm_34/strided_slice_3/stack_1:output:0(lstm_34/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
lstm_34/strided_slice_3�
lstm_34/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_34/transpose_1/perm�
lstm_34/transpose_1	Transpose3lstm_34/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_34/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@2
lstm_34/transpose_1v
lstm_34/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_34/runtimee
lstm_35/ShapeShapelstm_34/transpose_1:y:0*
T0*
_output_shapes
:2
lstm_35/Shape�
lstm_35/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_35/strided_slice/stack�
lstm_35/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_35/strided_slice/stack_1�
lstm_35/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_35/strided_slice/stack_2�
lstm_35/strided_sliceStridedSlicelstm_35/Shape:output:0$lstm_35/strided_slice/stack:output:0&lstm_35/strided_slice/stack_1:output:0&lstm_35/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_35/strided_slicel
lstm_35/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_35/zeros/mul/y�
lstm_35/zeros/mulMullstm_35/strided_slice:output:0lstm_35/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_35/zeros/mulo
lstm_35/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_35/zeros/Less/y�
lstm_35/zeros/LessLesslstm_35/zeros/mul:z:0lstm_35/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_35/zeros/Lessr
lstm_35/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_35/zeros/packed/1�
lstm_35/zeros/packedPacklstm_35/strided_slice:output:0lstm_35/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_35/zeros/packedo
lstm_35/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_35/zeros/Const�
lstm_35/zerosFilllstm_35/zeros/packed:output:0lstm_35/zeros/Const:output:0*
T0*'
_output_shapes
:��������� 2
lstm_35/zerosp
lstm_35/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_35/zeros_1/mul/y�
lstm_35/zeros_1/mulMullstm_35/strided_slice:output:0lstm_35/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_35/zeros_1/muls
lstm_35/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_35/zeros_1/Less/y�
lstm_35/zeros_1/LessLesslstm_35/zeros_1/mul:z:0lstm_35/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_35/zeros_1/Lessv
lstm_35/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_35/zeros_1/packed/1�
lstm_35/zeros_1/packedPacklstm_35/strided_slice:output:0!lstm_35/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_35/zeros_1/packeds
lstm_35/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_35/zeros_1/Const�
lstm_35/zeros_1Filllstm_35/zeros_1/packed:output:0lstm_35/zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� 2
lstm_35/zeros_1�
lstm_35/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_35/transpose/perm�
lstm_35/transpose	Transposelstm_34/transpose_1:y:0lstm_35/transpose/perm:output:0*
T0*+
_output_shapes
:���������@2
lstm_35/transposeg
lstm_35/Shape_1Shapelstm_35/transpose:y:0*
T0*
_output_shapes
:2
lstm_35/Shape_1�
lstm_35/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_35/strided_slice_1/stack�
lstm_35/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_35/strided_slice_1/stack_1�
lstm_35/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_35/strided_slice_1/stack_2�
lstm_35/strided_slice_1StridedSlicelstm_35/Shape_1:output:0&lstm_35/strided_slice_1/stack:output:0(lstm_35/strided_slice_1/stack_1:output:0(lstm_35/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_35/strided_slice_1�
#lstm_35/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2%
#lstm_35/TensorArrayV2/element_shape�
lstm_35/TensorArrayV2TensorListReserve,lstm_35/TensorArrayV2/element_shape:output:0 lstm_35/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_35/TensorArrayV2�
=lstm_35/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2?
=lstm_35/TensorArrayUnstack/TensorListFromTensor/element_shape�
/lstm_35/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_35/transpose:y:0Flstm_35/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_35/TensorArrayUnstack/TensorListFromTensor�
lstm_35/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_35/strided_slice_2/stack�
lstm_35/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_35/strided_slice_2/stack_1�
lstm_35/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_35/strided_slice_2/stack_2�
lstm_35/strided_slice_2StridedSlicelstm_35/transpose:y:0&lstm_35/strided_slice_2/stack:output:0(lstm_35/strided_slice_2/stack_1:output:0(lstm_35/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
lstm_35/strided_slice_2�
*lstm_35/lstm_cell_69/MatMul/ReadVariableOpReadVariableOp3lstm_35_lstm_cell_69_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype02,
*lstm_35/lstm_cell_69/MatMul/ReadVariableOp�
lstm_35/lstm_cell_69/MatMulMatMul lstm_35/strided_slice_2:output:02lstm_35/lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_35/lstm_cell_69/MatMul�
,lstm_35/lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOp5lstm_35_lstm_cell_69_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02.
,lstm_35/lstm_cell_69/MatMul_1/ReadVariableOp�
lstm_35/lstm_cell_69/MatMul_1MatMullstm_35/zeros:output:04lstm_35/lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_35/lstm_cell_69/MatMul_1�
lstm_35/lstm_cell_69/addAddV2%lstm_35/lstm_cell_69/MatMul:product:0'lstm_35/lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_35/lstm_cell_69/add�
+lstm_35/lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOp4lstm_35_lstm_cell_69_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02-
+lstm_35/lstm_cell_69/BiasAdd/ReadVariableOp�
lstm_35/lstm_cell_69/BiasAddBiasAddlstm_35/lstm_cell_69/add:z:03lstm_35/lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_35/lstm_cell_69/BiasAdd�
$lstm_35/lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_35/lstm_cell_69/split/split_dim�
lstm_35/lstm_cell_69/splitSplit-lstm_35/lstm_cell_69/split/split_dim:output:0%lstm_35/lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
lstm_35/lstm_cell_69/split�
lstm_35/lstm_cell_69/SigmoidSigmoid#lstm_35/lstm_cell_69/split:output:0*
T0*'
_output_shapes
:��������� 2
lstm_35/lstm_cell_69/Sigmoid�
lstm_35/lstm_cell_69/Sigmoid_1Sigmoid#lstm_35/lstm_cell_69/split:output:1*
T0*'
_output_shapes
:��������� 2 
lstm_35/lstm_cell_69/Sigmoid_1�
lstm_35/lstm_cell_69/mulMul"lstm_35/lstm_cell_69/Sigmoid_1:y:0lstm_35/zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
lstm_35/lstm_cell_69/mul�
lstm_35/lstm_cell_69/ReluRelu#lstm_35/lstm_cell_69/split:output:2*
T0*'
_output_shapes
:��������� 2
lstm_35/lstm_cell_69/Relu�
lstm_35/lstm_cell_69/mul_1Mul lstm_35/lstm_cell_69/Sigmoid:y:0'lstm_35/lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:��������� 2
lstm_35/lstm_cell_69/mul_1�
lstm_35/lstm_cell_69/add_1AddV2lstm_35/lstm_cell_69/mul:z:0lstm_35/lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
lstm_35/lstm_cell_69/add_1�
lstm_35/lstm_cell_69/Sigmoid_2Sigmoid#lstm_35/lstm_cell_69/split:output:3*
T0*'
_output_shapes
:��������� 2 
lstm_35/lstm_cell_69/Sigmoid_2�
lstm_35/lstm_cell_69/Relu_1Relulstm_35/lstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:��������� 2
lstm_35/lstm_cell_69/Relu_1�
lstm_35/lstm_cell_69/mul_2Mul"lstm_35/lstm_cell_69/Sigmoid_2:y:0)lstm_35/lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2
lstm_35/lstm_cell_69/mul_2�
%lstm_35/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2'
%lstm_35/TensorArrayV2_1/element_shape�
lstm_35/TensorArrayV2_1TensorListReserve.lstm_35/TensorArrayV2_1/element_shape:output:0 lstm_35/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_35/TensorArrayV2_1^
lstm_35/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_35/time�
 lstm_35/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2"
 lstm_35/while/maximum_iterationsz
lstm_35/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_35/while/loop_counter�
lstm_35/whileWhile#lstm_35/while/loop_counter:output:0)lstm_35/while/maximum_iterations:output:0lstm_35/time:output:0 lstm_35/TensorArrayV2_1:handle:0lstm_35/zeros:output:0lstm_35/zeros_1:output:0 lstm_35/strided_slice_1:output:0?lstm_35/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_35_lstm_cell_69_matmul_readvariableop_resource5lstm_35_lstm_cell_69_matmul_1_readvariableop_resource4lstm_35_lstm_cell_69_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_35_while_body_566606*%
condR
lstm_35_while_cond_566605*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations 2
lstm_35/while�
8lstm_35/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2:
8lstm_35/TensorArrayV2Stack/TensorListStack/element_shape�
*lstm_35/TensorArrayV2Stack/TensorListStackTensorListStacklstm_35/while:output:3Alstm_35/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype02,
*lstm_35/TensorArrayV2Stack/TensorListStack�
lstm_35/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
lstm_35/strided_slice_3/stack�
lstm_35/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_35/strided_slice_3/stack_1�
lstm_35/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_35/strided_slice_3/stack_2�
lstm_35/strided_slice_3StridedSlice3lstm_35/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_35/strided_slice_3/stack:output:0(lstm_35/strided_slice_3/stack_1:output:0(lstm_35/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
lstm_35/strided_slice_3�
lstm_35/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_35/transpose_1/perm�
lstm_35/transpose_1	Transpose3lstm_35/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_35/transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� 2
lstm_35/transpose_1v
lstm_35/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_35/runtimey
dropout_17/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
dropout_17/dropout/Const�
dropout_17/dropout/MulMul lstm_35/strided_slice_3:output:0!dropout_17/dropout/Const:output:0*
T0*'
_output_shapes
:��������� 2
dropout_17/dropout/Mul�
dropout_17/dropout/ShapeShape lstm_35/strided_slice_3:output:0*
T0*
_output_shapes
:2
dropout_17/dropout/Shape�
/dropout_17/dropout/random_uniform/RandomUniformRandomUniform!dropout_17/dropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype021
/dropout_17/dropout/random_uniform/RandomUniform�
!dropout_17/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>2#
!dropout_17/dropout/GreaterEqual/y�
dropout_17/dropout/GreaterEqualGreaterEqual8dropout_17/dropout/random_uniform/RandomUniform:output:0*dropout_17/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� 2!
dropout_17/dropout/GreaterEqual�
dropout_17/dropout/CastCast#dropout_17/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� 2
dropout_17/dropout/Cast�
dropout_17/dropout/Mul_1Muldropout_17/dropout/Mul:z:0dropout_17/dropout/Cast:y:0*
T0*'
_output_shapes
:��������� 2
dropout_17/dropout/Mul_1�
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_17/MatMul/ReadVariableOp�
dense_17/MatMulMatMuldropout_17/dropout/Mul_1:z:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_17/MatMul�
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_17/BiasAdd/ReadVariableOp�
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_17/BiasAddt
IdentityIdentitydense_17/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp,^lstm_34/lstm_cell_68/BiasAdd/ReadVariableOp+^lstm_34/lstm_cell_68/MatMul/ReadVariableOp-^lstm_34/lstm_cell_68/MatMul_1/ReadVariableOp^lstm_34/while,^lstm_35/lstm_cell_69/BiasAdd/ReadVariableOp+^lstm_35/lstm_cell_69/MatMul/ReadVariableOp-^lstm_35/lstm_cell_69/MatMul_1/ReadVariableOp^lstm_35/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp2Z
+lstm_34/lstm_cell_68/BiasAdd/ReadVariableOp+lstm_34/lstm_cell_68/BiasAdd/ReadVariableOp2X
*lstm_34/lstm_cell_68/MatMul/ReadVariableOp*lstm_34/lstm_cell_68/MatMul/ReadVariableOp2\
,lstm_34/lstm_cell_68/MatMul_1/ReadVariableOp,lstm_34/lstm_cell_68/MatMul_1/ReadVariableOp2
lstm_34/whilelstm_34/while2Z
+lstm_35/lstm_cell_69/BiasAdd/ReadVariableOp+lstm_35/lstm_cell_69/BiasAdd/ReadVariableOp2X
*lstm_35/lstm_cell_69/MatMul/ReadVariableOp*lstm_35/lstm_cell_69/MatMul/ReadVariableOp2\
,lstm_35/lstm_cell_69/MatMul_1/ReadVariableOp,lstm_35/lstm_cell_69/MatMul_1/ReadVariableOp2
lstm_35/whilelstm_35/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
lstm_34_while_cond_566458,
(lstm_34_while_lstm_34_while_loop_counter2
.lstm_34_while_lstm_34_while_maximum_iterations
lstm_34_while_placeholder
lstm_34_while_placeholder_1
lstm_34_while_placeholder_2
lstm_34_while_placeholder_3.
*lstm_34_while_less_lstm_34_strided_slice_1D
@lstm_34_while_lstm_34_while_cond_566458___redundant_placeholder0D
@lstm_34_while_lstm_34_while_cond_566458___redundant_placeholder1D
@lstm_34_while_lstm_34_while_cond_566458___redundant_placeholder2D
@lstm_34_while_lstm_34_while_cond_566458___redundant_placeholder3
lstm_34_while_identity
�
lstm_34/while/LessLesslstm_34_while_placeholder*lstm_34_while_less_lstm_34_strided_slice_1*
T0*
_output_shapes
: 2
lstm_34/while/Lessu
lstm_34/while/IdentityIdentitylstm_34/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_34/while/Identity"9
lstm_34_while_identitylstm_34/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������@:���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�
�
-__inference_lstm_cell_68_layer_call_fn_568063

inputs
states_0
states_1
unknown:	�
	unknown_0:	@�
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������@:���������@:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_5639512
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������@2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������@2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������@:���������@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/1
�F
�
C__inference_lstm_35_layer_call_and_return_conditional_losses_564664

inputs&
lstm_cell_69_564582:	@�&
lstm_cell_69_564584:	 �"
lstm_cell_69_564586:	�
identity��$lstm_cell_69/StatefulPartitionedCall�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_2�
$lstm_cell_69/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_69_564582lstm_cell_69_564584lstm_cell_69_564586*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_69_layer_call_and_return_conditional_losses_5645812&
$lstm_cell_69/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_69_564582lstm_cell_69_564584lstm_cell_69_564586*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_564595*
condR
while_cond_564594*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������ *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:��������� 2

Identity}
NoOpNoOp%^lstm_cell_69/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������@: : : 2L
$lstm_cell_69/StatefulPartitionedCall$lstm_cell_69/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������@
 
_user_specified_nameinputs
�^
�
'sequential_17_lstm_35_while_body_563785H
Dsequential_17_lstm_35_while_sequential_17_lstm_35_while_loop_counterN
Jsequential_17_lstm_35_while_sequential_17_lstm_35_while_maximum_iterations+
'sequential_17_lstm_35_while_placeholder-
)sequential_17_lstm_35_while_placeholder_1-
)sequential_17_lstm_35_while_placeholder_2-
)sequential_17_lstm_35_while_placeholder_3G
Csequential_17_lstm_35_while_sequential_17_lstm_35_strided_slice_1_0�
sequential_17_lstm_35_while_tensorarrayv2read_tensorlistgetitem_sequential_17_lstm_35_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_17_lstm_35_while_lstm_cell_69_matmul_readvariableop_resource_0:	@�^
Ksequential_17_lstm_35_while_lstm_cell_69_matmul_1_readvariableop_resource_0:	 �Y
Jsequential_17_lstm_35_while_lstm_cell_69_biasadd_readvariableop_resource_0:	�(
$sequential_17_lstm_35_while_identity*
&sequential_17_lstm_35_while_identity_1*
&sequential_17_lstm_35_while_identity_2*
&sequential_17_lstm_35_while_identity_3*
&sequential_17_lstm_35_while_identity_4*
&sequential_17_lstm_35_while_identity_5E
Asequential_17_lstm_35_while_sequential_17_lstm_35_strided_slice_1�
}sequential_17_lstm_35_while_tensorarrayv2read_tensorlistgetitem_sequential_17_lstm_35_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_17_lstm_35_while_lstm_cell_69_matmul_readvariableop_resource:	@�\
Isequential_17_lstm_35_while_lstm_cell_69_matmul_1_readvariableop_resource:	 �W
Hsequential_17_lstm_35_while_lstm_cell_69_biasadd_readvariableop_resource:	���?sequential_17/lstm_35/while/lstm_cell_69/BiasAdd/ReadVariableOp�>sequential_17/lstm_35/while/lstm_cell_69/MatMul/ReadVariableOp�@sequential_17/lstm_35/while/lstm_cell_69/MatMul_1/ReadVariableOp�
Msequential_17/lstm_35/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2O
Msequential_17/lstm_35/while/TensorArrayV2Read/TensorListGetItem/element_shape�
?sequential_17/lstm_35/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_17_lstm_35_while_tensorarrayv2read_tensorlistgetitem_sequential_17_lstm_35_tensorarrayunstack_tensorlistfromtensor_0'sequential_17_lstm_35_while_placeholderVsequential_17/lstm_35/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype02A
?sequential_17/lstm_35/while/TensorArrayV2Read/TensorListGetItem�
>sequential_17/lstm_35/while/lstm_cell_69/MatMul/ReadVariableOpReadVariableOpIsequential_17_lstm_35_while_lstm_cell_69_matmul_readvariableop_resource_0*
_output_shapes
:	@�*
dtype02@
>sequential_17/lstm_35/while/lstm_cell_69/MatMul/ReadVariableOp�
/sequential_17/lstm_35/while/lstm_cell_69/MatMulMatMulFsequential_17/lstm_35/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_17/lstm_35/while/lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������21
/sequential_17/lstm_35/while/lstm_cell_69/MatMul�
@sequential_17/lstm_35/while/lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOpKsequential_17_lstm_35_while_lstm_cell_69_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02B
@sequential_17/lstm_35/while/lstm_cell_69/MatMul_1/ReadVariableOp�
1sequential_17/lstm_35/while/lstm_cell_69/MatMul_1MatMul)sequential_17_lstm_35_while_placeholder_2Hsequential_17/lstm_35/while/lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������23
1sequential_17/lstm_35/while/lstm_cell_69/MatMul_1�
,sequential_17/lstm_35/while/lstm_cell_69/addAddV29sequential_17/lstm_35/while/lstm_cell_69/MatMul:product:0;sequential_17/lstm_35/while/lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:����������2.
,sequential_17/lstm_35/while/lstm_cell_69/add�
?sequential_17/lstm_35/while/lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOpJsequential_17_lstm_35_while_lstm_cell_69_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02A
?sequential_17/lstm_35/while/lstm_cell_69/BiasAdd/ReadVariableOp�
0sequential_17/lstm_35/while/lstm_cell_69/BiasAddBiasAdd0sequential_17/lstm_35/while/lstm_cell_69/add:z:0Gsequential_17/lstm_35/while/lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������22
0sequential_17/lstm_35/while/lstm_cell_69/BiasAdd�
8sequential_17/lstm_35/while/lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_17/lstm_35/while/lstm_cell_69/split/split_dim�
.sequential_17/lstm_35/while/lstm_cell_69/splitSplitAsequential_17/lstm_35/while/lstm_cell_69/split/split_dim:output:09sequential_17/lstm_35/while/lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split20
.sequential_17/lstm_35/while/lstm_cell_69/split�
0sequential_17/lstm_35/while/lstm_cell_69/SigmoidSigmoid7sequential_17/lstm_35/while/lstm_cell_69/split:output:0*
T0*'
_output_shapes
:��������� 22
0sequential_17/lstm_35/while/lstm_cell_69/Sigmoid�
2sequential_17/lstm_35/while/lstm_cell_69/Sigmoid_1Sigmoid7sequential_17/lstm_35/while/lstm_cell_69/split:output:1*
T0*'
_output_shapes
:��������� 24
2sequential_17/lstm_35/while/lstm_cell_69/Sigmoid_1�
,sequential_17/lstm_35/while/lstm_cell_69/mulMul6sequential_17/lstm_35/while/lstm_cell_69/Sigmoid_1:y:0)sequential_17_lstm_35_while_placeholder_3*
T0*'
_output_shapes
:��������� 2.
,sequential_17/lstm_35/while/lstm_cell_69/mul�
-sequential_17/lstm_35/while/lstm_cell_69/ReluRelu7sequential_17/lstm_35/while/lstm_cell_69/split:output:2*
T0*'
_output_shapes
:��������� 2/
-sequential_17/lstm_35/while/lstm_cell_69/Relu�
.sequential_17/lstm_35/while/lstm_cell_69/mul_1Mul4sequential_17/lstm_35/while/lstm_cell_69/Sigmoid:y:0;sequential_17/lstm_35/while/lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:��������� 20
.sequential_17/lstm_35/while/lstm_cell_69/mul_1�
.sequential_17/lstm_35/while/lstm_cell_69/add_1AddV20sequential_17/lstm_35/while/lstm_cell_69/mul:z:02sequential_17/lstm_35/while/lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:��������� 20
.sequential_17/lstm_35/while/lstm_cell_69/add_1�
2sequential_17/lstm_35/while/lstm_cell_69/Sigmoid_2Sigmoid7sequential_17/lstm_35/while/lstm_cell_69/split:output:3*
T0*'
_output_shapes
:��������� 24
2sequential_17/lstm_35/while/lstm_cell_69/Sigmoid_2�
/sequential_17/lstm_35/while/lstm_cell_69/Relu_1Relu2sequential_17/lstm_35/while/lstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:��������� 21
/sequential_17/lstm_35/while/lstm_cell_69/Relu_1�
.sequential_17/lstm_35/while/lstm_cell_69/mul_2Mul6sequential_17/lstm_35/while/lstm_cell_69/Sigmoid_2:y:0=sequential_17/lstm_35/while/lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 20
.sequential_17/lstm_35/while/lstm_cell_69/mul_2�
@sequential_17/lstm_35/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_17_lstm_35_while_placeholder_1'sequential_17_lstm_35_while_placeholder2sequential_17/lstm_35/while/lstm_cell_69/mul_2:z:0*
_output_shapes
: *
element_dtype02B
@sequential_17/lstm_35/while/TensorArrayV2Write/TensorListSetItem�
!sequential_17/lstm_35/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_17/lstm_35/while/add/y�
sequential_17/lstm_35/while/addAddV2'sequential_17_lstm_35_while_placeholder*sequential_17/lstm_35/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_17/lstm_35/while/add�
#sequential_17/lstm_35/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_17/lstm_35/while/add_1/y�
!sequential_17/lstm_35/while/add_1AddV2Dsequential_17_lstm_35_while_sequential_17_lstm_35_while_loop_counter,sequential_17/lstm_35/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_17/lstm_35/while/add_1�
$sequential_17/lstm_35/while/IdentityIdentity%sequential_17/lstm_35/while/add_1:z:0!^sequential_17/lstm_35/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_17/lstm_35/while/Identity�
&sequential_17/lstm_35/while/Identity_1IdentityJsequential_17_lstm_35_while_sequential_17_lstm_35_while_maximum_iterations!^sequential_17/lstm_35/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_17/lstm_35/while/Identity_1�
&sequential_17/lstm_35/while/Identity_2Identity#sequential_17/lstm_35/while/add:z:0!^sequential_17/lstm_35/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_17/lstm_35/while/Identity_2�
&sequential_17/lstm_35/while/Identity_3IdentityPsequential_17/lstm_35/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_17/lstm_35/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_17/lstm_35/while/Identity_3�
&sequential_17/lstm_35/while/Identity_4Identity2sequential_17/lstm_35/while/lstm_cell_69/mul_2:z:0!^sequential_17/lstm_35/while/NoOp*
T0*'
_output_shapes
:��������� 2(
&sequential_17/lstm_35/while/Identity_4�
&sequential_17/lstm_35/while/Identity_5Identity2sequential_17/lstm_35/while/lstm_cell_69/add_1:z:0!^sequential_17/lstm_35/while/NoOp*
T0*'
_output_shapes
:��������� 2(
&sequential_17/lstm_35/while/Identity_5�
 sequential_17/lstm_35/while/NoOpNoOp@^sequential_17/lstm_35/while/lstm_cell_69/BiasAdd/ReadVariableOp?^sequential_17/lstm_35/while/lstm_cell_69/MatMul/ReadVariableOpA^sequential_17/lstm_35/while/lstm_cell_69/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2"
 sequential_17/lstm_35/while/NoOp"U
$sequential_17_lstm_35_while_identity-sequential_17/lstm_35/while/Identity:output:0"Y
&sequential_17_lstm_35_while_identity_1/sequential_17/lstm_35/while/Identity_1:output:0"Y
&sequential_17_lstm_35_while_identity_2/sequential_17/lstm_35/while/Identity_2:output:0"Y
&sequential_17_lstm_35_while_identity_3/sequential_17/lstm_35/while/Identity_3:output:0"Y
&sequential_17_lstm_35_while_identity_4/sequential_17/lstm_35/while/Identity_4:output:0"Y
&sequential_17_lstm_35_while_identity_5/sequential_17/lstm_35/while/Identity_5:output:0"�
Hsequential_17_lstm_35_while_lstm_cell_69_biasadd_readvariableop_resourceJsequential_17_lstm_35_while_lstm_cell_69_biasadd_readvariableop_resource_0"�
Isequential_17_lstm_35_while_lstm_cell_69_matmul_1_readvariableop_resourceKsequential_17_lstm_35_while_lstm_cell_69_matmul_1_readvariableop_resource_0"�
Gsequential_17_lstm_35_while_lstm_cell_69_matmul_readvariableop_resourceIsequential_17_lstm_35_while_lstm_cell_69_matmul_readvariableop_resource_0"�
Asequential_17_lstm_35_while_sequential_17_lstm_35_strided_slice_1Csequential_17_lstm_35_while_sequential_17_lstm_35_strided_slice_1_0"�
}sequential_17_lstm_35_while_tensorarrayv2read_tensorlistgetitem_sequential_17_lstm_35_tensorarrayunstack_tensorlistfromtensorsequential_17_lstm_35_while_tensorarrayv2read_tensorlistgetitem_sequential_17_lstm_35_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2�
?sequential_17/lstm_35/while/lstm_cell_69/BiasAdd/ReadVariableOp?sequential_17/lstm_35/while/lstm_cell_69/BiasAdd/ReadVariableOp2�
>sequential_17/lstm_35/while/lstm_cell_69/MatMul/ReadVariableOp>sequential_17/lstm_35/while/lstm_cell_69/MatMul/ReadVariableOp2�
@sequential_17/lstm_35/while/lstm_cell_69/MatMul_1/ReadVariableOp@sequential_17/lstm_35/while/lstm_cell_69/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_565787
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_565787___redundant_placeholder04
0while_while_cond_565787___redundant_placeholder14
0while_while_cond_565787___redundant_placeholder24
0while_while_cond_565787___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������@:���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�
�
I__inference_sequential_17_layer_call_and_return_conditional_losses_565483

inputs!
lstm_34_565294:	�!
lstm_34_565296:	@�
lstm_34_565298:	�!
lstm_35_565452:	@�!
lstm_35_565454:	 �
lstm_35_565456:	�!
dense_17_565477: 
dense_17_565479:
identity�� dense_17/StatefulPartitionedCall�lstm_34/StatefulPartitionedCall�lstm_35/StatefulPartitionedCall�
lstm_34/StatefulPartitionedCallStatefulPartitionedCallinputslstm_34_565294lstm_34_565296lstm_34_565298*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_34_layer_call_and_return_conditional_losses_5652932!
lstm_34/StatefulPartitionedCall�
lstm_35/StatefulPartitionedCallStatefulPartitionedCall(lstm_34/StatefulPartitionedCall:output:0lstm_35_565452lstm_35_565454lstm_35_565456*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_35_layer_call_and_return_conditional_losses_5654512!
lstm_35/StatefulPartitionedCall�
dropout_17/PartitionedCallPartitionedCall(lstm_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_17_layer_call_and_return_conditional_losses_5654642
dropout_17/PartitionedCall�
 dense_17/StatefulPartitionedCallStatefulPartitionedCall#dropout_17/PartitionedCall:output:0dense_17_565477dense_17_565479*
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
GPU 2J 8� *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_5654762"
 dense_17/StatefulPartitionedCall�
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp!^dense_17/StatefulPartitionedCall ^lstm_34/StatefulPartitionedCall ^lstm_35/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2B
lstm_34/StatefulPartitionedCalllstm_34/StatefulPartitionedCall2B
lstm_35/StatefulPartitionedCalllstm_35/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
I__inference_sequential_17_layer_call_and_return_conditional_losses_565928

inputs!
lstm_34_565907:	�!
lstm_34_565909:	@�
lstm_34_565911:	�!
lstm_35_565914:	@�!
lstm_35_565916:	 �
lstm_35_565918:	�!
dense_17_565922: 
dense_17_565924:
identity�� dense_17/StatefulPartitionedCall�"dropout_17/StatefulPartitionedCall�lstm_34/StatefulPartitionedCall�lstm_35/StatefulPartitionedCall�
lstm_34/StatefulPartitionedCallStatefulPartitionedCallinputslstm_34_565907lstm_34_565909lstm_34_565911*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_34_layer_call_and_return_conditional_losses_5658722!
lstm_34/StatefulPartitionedCall�
lstm_35/StatefulPartitionedCallStatefulPartitionedCall(lstm_34/StatefulPartitionedCall:output:0lstm_35_565914lstm_35_565916lstm_35_565918*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_35_layer_call_and_return_conditional_losses_5656992!
lstm_35/StatefulPartitionedCall�
"dropout_17/StatefulPartitionedCallStatefulPartitionedCall(lstm_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_17_layer_call_and_return_conditional_losses_5655322$
"dropout_17/StatefulPartitionedCall�
 dense_17/StatefulPartitionedCallStatefulPartitionedCall+dropout_17/StatefulPartitionedCall:output:0dense_17_565922dense_17_565924*
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
GPU 2J 8� *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_5654762"
 dense_17/StatefulPartitionedCall�
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp!^dense_17/StatefulPartitionedCall#^dropout_17/StatefulPartitionedCall ^lstm_34/StatefulPartitionedCall ^lstm_35/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2H
"dropout_17/StatefulPartitionedCall"dropout_17/StatefulPartitionedCall2B
lstm_34/StatefulPartitionedCalllstm_34/StatefulPartitionedCall2B
lstm_35/StatefulPartitionedCalllstm_35/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�?
�
while_body_565209
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_68_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_68_matmul_1_readvariableop_resource_0:	@�C
4while_lstm_cell_68_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_68_matmul_readvariableop_resource:	�F
3while_lstm_cell_68_matmul_1_readvariableop_resource:	@�A
2while_lstm_cell_68_biasadd_readvariableop_resource:	���)while/lstm_cell_68/BiasAdd/ReadVariableOp�(while/lstm_cell_68/MatMul/ReadVariableOp�*while/lstm_cell_68/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02*
(while/lstm_cell_68/MatMul/ReadVariableOp�
while/lstm_cell_68/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_68/MatMul�
*while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype02,
*while/lstm_cell_68/MatMul_1/ReadVariableOp�
while/lstm_cell_68/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_68/MatMul_1�
while/lstm_cell_68/addAddV2#while/lstm_cell_68/MatMul:product:0%while/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_68/add�
)while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_68/BiasAdd/ReadVariableOp�
while/lstm_cell_68/BiasAddBiasAddwhile/lstm_cell_68/add:z:01while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_68/BiasAdd�
"while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_68/split/split_dim�
while/lstm_cell_68/splitSplit+while/lstm_cell_68/split/split_dim:output:0#while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
while/lstm_cell_68/split�
while/lstm_cell_68/SigmoidSigmoid!while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/Sigmoid�
while/lstm_cell_68/Sigmoid_1Sigmoid!while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/Sigmoid_1�
while/lstm_cell_68/mulMul while/lstm_cell_68/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/mul�
while/lstm_cell_68/ReluRelu!while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/Relu�
while/lstm_cell_68/mul_1Mulwhile/lstm_cell_68/Sigmoid:y:0%while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/mul_1�
while/lstm_cell_68/add_1AddV2while/lstm_cell_68/mul:z:0while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/add_1�
while/lstm_cell_68/Sigmoid_2Sigmoid!while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/Sigmoid_2�
while/lstm_cell_68/Relu_1Reluwhile/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/Relu_1�
while/lstm_cell_68/mul_2Mul while/lstm_cell_68/Sigmoid_2:y:0'while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_68/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������@2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_68/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������@2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_68/BiasAdd/ReadVariableOp)^while/lstm_cell_68/MatMul/ReadVariableOp+^while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_68_biasadd_readvariableop_resource4while_lstm_cell_68_biasadd_readvariableop_resource_0"l
3while_lstm_cell_68_matmul_1_readvariableop_resource5while_lstm_cell_68_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_68_matmul_readvariableop_resource3while_lstm_cell_68_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2V
)while/lstm_cell_68/BiasAdd/ReadVariableOp)while/lstm_cell_68/BiasAdd/ReadVariableOp2T
(while/lstm_cell_68/MatMul/ReadVariableOp(while/lstm_cell_68/MatMul/ReadVariableOp2X
*while/lstm_cell_68/MatMul_1/ReadVariableOp*while/lstm_cell_68/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�?
�
while_body_566815
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_68_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_68_matmul_1_readvariableop_resource_0:	@�C
4while_lstm_cell_68_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_68_matmul_readvariableop_resource:	�F
3while_lstm_cell_68_matmul_1_readvariableop_resource:	@�A
2while_lstm_cell_68_biasadd_readvariableop_resource:	���)while/lstm_cell_68/BiasAdd/ReadVariableOp�(while/lstm_cell_68/MatMul/ReadVariableOp�*while/lstm_cell_68/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02*
(while/lstm_cell_68/MatMul/ReadVariableOp�
while/lstm_cell_68/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_68/MatMul�
*while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype02,
*while/lstm_cell_68/MatMul_1/ReadVariableOp�
while/lstm_cell_68/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_68/MatMul_1�
while/lstm_cell_68/addAddV2#while/lstm_cell_68/MatMul:product:0%while/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_68/add�
)while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_68/BiasAdd/ReadVariableOp�
while/lstm_cell_68/BiasAddBiasAddwhile/lstm_cell_68/add:z:01while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_68/BiasAdd�
"while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_68/split/split_dim�
while/lstm_cell_68/splitSplit+while/lstm_cell_68/split/split_dim:output:0#while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
while/lstm_cell_68/split�
while/lstm_cell_68/SigmoidSigmoid!while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/Sigmoid�
while/lstm_cell_68/Sigmoid_1Sigmoid!while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/Sigmoid_1�
while/lstm_cell_68/mulMul while/lstm_cell_68/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/mul�
while/lstm_cell_68/ReluRelu!while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/Relu�
while/lstm_cell_68/mul_1Mulwhile/lstm_cell_68/Sigmoid:y:0%while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/mul_1�
while/lstm_cell_68/add_1AddV2while/lstm_cell_68/mul:z:0while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/add_1�
while/lstm_cell_68/Sigmoid_2Sigmoid!while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/Sigmoid_2�
while/lstm_cell_68/Relu_1Reluwhile/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/Relu_1�
while/lstm_cell_68/mul_2Mul while/lstm_cell_68/Sigmoid_2:y:0'while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_68/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������@2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_68/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������@2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_68/BiasAdd/ReadVariableOp)^while/lstm_cell_68/MatMul/ReadVariableOp+^while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_68_biasadd_readvariableop_resource4while_lstm_cell_68_biasadd_readvariableop_resource_0"l
3while_lstm_cell_68_matmul_1_readvariableop_resource5while_lstm_cell_68_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_68_matmul_readvariableop_resource3while_lstm_cell_68_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2V
)while/lstm_cell_68/BiasAdd/ReadVariableOp)while/lstm_cell_68/BiasAdd/ReadVariableOp2T
(while/lstm_cell_68/MatMul/ReadVariableOp(while/lstm_cell_68/MatMul/ReadVariableOp2X
*while/lstm_cell_68/MatMul_1/ReadVariableOp*while/lstm_cell_68/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
ԓ
�	
!__inference__wrapped_model_563876
lstm_34_inputT
Asequential_17_lstm_34_lstm_cell_68_matmul_readvariableop_resource:	�V
Csequential_17_lstm_34_lstm_cell_68_matmul_1_readvariableop_resource:	@�Q
Bsequential_17_lstm_34_lstm_cell_68_biasadd_readvariableop_resource:	�T
Asequential_17_lstm_35_lstm_cell_69_matmul_readvariableop_resource:	@�V
Csequential_17_lstm_35_lstm_cell_69_matmul_1_readvariableop_resource:	 �Q
Bsequential_17_lstm_35_lstm_cell_69_biasadd_readvariableop_resource:	�G
5sequential_17_dense_17_matmul_readvariableop_resource: D
6sequential_17_dense_17_biasadd_readvariableop_resource:
identity��-sequential_17/dense_17/BiasAdd/ReadVariableOp�,sequential_17/dense_17/MatMul/ReadVariableOp�9sequential_17/lstm_34/lstm_cell_68/BiasAdd/ReadVariableOp�8sequential_17/lstm_34/lstm_cell_68/MatMul/ReadVariableOp�:sequential_17/lstm_34/lstm_cell_68/MatMul_1/ReadVariableOp�sequential_17/lstm_34/while�9sequential_17/lstm_35/lstm_cell_69/BiasAdd/ReadVariableOp�8sequential_17/lstm_35/lstm_cell_69/MatMul/ReadVariableOp�:sequential_17/lstm_35/lstm_cell_69/MatMul_1/ReadVariableOp�sequential_17/lstm_35/whilew
sequential_17/lstm_34/ShapeShapelstm_34_input*
T0*
_output_shapes
:2
sequential_17/lstm_34/Shape�
)sequential_17/lstm_34/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_17/lstm_34/strided_slice/stack�
+sequential_17/lstm_34/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_17/lstm_34/strided_slice/stack_1�
+sequential_17/lstm_34/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_17/lstm_34/strided_slice/stack_2�
#sequential_17/lstm_34/strided_sliceStridedSlice$sequential_17/lstm_34/Shape:output:02sequential_17/lstm_34/strided_slice/stack:output:04sequential_17/lstm_34/strided_slice/stack_1:output:04sequential_17/lstm_34/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_17/lstm_34/strided_slice�
!sequential_17/lstm_34/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2#
!sequential_17/lstm_34/zeros/mul/y�
sequential_17/lstm_34/zeros/mulMul,sequential_17/lstm_34/strided_slice:output:0*sequential_17/lstm_34/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_17/lstm_34/zeros/mul�
"sequential_17/lstm_34/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2$
"sequential_17/lstm_34/zeros/Less/y�
 sequential_17/lstm_34/zeros/LessLess#sequential_17/lstm_34/zeros/mul:z:0+sequential_17/lstm_34/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_17/lstm_34/zeros/Less�
$sequential_17/lstm_34/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2&
$sequential_17/lstm_34/zeros/packed/1�
"sequential_17/lstm_34/zeros/packedPack,sequential_17/lstm_34/strided_slice:output:0-sequential_17/lstm_34/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_17/lstm_34/zeros/packed�
!sequential_17/lstm_34/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_17/lstm_34/zeros/Const�
sequential_17/lstm_34/zerosFill+sequential_17/lstm_34/zeros/packed:output:0*sequential_17/lstm_34/zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
sequential_17/lstm_34/zeros�
#sequential_17/lstm_34/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2%
#sequential_17/lstm_34/zeros_1/mul/y�
!sequential_17/lstm_34/zeros_1/mulMul,sequential_17/lstm_34/strided_slice:output:0,sequential_17/lstm_34/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_17/lstm_34/zeros_1/mul�
$sequential_17/lstm_34/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2&
$sequential_17/lstm_34/zeros_1/Less/y�
"sequential_17/lstm_34/zeros_1/LessLess%sequential_17/lstm_34/zeros_1/mul:z:0-sequential_17/lstm_34/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_17/lstm_34/zeros_1/Less�
&sequential_17/lstm_34/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2(
&sequential_17/lstm_34/zeros_1/packed/1�
$sequential_17/lstm_34/zeros_1/packedPack,sequential_17/lstm_34/strided_slice:output:0/sequential_17/lstm_34/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_17/lstm_34/zeros_1/packed�
#sequential_17/lstm_34/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_17/lstm_34/zeros_1/Const�
sequential_17/lstm_34/zeros_1Fill-sequential_17/lstm_34/zeros_1/packed:output:0,sequential_17/lstm_34/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@2
sequential_17/lstm_34/zeros_1�
$sequential_17/lstm_34/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_17/lstm_34/transpose/perm�
sequential_17/lstm_34/transpose	Transposelstm_34_input-sequential_17/lstm_34/transpose/perm:output:0*
T0*+
_output_shapes
:���������2!
sequential_17/lstm_34/transpose�
sequential_17/lstm_34/Shape_1Shape#sequential_17/lstm_34/transpose:y:0*
T0*
_output_shapes
:2
sequential_17/lstm_34/Shape_1�
+sequential_17/lstm_34/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_17/lstm_34/strided_slice_1/stack�
-sequential_17/lstm_34/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_17/lstm_34/strided_slice_1/stack_1�
-sequential_17/lstm_34/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_17/lstm_34/strided_slice_1/stack_2�
%sequential_17/lstm_34/strided_slice_1StridedSlice&sequential_17/lstm_34/Shape_1:output:04sequential_17/lstm_34/strided_slice_1/stack:output:06sequential_17/lstm_34/strided_slice_1/stack_1:output:06sequential_17/lstm_34/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_17/lstm_34/strided_slice_1�
1sequential_17/lstm_34/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������23
1sequential_17/lstm_34/TensorArrayV2/element_shape�
#sequential_17/lstm_34/TensorArrayV2TensorListReserve:sequential_17/lstm_34/TensorArrayV2/element_shape:output:0.sequential_17/lstm_34/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_17/lstm_34/TensorArrayV2�
Ksequential_17/lstm_34/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2M
Ksequential_17/lstm_34/TensorArrayUnstack/TensorListFromTensor/element_shape�
=sequential_17/lstm_34/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_17/lstm_34/transpose:y:0Tsequential_17/lstm_34/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_17/lstm_34/TensorArrayUnstack/TensorListFromTensor�
+sequential_17/lstm_34/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_17/lstm_34/strided_slice_2/stack�
-sequential_17/lstm_34/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_17/lstm_34/strided_slice_2/stack_1�
-sequential_17/lstm_34/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_17/lstm_34/strided_slice_2/stack_2�
%sequential_17/lstm_34/strided_slice_2StridedSlice#sequential_17/lstm_34/transpose:y:04sequential_17/lstm_34/strided_slice_2/stack:output:06sequential_17/lstm_34/strided_slice_2/stack_1:output:06sequential_17/lstm_34/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2'
%sequential_17/lstm_34/strided_slice_2�
8sequential_17/lstm_34/lstm_cell_68/MatMul/ReadVariableOpReadVariableOpAsequential_17_lstm_34_lstm_cell_68_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02:
8sequential_17/lstm_34/lstm_cell_68/MatMul/ReadVariableOp�
)sequential_17/lstm_34/lstm_cell_68/MatMulMatMul.sequential_17/lstm_34/strided_slice_2:output:0@sequential_17/lstm_34/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2+
)sequential_17/lstm_34/lstm_cell_68/MatMul�
:sequential_17/lstm_34/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOpCsequential_17_lstm_34_lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype02<
:sequential_17/lstm_34/lstm_cell_68/MatMul_1/ReadVariableOp�
+sequential_17/lstm_34/lstm_cell_68/MatMul_1MatMul$sequential_17/lstm_34/zeros:output:0Bsequential_17/lstm_34/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2-
+sequential_17/lstm_34/lstm_cell_68/MatMul_1�
&sequential_17/lstm_34/lstm_cell_68/addAddV23sequential_17/lstm_34/lstm_cell_68/MatMul:product:05sequential_17/lstm_34/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:����������2(
&sequential_17/lstm_34/lstm_cell_68/add�
9sequential_17/lstm_34/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOpBsequential_17_lstm_34_lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02;
9sequential_17/lstm_34/lstm_cell_68/BiasAdd/ReadVariableOp�
*sequential_17/lstm_34/lstm_cell_68/BiasAddBiasAdd*sequential_17/lstm_34/lstm_cell_68/add:z:0Asequential_17/lstm_34/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2,
*sequential_17/lstm_34/lstm_cell_68/BiasAdd�
2sequential_17/lstm_34/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_17/lstm_34/lstm_cell_68/split/split_dim�
(sequential_17/lstm_34/lstm_cell_68/splitSplit;sequential_17/lstm_34/lstm_cell_68/split/split_dim:output:03sequential_17/lstm_34/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2*
(sequential_17/lstm_34/lstm_cell_68/split�
*sequential_17/lstm_34/lstm_cell_68/SigmoidSigmoid1sequential_17/lstm_34/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������@2,
*sequential_17/lstm_34/lstm_cell_68/Sigmoid�
,sequential_17/lstm_34/lstm_cell_68/Sigmoid_1Sigmoid1sequential_17/lstm_34/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������@2.
,sequential_17/lstm_34/lstm_cell_68/Sigmoid_1�
&sequential_17/lstm_34/lstm_cell_68/mulMul0sequential_17/lstm_34/lstm_cell_68/Sigmoid_1:y:0&sequential_17/lstm_34/zeros_1:output:0*
T0*'
_output_shapes
:���������@2(
&sequential_17/lstm_34/lstm_cell_68/mul�
'sequential_17/lstm_34/lstm_cell_68/ReluRelu1sequential_17/lstm_34/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������@2)
'sequential_17/lstm_34/lstm_cell_68/Relu�
(sequential_17/lstm_34/lstm_cell_68/mul_1Mul.sequential_17/lstm_34/lstm_cell_68/Sigmoid:y:05sequential_17/lstm_34/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������@2*
(sequential_17/lstm_34/lstm_cell_68/mul_1�
(sequential_17/lstm_34/lstm_cell_68/add_1AddV2*sequential_17/lstm_34/lstm_cell_68/mul:z:0,sequential_17/lstm_34/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������@2*
(sequential_17/lstm_34/lstm_cell_68/add_1�
,sequential_17/lstm_34/lstm_cell_68/Sigmoid_2Sigmoid1sequential_17/lstm_34/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������@2.
,sequential_17/lstm_34/lstm_cell_68/Sigmoid_2�
)sequential_17/lstm_34/lstm_cell_68/Relu_1Relu,sequential_17/lstm_34/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������@2+
)sequential_17/lstm_34/lstm_cell_68/Relu_1�
(sequential_17/lstm_34/lstm_cell_68/mul_2Mul0sequential_17/lstm_34/lstm_cell_68/Sigmoid_2:y:07sequential_17/lstm_34/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2*
(sequential_17/lstm_34/lstm_cell_68/mul_2�
3sequential_17/lstm_34/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   25
3sequential_17/lstm_34/TensorArrayV2_1/element_shape�
%sequential_17/lstm_34/TensorArrayV2_1TensorListReserve<sequential_17/lstm_34/TensorArrayV2_1/element_shape:output:0.sequential_17/lstm_34/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_17/lstm_34/TensorArrayV2_1z
sequential_17/lstm_34/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_17/lstm_34/time�
.sequential_17/lstm_34/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������20
.sequential_17/lstm_34/while/maximum_iterations�
(sequential_17/lstm_34/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_17/lstm_34/while/loop_counter�
sequential_17/lstm_34/whileWhile1sequential_17/lstm_34/while/loop_counter:output:07sequential_17/lstm_34/while/maximum_iterations:output:0#sequential_17/lstm_34/time:output:0.sequential_17/lstm_34/TensorArrayV2_1:handle:0$sequential_17/lstm_34/zeros:output:0&sequential_17/lstm_34/zeros_1:output:0.sequential_17/lstm_34/strided_slice_1:output:0Msequential_17/lstm_34/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_17_lstm_34_lstm_cell_68_matmul_readvariableop_resourceCsequential_17_lstm_34_lstm_cell_68_matmul_1_readvariableop_resourceBsequential_17_lstm_34_lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������@:���������@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *3
body+R)
'sequential_17_lstm_34_while_body_563638*3
cond+R)
'sequential_17_lstm_34_while_cond_563637*K
output_shapes:
8: : : : :���������@:���������@: : : : : *
parallel_iterations 2
sequential_17/lstm_34/while�
Fsequential_17/lstm_34/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2H
Fsequential_17/lstm_34/TensorArrayV2Stack/TensorListStack/element_shape�
8sequential_17/lstm_34/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_17/lstm_34/while:output:3Osequential_17/lstm_34/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype02:
8sequential_17/lstm_34/TensorArrayV2Stack/TensorListStack�
+sequential_17/lstm_34/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2-
+sequential_17/lstm_34/strided_slice_3/stack�
-sequential_17/lstm_34/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_17/lstm_34/strided_slice_3/stack_1�
-sequential_17/lstm_34/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_17/lstm_34/strided_slice_3/stack_2�
%sequential_17/lstm_34/strided_slice_3StridedSliceAsequential_17/lstm_34/TensorArrayV2Stack/TensorListStack:tensor:04sequential_17/lstm_34/strided_slice_3/stack:output:06sequential_17/lstm_34/strided_slice_3/stack_1:output:06sequential_17/lstm_34/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2'
%sequential_17/lstm_34/strided_slice_3�
&sequential_17/lstm_34/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_17/lstm_34/transpose_1/perm�
!sequential_17/lstm_34/transpose_1	TransposeAsequential_17/lstm_34/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_17/lstm_34/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@2#
!sequential_17/lstm_34/transpose_1�
sequential_17/lstm_34/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_17/lstm_34/runtime�
sequential_17/lstm_35/ShapeShape%sequential_17/lstm_34/transpose_1:y:0*
T0*
_output_shapes
:2
sequential_17/lstm_35/Shape�
)sequential_17/lstm_35/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_17/lstm_35/strided_slice/stack�
+sequential_17/lstm_35/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_17/lstm_35/strided_slice/stack_1�
+sequential_17/lstm_35/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_17/lstm_35/strided_slice/stack_2�
#sequential_17/lstm_35/strided_sliceStridedSlice$sequential_17/lstm_35/Shape:output:02sequential_17/lstm_35/strided_slice/stack:output:04sequential_17/lstm_35/strided_slice/stack_1:output:04sequential_17/lstm_35/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_17/lstm_35/strided_slice�
!sequential_17/lstm_35/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2#
!sequential_17/lstm_35/zeros/mul/y�
sequential_17/lstm_35/zeros/mulMul,sequential_17/lstm_35/strided_slice:output:0*sequential_17/lstm_35/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_17/lstm_35/zeros/mul�
"sequential_17/lstm_35/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2$
"sequential_17/lstm_35/zeros/Less/y�
 sequential_17/lstm_35/zeros/LessLess#sequential_17/lstm_35/zeros/mul:z:0+sequential_17/lstm_35/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_17/lstm_35/zeros/Less�
$sequential_17/lstm_35/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_17/lstm_35/zeros/packed/1�
"sequential_17/lstm_35/zeros/packedPack,sequential_17/lstm_35/strided_slice:output:0-sequential_17/lstm_35/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_17/lstm_35/zeros/packed�
!sequential_17/lstm_35/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_17/lstm_35/zeros/Const�
sequential_17/lstm_35/zerosFill+sequential_17/lstm_35/zeros/packed:output:0*sequential_17/lstm_35/zeros/Const:output:0*
T0*'
_output_shapes
:��������� 2
sequential_17/lstm_35/zeros�
#sequential_17/lstm_35/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2%
#sequential_17/lstm_35/zeros_1/mul/y�
!sequential_17/lstm_35/zeros_1/mulMul,sequential_17/lstm_35/strided_slice:output:0,sequential_17/lstm_35/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_17/lstm_35/zeros_1/mul�
$sequential_17/lstm_35/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2&
$sequential_17/lstm_35/zeros_1/Less/y�
"sequential_17/lstm_35/zeros_1/LessLess%sequential_17/lstm_35/zeros_1/mul:z:0-sequential_17/lstm_35/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_17/lstm_35/zeros_1/Less�
&sequential_17/lstm_35/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_17/lstm_35/zeros_1/packed/1�
$sequential_17/lstm_35/zeros_1/packedPack,sequential_17/lstm_35/strided_slice:output:0/sequential_17/lstm_35/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_17/lstm_35/zeros_1/packed�
#sequential_17/lstm_35/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_17/lstm_35/zeros_1/Const�
sequential_17/lstm_35/zeros_1Fill-sequential_17/lstm_35/zeros_1/packed:output:0,sequential_17/lstm_35/zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� 2
sequential_17/lstm_35/zeros_1�
$sequential_17/lstm_35/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_17/lstm_35/transpose/perm�
sequential_17/lstm_35/transpose	Transpose%sequential_17/lstm_34/transpose_1:y:0-sequential_17/lstm_35/transpose/perm:output:0*
T0*+
_output_shapes
:���������@2!
sequential_17/lstm_35/transpose�
sequential_17/lstm_35/Shape_1Shape#sequential_17/lstm_35/transpose:y:0*
T0*
_output_shapes
:2
sequential_17/lstm_35/Shape_1�
+sequential_17/lstm_35/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_17/lstm_35/strided_slice_1/stack�
-sequential_17/lstm_35/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_17/lstm_35/strided_slice_1/stack_1�
-sequential_17/lstm_35/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_17/lstm_35/strided_slice_1/stack_2�
%sequential_17/lstm_35/strided_slice_1StridedSlice&sequential_17/lstm_35/Shape_1:output:04sequential_17/lstm_35/strided_slice_1/stack:output:06sequential_17/lstm_35/strided_slice_1/stack_1:output:06sequential_17/lstm_35/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_17/lstm_35/strided_slice_1�
1sequential_17/lstm_35/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������23
1sequential_17/lstm_35/TensorArrayV2/element_shape�
#sequential_17/lstm_35/TensorArrayV2TensorListReserve:sequential_17/lstm_35/TensorArrayV2/element_shape:output:0.sequential_17/lstm_35/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_17/lstm_35/TensorArrayV2�
Ksequential_17/lstm_35/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2M
Ksequential_17/lstm_35/TensorArrayUnstack/TensorListFromTensor/element_shape�
=sequential_17/lstm_35/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_17/lstm_35/transpose:y:0Tsequential_17/lstm_35/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_17/lstm_35/TensorArrayUnstack/TensorListFromTensor�
+sequential_17/lstm_35/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_17/lstm_35/strided_slice_2/stack�
-sequential_17/lstm_35/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_17/lstm_35/strided_slice_2/stack_1�
-sequential_17/lstm_35/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_17/lstm_35/strided_slice_2/stack_2�
%sequential_17/lstm_35/strided_slice_2StridedSlice#sequential_17/lstm_35/transpose:y:04sequential_17/lstm_35/strided_slice_2/stack:output:06sequential_17/lstm_35/strided_slice_2/stack_1:output:06sequential_17/lstm_35/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2'
%sequential_17/lstm_35/strided_slice_2�
8sequential_17/lstm_35/lstm_cell_69/MatMul/ReadVariableOpReadVariableOpAsequential_17_lstm_35_lstm_cell_69_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype02:
8sequential_17/lstm_35/lstm_cell_69/MatMul/ReadVariableOp�
)sequential_17/lstm_35/lstm_cell_69/MatMulMatMul.sequential_17/lstm_35/strided_slice_2:output:0@sequential_17/lstm_35/lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2+
)sequential_17/lstm_35/lstm_cell_69/MatMul�
:sequential_17/lstm_35/lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOpCsequential_17_lstm_35_lstm_cell_69_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02<
:sequential_17/lstm_35/lstm_cell_69/MatMul_1/ReadVariableOp�
+sequential_17/lstm_35/lstm_cell_69/MatMul_1MatMul$sequential_17/lstm_35/zeros:output:0Bsequential_17/lstm_35/lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2-
+sequential_17/lstm_35/lstm_cell_69/MatMul_1�
&sequential_17/lstm_35/lstm_cell_69/addAddV23sequential_17/lstm_35/lstm_cell_69/MatMul:product:05sequential_17/lstm_35/lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:����������2(
&sequential_17/lstm_35/lstm_cell_69/add�
9sequential_17/lstm_35/lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOpBsequential_17_lstm_35_lstm_cell_69_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02;
9sequential_17/lstm_35/lstm_cell_69/BiasAdd/ReadVariableOp�
*sequential_17/lstm_35/lstm_cell_69/BiasAddBiasAdd*sequential_17/lstm_35/lstm_cell_69/add:z:0Asequential_17/lstm_35/lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2,
*sequential_17/lstm_35/lstm_cell_69/BiasAdd�
2sequential_17/lstm_35/lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_17/lstm_35/lstm_cell_69/split/split_dim�
(sequential_17/lstm_35/lstm_cell_69/splitSplit;sequential_17/lstm_35/lstm_cell_69/split/split_dim:output:03sequential_17/lstm_35/lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2*
(sequential_17/lstm_35/lstm_cell_69/split�
*sequential_17/lstm_35/lstm_cell_69/SigmoidSigmoid1sequential_17/lstm_35/lstm_cell_69/split:output:0*
T0*'
_output_shapes
:��������� 2,
*sequential_17/lstm_35/lstm_cell_69/Sigmoid�
,sequential_17/lstm_35/lstm_cell_69/Sigmoid_1Sigmoid1sequential_17/lstm_35/lstm_cell_69/split:output:1*
T0*'
_output_shapes
:��������� 2.
,sequential_17/lstm_35/lstm_cell_69/Sigmoid_1�
&sequential_17/lstm_35/lstm_cell_69/mulMul0sequential_17/lstm_35/lstm_cell_69/Sigmoid_1:y:0&sequential_17/lstm_35/zeros_1:output:0*
T0*'
_output_shapes
:��������� 2(
&sequential_17/lstm_35/lstm_cell_69/mul�
'sequential_17/lstm_35/lstm_cell_69/ReluRelu1sequential_17/lstm_35/lstm_cell_69/split:output:2*
T0*'
_output_shapes
:��������� 2)
'sequential_17/lstm_35/lstm_cell_69/Relu�
(sequential_17/lstm_35/lstm_cell_69/mul_1Mul.sequential_17/lstm_35/lstm_cell_69/Sigmoid:y:05sequential_17/lstm_35/lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:��������� 2*
(sequential_17/lstm_35/lstm_cell_69/mul_1�
(sequential_17/lstm_35/lstm_cell_69/add_1AddV2*sequential_17/lstm_35/lstm_cell_69/mul:z:0,sequential_17/lstm_35/lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:��������� 2*
(sequential_17/lstm_35/lstm_cell_69/add_1�
,sequential_17/lstm_35/lstm_cell_69/Sigmoid_2Sigmoid1sequential_17/lstm_35/lstm_cell_69/split:output:3*
T0*'
_output_shapes
:��������� 2.
,sequential_17/lstm_35/lstm_cell_69/Sigmoid_2�
)sequential_17/lstm_35/lstm_cell_69/Relu_1Relu,sequential_17/lstm_35/lstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:��������� 2+
)sequential_17/lstm_35/lstm_cell_69/Relu_1�
(sequential_17/lstm_35/lstm_cell_69/mul_2Mul0sequential_17/lstm_35/lstm_cell_69/Sigmoid_2:y:07sequential_17/lstm_35/lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2*
(sequential_17/lstm_35/lstm_cell_69/mul_2�
3sequential_17/lstm_35/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    25
3sequential_17/lstm_35/TensorArrayV2_1/element_shape�
%sequential_17/lstm_35/TensorArrayV2_1TensorListReserve<sequential_17/lstm_35/TensorArrayV2_1/element_shape:output:0.sequential_17/lstm_35/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_17/lstm_35/TensorArrayV2_1z
sequential_17/lstm_35/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_17/lstm_35/time�
.sequential_17/lstm_35/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������20
.sequential_17/lstm_35/while/maximum_iterations�
(sequential_17/lstm_35/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_17/lstm_35/while/loop_counter�
sequential_17/lstm_35/whileWhile1sequential_17/lstm_35/while/loop_counter:output:07sequential_17/lstm_35/while/maximum_iterations:output:0#sequential_17/lstm_35/time:output:0.sequential_17/lstm_35/TensorArrayV2_1:handle:0$sequential_17/lstm_35/zeros:output:0&sequential_17/lstm_35/zeros_1:output:0.sequential_17/lstm_35/strided_slice_1:output:0Msequential_17/lstm_35/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_17_lstm_35_lstm_cell_69_matmul_readvariableop_resourceCsequential_17_lstm_35_lstm_cell_69_matmul_1_readvariableop_resourceBsequential_17_lstm_35_lstm_cell_69_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *3
body+R)
'sequential_17_lstm_35_while_body_563785*3
cond+R)
'sequential_17_lstm_35_while_cond_563784*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations 2
sequential_17/lstm_35/while�
Fsequential_17/lstm_35/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2H
Fsequential_17/lstm_35/TensorArrayV2Stack/TensorListStack/element_shape�
8sequential_17/lstm_35/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_17/lstm_35/while:output:3Osequential_17/lstm_35/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype02:
8sequential_17/lstm_35/TensorArrayV2Stack/TensorListStack�
+sequential_17/lstm_35/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2-
+sequential_17/lstm_35/strided_slice_3/stack�
-sequential_17/lstm_35/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_17/lstm_35/strided_slice_3/stack_1�
-sequential_17/lstm_35/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_17/lstm_35/strided_slice_3/stack_2�
%sequential_17/lstm_35/strided_slice_3StridedSliceAsequential_17/lstm_35/TensorArrayV2Stack/TensorListStack:tensor:04sequential_17/lstm_35/strided_slice_3/stack:output:06sequential_17/lstm_35/strided_slice_3/stack_1:output:06sequential_17/lstm_35/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2'
%sequential_17/lstm_35/strided_slice_3�
&sequential_17/lstm_35/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_17/lstm_35/transpose_1/perm�
!sequential_17/lstm_35/transpose_1	TransposeAsequential_17/lstm_35/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_17/lstm_35/transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� 2#
!sequential_17/lstm_35/transpose_1�
sequential_17/lstm_35/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_17/lstm_35/runtime�
!sequential_17/dropout_17/IdentityIdentity.sequential_17/lstm_35/strided_slice_3:output:0*
T0*'
_output_shapes
:��������� 2#
!sequential_17/dropout_17/Identity�
,sequential_17/dense_17/MatMul/ReadVariableOpReadVariableOp5sequential_17_dense_17_matmul_readvariableop_resource*
_output_shapes

: *
dtype02.
,sequential_17/dense_17/MatMul/ReadVariableOp�
sequential_17/dense_17/MatMulMatMul*sequential_17/dropout_17/Identity:output:04sequential_17/dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
sequential_17/dense_17/MatMul�
-sequential_17/dense_17/BiasAdd/ReadVariableOpReadVariableOp6sequential_17_dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_17/dense_17/BiasAdd/ReadVariableOp�
sequential_17/dense_17/BiasAddBiasAdd'sequential_17/dense_17/MatMul:product:05sequential_17/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2 
sequential_17/dense_17/BiasAdd�
IdentityIdentity'sequential_17/dense_17/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp.^sequential_17/dense_17/BiasAdd/ReadVariableOp-^sequential_17/dense_17/MatMul/ReadVariableOp:^sequential_17/lstm_34/lstm_cell_68/BiasAdd/ReadVariableOp9^sequential_17/lstm_34/lstm_cell_68/MatMul/ReadVariableOp;^sequential_17/lstm_34/lstm_cell_68/MatMul_1/ReadVariableOp^sequential_17/lstm_34/while:^sequential_17/lstm_35/lstm_cell_69/BiasAdd/ReadVariableOp9^sequential_17/lstm_35/lstm_cell_69/MatMul/ReadVariableOp;^sequential_17/lstm_35/lstm_cell_69/MatMul_1/ReadVariableOp^sequential_17/lstm_35/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2^
-sequential_17/dense_17/BiasAdd/ReadVariableOp-sequential_17/dense_17/BiasAdd/ReadVariableOp2\
,sequential_17/dense_17/MatMul/ReadVariableOp,sequential_17/dense_17/MatMul/ReadVariableOp2v
9sequential_17/lstm_34/lstm_cell_68/BiasAdd/ReadVariableOp9sequential_17/lstm_34/lstm_cell_68/BiasAdd/ReadVariableOp2t
8sequential_17/lstm_34/lstm_cell_68/MatMul/ReadVariableOp8sequential_17/lstm_34/lstm_cell_68/MatMul/ReadVariableOp2x
:sequential_17/lstm_34/lstm_cell_68/MatMul_1/ReadVariableOp:sequential_17/lstm_34/lstm_cell_68/MatMul_1/ReadVariableOp2:
sequential_17/lstm_34/whilesequential_17/lstm_34/while2v
9sequential_17/lstm_35/lstm_cell_69/BiasAdd/ReadVariableOp9sequential_17/lstm_35/lstm_cell_69/BiasAdd/ReadVariableOp2t
8sequential_17/lstm_35/lstm_cell_69/MatMul/ReadVariableOp8sequential_17/lstm_35/lstm_cell_69/MatMul/ReadVariableOp2x
:sequential_17/lstm_35/lstm_cell_69/MatMul_1/ReadVariableOp:sequential_17/lstm_35/lstm_cell_69/MatMul_1/ReadVariableOp2:
sequential_17/lstm_35/whilesequential_17/lstm_35/while:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_34_input
�
�
while_cond_565208
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_565208___redundant_placeholder04
0while_while_cond_565208___redundant_placeholder14
0while_while_cond_565208___redundant_placeholder24
0while_while_cond_565208___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������@:���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�
�
'sequential_17_lstm_34_while_cond_563637H
Dsequential_17_lstm_34_while_sequential_17_lstm_34_while_loop_counterN
Jsequential_17_lstm_34_while_sequential_17_lstm_34_while_maximum_iterations+
'sequential_17_lstm_34_while_placeholder-
)sequential_17_lstm_34_while_placeholder_1-
)sequential_17_lstm_34_while_placeholder_2-
)sequential_17_lstm_34_while_placeholder_3J
Fsequential_17_lstm_34_while_less_sequential_17_lstm_34_strided_slice_1`
\sequential_17_lstm_34_while_sequential_17_lstm_34_while_cond_563637___redundant_placeholder0`
\sequential_17_lstm_34_while_sequential_17_lstm_34_while_cond_563637___redundant_placeholder1`
\sequential_17_lstm_34_while_sequential_17_lstm_34_while_cond_563637___redundant_placeholder2`
\sequential_17_lstm_34_while_sequential_17_lstm_34_while_cond_563637___redundant_placeholder3(
$sequential_17_lstm_34_while_identity
�
 sequential_17/lstm_34/while/LessLess'sequential_17_lstm_34_while_placeholderFsequential_17_lstm_34_while_less_sequential_17_lstm_34_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_17/lstm_34/while/Less�
$sequential_17/lstm_34/while/IdentityIdentity$sequential_17/lstm_34/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_17/lstm_34/while/Identity"U
$sequential_17_lstm_34_while_identity-sequential_17/lstm_34/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������@:���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_567116
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_567116___redundant_placeholder04
0while_while_cond_567116___redundant_placeholder14
0while_while_cond_567116___redundant_placeholder24
0while_while_cond_567116___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������@:���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_567915
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_567915___redundant_placeholder04
0while_while_cond_567915___redundant_placeholder14
0while_while_cond_567915___redundant_placeholder24
0while_while_cond_567915___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�%
�
while_body_564175
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_68_564199_0:	�.
while_lstm_cell_68_564201_0:	@�*
while_lstm_cell_68_564203_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_68_564199:	�,
while_lstm_cell_68_564201:	@�(
while_lstm_cell_68_564203:	���*while/lstm_cell_68/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
*while/lstm_cell_68/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_68_564199_0while_lstm_cell_68_564201_0while_lstm_cell_68_564203_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������@:���������@:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_5640972,
*while/lstm_cell_68/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_68/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity3while/lstm_cell_68/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������@2
while/Identity_4�
while/Identity_5Identity3while/lstm_cell_68/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������@2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_68/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_68_564199while_lstm_cell_68_564199_0"8
while_lstm_cell_68_564201while_lstm_cell_68_564201_0"8
while_lstm_cell_68_564203while_lstm_cell_68_564203_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2X
*while/lstm_cell_68/StatefulPartitionedCall*while/lstm_cell_68/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�[
�
C__inference_lstm_35_layer_call_and_return_conditional_losses_568000

inputs>
+lstm_cell_69_matmul_readvariableop_resource:	@�@
-lstm_cell_69_matmul_1_readvariableop_resource:	 �;
,lstm_cell_69_biasadd_readvariableop_resource:	�
identity��#lstm_cell_69/BiasAdd/ReadVariableOp�"lstm_cell_69/MatMul/ReadVariableOp�$lstm_cell_69/MatMul_1/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_69/MatMul/ReadVariableOpReadVariableOp+lstm_cell_69_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype02$
"lstm_cell_69/MatMul/ReadVariableOp�
lstm_cell_69/MatMulMatMulstrided_slice_2:output:0*lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_69/MatMul�
$lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_69_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02&
$lstm_cell_69/MatMul_1/ReadVariableOp�
lstm_cell_69/MatMul_1MatMulzeros:output:0,lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_69/MatMul_1�
lstm_cell_69/addAddV2lstm_cell_69/MatMul:product:0lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_69/add�
#lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_69_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_69/BiasAdd/ReadVariableOp�
lstm_cell_69/BiasAddBiasAddlstm_cell_69/add:z:0+lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_69/BiasAdd~
lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_69/split/split_dim�
lstm_cell_69/splitSplit%lstm_cell_69/split/split_dim:output:0lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
lstm_cell_69/split�
lstm_cell_69/SigmoidSigmoidlstm_cell_69/split:output:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/Sigmoid�
lstm_cell_69/Sigmoid_1Sigmoidlstm_cell_69/split:output:1*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/Sigmoid_1�
lstm_cell_69/mulMullstm_cell_69/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/mul}
lstm_cell_69/ReluRelulstm_cell_69/split:output:2*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/Relu�
lstm_cell_69/mul_1Mullstm_cell_69/Sigmoid:y:0lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/mul_1�
lstm_cell_69/add_1AddV2lstm_cell_69/mul:z:0lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/add_1�
lstm_cell_69/Sigmoid_2Sigmoidlstm_cell_69/split:output:3*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/Sigmoid_2|
lstm_cell_69/Relu_1Relulstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/Relu_1�
lstm_cell_69/mul_2Mullstm_cell_69/Sigmoid_2:y:0!lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_69_matmul_readvariableop_resource-lstm_cell_69_matmul_1_readvariableop_resource,lstm_cell_69_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_567916*
condR
while_cond_567915*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:��������� 2

Identity�
NoOpNoOp$^lstm_cell_69/BiasAdd/ReadVariableOp#^lstm_cell_69/MatMul/ReadVariableOp%^lstm_cell_69/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������@: : : 2J
#lstm_cell_69/BiasAdd/ReadVariableOp#lstm_cell_69/BiasAdd/ReadVariableOp2H
"lstm_cell_69/MatMul/ReadVariableOp"lstm_cell_69/MatMul/ReadVariableOp2L
$lstm_cell_69/MatMul_1/ReadVariableOp$lstm_cell_69/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
D__inference_dense_17_layer_call_and_return_conditional_losses_568046

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
(__inference_lstm_35_layer_call_fn_567363
inputs_0
unknown:	@�
	unknown_0:	 �
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_35_layer_call_and_return_conditional_losses_5646642
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������@
"
_user_specified_name
inputs/0
�
�
while_cond_564804
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_564804___redundant_placeholder04
0while_while_cond_564804___redundant_placeholder14
0while_while_cond_564804___redundant_placeholder24
0while_while_cond_564804___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�[
�
C__inference_lstm_35_layer_call_and_return_conditional_losses_567849

inputs>
+lstm_cell_69_matmul_readvariableop_resource:	@�@
-lstm_cell_69_matmul_1_readvariableop_resource:	 �;
,lstm_cell_69_biasadd_readvariableop_resource:	�
identity��#lstm_cell_69/BiasAdd/ReadVariableOp�"lstm_cell_69/MatMul/ReadVariableOp�$lstm_cell_69/MatMul_1/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_69/MatMul/ReadVariableOpReadVariableOp+lstm_cell_69_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype02$
"lstm_cell_69/MatMul/ReadVariableOp�
lstm_cell_69/MatMulMatMulstrided_slice_2:output:0*lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_69/MatMul�
$lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_69_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02&
$lstm_cell_69/MatMul_1/ReadVariableOp�
lstm_cell_69/MatMul_1MatMulzeros:output:0,lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_69/MatMul_1�
lstm_cell_69/addAddV2lstm_cell_69/MatMul:product:0lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_69/add�
#lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_69_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_69/BiasAdd/ReadVariableOp�
lstm_cell_69/BiasAddBiasAddlstm_cell_69/add:z:0+lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_69/BiasAdd~
lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_69/split/split_dim�
lstm_cell_69/splitSplit%lstm_cell_69/split/split_dim:output:0lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
lstm_cell_69/split�
lstm_cell_69/SigmoidSigmoidlstm_cell_69/split:output:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/Sigmoid�
lstm_cell_69/Sigmoid_1Sigmoidlstm_cell_69/split:output:1*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/Sigmoid_1�
lstm_cell_69/mulMullstm_cell_69/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/mul}
lstm_cell_69/ReluRelulstm_cell_69/split:output:2*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/Relu�
lstm_cell_69/mul_1Mullstm_cell_69/Sigmoid:y:0lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/mul_1�
lstm_cell_69/add_1AddV2lstm_cell_69/mul:z:0lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/add_1�
lstm_cell_69/Sigmoid_2Sigmoidlstm_cell_69/split:output:3*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/Sigmoid_2|
lstm_cell_69/Relu_1Relulstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/Relu_1�
lstm_cell_69/mul_2Mullstm_cell_69/Sigmoid_2:y:0!lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_69_matmul_readvariableop_resource-lstm_cell_69_matmul_1_readvariableop_resource,lstm_cell_69_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_567765*
condR
while_cond_567764*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:��������� 2

Identity�
NoOpNoOp$^lstm_cell_69/BiasAdd/ReadVariableOp#^lstm_cell_69/MatMul/ReadVariableOp%^lstm_cell_69/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������@: : : 2J
#lstm_cell_69/BiasAdd/ReadVariableOp#lstm_cell_69/BiasAdd/ReadVariableOp2H
"lstm_cell_69/MatMul/ReadVariableOp"lstm_cell_69/MatMul/ReadVariableOp2L
$lstm_cell_69/MatMul_1/ReadVariableOp$lstm_cell_69/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
��
�
"__inference__traced_restore_568461
file_prefix2
 assignvariableop_dense_17_kernel: .
 assignvariableop_1_dense_17_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: A
.assignvariableop_7_lstm_34_lstm_cell_68_kernel:	�K
8assignvariableop_8_lstm_34_lstm_cell_68_recurrent_kernel:	@�;
,assignvariableop_9_lstm_34_lstm_cell_68_bias:	�B
/assignvariableop_10_lstm_35_lstm_cell_69_kernel:	@�L
9assignvariableop_11_lstm_35_lstm_cell_69_recurrent_kernel:	 �<
-assignvariableop_12_lstm_35_lstm_cell_69_bias:	�#
assignvariableop_13_total: #
assignvariableop_14_count: <
*assignvariableop_15_adam_dense_17_kernel_m: 6
(assignvariableop_16_adam_dense_17_bias_m:I
6assignvariableop_17_adam_lstm_34_lstm_cell_68_kernel_m:	�S
@assignvariableop_18_adam_lstm_34_lstm_cell_68_recurrent_kernel_m:	@�C
4assignvariableop_19_adam_lstm_34_lstm_cell_68_bias_m:	�I
6assignvariableop_20_adam_lstm_35_lstm_cell_69_kernel_m:	@�S
@assignvariableop_21_adam_lstm_35_lstm_cell_69_recurrent_kernel_m:	 �C
4assignvariableop_22_adam_lstm_35_lstm_cell_69_bias_m:	�<
*assignvariableop_23_adam_dense_17_kernel_v: 6
(assignvariableop_24_adam_dense_17_bias_v:I
6assignvariableop_25_adam_lstm_34_lstm_cell_68_kernel_v:	�S
@assignvariableop_26_adam_lstm_34_lstm_cell_68_recurrent_kernel_v:	@�C
4assignvariableop_27_adam_lstm_34_lstm_cell_68_bias_v:	�I
6assignvariableop_28_adam_lstm_35_lstm_cell_69_kernel_v:	@�S
@assignvariableop_29_adam_lstm_35_lstm_cell_69_recurrent_kernel_v:	 �C
4assignvariableop_30_adam_lstm_35_lstm_cell_69_bias_v:	�
identity_32��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::*.
dtypes$
"2 	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp assignvariableop_dense_17_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_17_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp.assignvariableop_7_lstm_34_lstm_cell_68_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp8assignvariableop_8_lstm_34_lstm_cell_68_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp,assignvariableop_9_lstm_34_lstm_cell_68_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp/assignvariableop_10_lstm_35_lstm_cell_69_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp9assignvariableop_11_lstm_35_lstm_cell_69_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp-assignvariableop_12_lstm_35_lstm_cell_69_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp*assignvariableop_15_adam_dense_17_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adam_dense_17_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp6assignvariableop_17_adam_lstm_34_lstm_cell_68_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp@assignvariableop_18_adam_lstm_34_lstm_cell_68_recurrent_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp4assignvariableop_19_adam_lstm_34_lstm_cell_68_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOp6assignvariableop_20_adam_lstm_35_lstm_cell_69_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOp@assignvariableop_21_adam_lstm_35_lstm_cell_69_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_lstm_35_lstm_cell_69_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_17_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_17_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_34_lstm_cell_68_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp@assignvariableop_26_adam_lstm_34_lstm_cell_68_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOp4assignvariableop_27_adam_lstm_34_lstm_cell_68_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_35_lstm_cell_69_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOp@assignvariableop_29_adam_lstm_35_lstm_cell_69_recurrent_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOp4assignvariableop_30_adam_lstm_35_lstm_cell_69_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_309
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_31Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_31f
Identity_32IdentityIdentity_31:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_32�
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_32Identity_32:output:0*S
_input_shapesB
@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_30AssignVariableOp_302(
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
_user_specified_namefile_prefix
�J
�

lstm_34_while_body_566154,
(lstm_34_while_lstm_34_while_loop_counter2
.lstm_34_while_lstm_34_while_maximum_iterations
lstm_34_while_placeholder
lstm_34_while_placeholder_1
lstm_34_while_placeholder_2
lstm_34_while_placeholder_3+
'lstm_34_while_lstm_34_strided_slice_1_0g
clstm_34_while_tensorarrayv2read_tensorlistgetitem_lstm_34_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_34_while_lstm_cell_68_matmul_readvariableop_resource_0:	�P
=lstm_34_while_lstm_cell_68_matmul_1_readvariableop_resource_0:	@�K
<lstm_34_while_lstm_cell_68_biasadd_readvariableop_resource_0:	�
lstm_34_while_identity
lstm_34_while_identity_1
lstm_34_while_identity_2
lstm_34_while_identity_3
lstm_34_while_identity_4
lstm_34_while_identity_5)
%lstm_34_while_lstm_34_strided_slice_1e
alstm_34_while_tensorarrayv2read_tensorlistgetitem_lstm_34_tensorarrayunstack_tensorlistfromtensorL
9lstm_34_while_lstm_cell_68_matmul_readvariableop_resource:	�N
;lstm_34_while_lstm_cell_68_matmul_1_readvariableop_resource:	@�I
:lstm_34_while_lstm_cell_68_biasadd_readvariableop_resource:	���1lstm_34/while/lstm_cell_68/BiasAdd/ReadVariableOp�0lstm_34/while/lstm_cell_68/MatMul/ReadVariableOp�2lstm_34/while/lstm_cell_68/MatMul_1/ReadVariableOp�
?lstm_34/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2A
?lstm_34/while/TensorArrayV2Read/TensorListGetItem/element_shape�
1lstm_34/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_34_while_tensorarrayv2read_tensorlistgetitem_lstm_34_tensorarrayunstack_tensorlistfromtensor_0lstm_34_while_placeholderHlstm_34/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype023
1lstm_34/while/TensorArrayV2Read/TensorListGetItem�
0lstm_34/while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp;lstm_34_while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype022
0lstm_34/while/lstm_cell_68/MatMul/ReadVariableOp�
!lstm_34/while/lstm_cell_68/MatMulMatMul8lstm_34/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_34/while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2#
!lstm_34/while/lstm_cell_68/MatMul�
2lstm_34/while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp=lstm_34_while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype024
2lstm_34/while/lstm_cell_68/MatMul_1/ReadVariableOp�
#lstm_34/while/lstm_cell_68/MatMul_1MatMullstm_34_while_placeholder_2:lstm_34/while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2%
#lstm_34/while/lstm_cell_68/MatMul_1�
lstm_34/while/lstm_cell_68/addAddV2+lstm_34/while/lstm_cell_68/MatMul:product:0-lstm_34/while/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:����������2 
lstm_34/while/lstm_cell_68/add�
1lstm_34/while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp<lstm_34_while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype023
1lstm_34/while/lstm_cell_68/BiasAdd/ReadVariableOp�
"lstm_34/while/lstm_cell_68/BiasAddBiasAdd"lstm_34/while/lstm_cell_68/add:z:09lstm_34/while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2$
"lstm_34/while/lstm_cell_68/BiasAdd�
*lstm_34/while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_34/while/lstm_cell_68/split/split_dim�
 lstm_34/while/lstm_cell_68/splitSplit3lstm_34/while/lstm_cell_68/split/split_dim:output:0+lstm_34/while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2"
 lstm_34/while/lstm_cell_68/split�
"lstm_34/while/lstm_cell_68/SigmoidSigmoid)lstm_34/while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������@2$
"lstm_34/while/lstm_cell_68/Sigmoid�
$lstm_34/while/lstm_cell_68/Sigmoid_1Sigmoid)lstm_34/while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������@2&
$lstm_34/while/lstm_cell_68/Sigmoid_1�
lstm_34/while/lstm_cell_68/mulMul(lstm_34/while/lstm_cell_68/Sigmoid_1:y:0lstm_34_while_placeholder_3*
T0*'
_output_shapes
:���������@2 
lstm_34/while/lstm_cell_68/mul�
lstm_34/while/lstm_cell_68/ReluRelu)lstm_34/while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������@2!
lstm_34/while/lstm_cell_68/Relu�
 lstm_34/while/lstm_cell_68/mul_1Mul&lstm_34/while/lstm_cell_68/Sigmoid:y:0-lstm_34/while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������@2"
 lstm_34/while/lstm_cell_68/mul_1�
 lstm_34/while/lstm_cell_68/add_1AddV2"lstm_34/while/lstm_cell_68/mul:z:0$lstm_34/while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������@2"
 lstm_34/while/lstm_cell_68/add_1�
$lstm_34/while/lstm_cell_68/Sigmoid_2Sigmoid)lstm_34/while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������@2&
$lstm_34/while/lstm_cell_68/Sigmoid_2�
!lstm_34/while/lstm_cell_68/Relu_1Relu$lstm_34/while/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������@2#
!lstm_34/while/lstm_cell_68/Relu_1�
 lstm_34/while/lstm_cell_68/mul_2Mul(lstm_34/while/lstm_cell_68/Sigmoid_2:y:0/lstm_34/while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2"
 lstm_34/while/lstm_cell_68/mul_2�
2lstm_34/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_34_while_placeholder_1lstm_34_while_placeholder$lstm_34/while/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_34/while/TensorArrayV2Write/TensorListSetIteml
lstm_34/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_34/while/add/y�
lstm_34/while/addAddV2lstm_34_while_placeholderlstm_34/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_34/while/addp
lstm_34/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_34/while/add_1/y�
lstm_34/while/add_1AddV2(lstm_34_while_lstm_34_while_loop_counterlstm_34/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_34/while/add_1�
lstm_34/while/IdentityIdentitylstm_34/while/add_1:z:0^lstm_34/while/NoOp*
T0*
_output_shapes
: 2
lstm_34/while/Identity�
lstm_34/while/Identity_1Identity.lstm_34_while_lstm_34_while_maximum_iterations^lstm_34/while/NoOp*
T0*
_output_shapes
: 2
lstm_34/while/Identity_1�
lstm_34/while/Identity_2Identitylstm_34/while/add:z:0^lstm_34/while/NoOp*
T0*
_output_shapes
: 2
lstm_34/while/Identity_2�
lstm_34/while/Identity_3IdentityBlstm_34/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_34/while/NoOp*
T0*
_output_shapes
: 2
lstm_34/while/Identity_3�
lstm_34/while/Identity_4Identity$lstm_34/while/lstm_cell_68/mul_2:z:0^lstm_34/while/NoOp*
T0*'
_output_shapes
:���������@2
lstm_34/while/Identity_4�
lstm_34/while/Identity_5Identity$lstm_34/while/lstm_cell_68/add_1:z:0^lstm_34/while/NoOp*
T0*'
_output_shapes
:���������@2
lstm_34/while/Identity_5�
lstm_34/while/NoOpNoOp2^lstm_34/while/lstm_cell_68/BiasAdd/ReadVariableOp1^lstm_34/while/lstm_cell_68/MatMul/ReadVariableOp3^lstm_34/while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_34/while/NoOp"9
lstm_34_while_identitylstm_34/while/Identity:output:0"=
lstm_34_while_identity_1!lstm_34/while/Identity_1:output:0"=
lstm_34_while_identity_2!lstm_34/while/Identity_2:output:0"=
lstm_34_while_identity_3!lstm_34/while/Identity_3:output:0"=
lstm_34_while_identity_4!lstm_34/while/Identity_4:output:0"=
lstm_34_while_identity_5!lstm_34/while/Identity_5:output:0"P
%lstm_34_while_lstm_34_strided_slice_1'lstm_34_while_lstm_34_strided_slice_1_0"z
:lstm_34_while_lstm_cell_68_biasadd_readvariableop_resource<lstm_34_while_lstm_cell_68_biasadd_readvariableop_resource_0"|
;lstm_34_while_lstm_cell_68_matmul_1_readvariableop_resource=lstm_34_while_lstm_cell_68_matmul_1_readvariableop_resource_0"x
9lstm_34_while_lstm_cell_68_matmul_readvariableop_resource;lstm_34_while_lstm_cell_68_matmul_readvariableop_resource_0"�
alstm_34_while_tensorarrayv2read_tensorlistgetitem_lstm_34_tensorarrayunstack_tensorlistfromtensorclstm_34_while_tensorarrayv2read_tensorlistgetitem_lstm_34_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2f
1lstm_34/while/lstm_cell_68/BiasAdd/ReadVariableOp1lstm_34/while/lstm_cell_68/BiasAdd/ReadVariableOp2d
0lstm_34/while/lstm_cell_68/MatMul/ReadVariableOp0lstm_34/while/lstm_cell_68/MatMul/ReadVariableOp2h
2lstm_34/while/lstm_cell_68/MatMul_1/ReadVariableOp2lstm_34/while/lstm_cell_68/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�?
�
while_body_565615
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_69_matmul_readvariableop_resource_0:	@�H
5while_lstm_cell_69_matmul_1_readvariableop_resource_0:	 �C
4while_lstm_cell_69_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_69_matmul_readvariableop_resource:	@�F
3while_lstm_cell_69_matmul_1_readvariableop_resource:	 �A
2while_lstm_cell_69_biasadd_readvariableop_resource:	���)while/lstm_cell_69/BiasAdd/ReadVariableOp�(while/lstm_cell_69/MatMul/ReadVariableOp�*while/lstm_cell_69/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_69/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_69_matmul_readvariableop_resource_0*
_output_shapes
:	@�*
dtype02*
(while/lstm_cell_69/MatMul/ReadVariableOp�
while/lstm_cell_69/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_69/MatMul�
*while/lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_69_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02,
*while/lstm_cell_69/MatMul_1/ReadVariableOp�
while/lstm_cell_69/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_69/MatMul_1�
while/lstm_cell_69/addAddV2#while/lstm_cell_69/MatMul:product:0%while/lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_69/add�
)while/lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_69_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_69/BiasAdd/ReadVariableOp�
while/lstm_cell_69/BiasAddBiasAddwhile/lstm_cell_69/add:z:01while/lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_69/BiasAdd�
"while/lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_69/split/split_dim�
while/lstm_cell_69/splitSplit+while/lstm_cell_69/split/split_dim:output:0#while/lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
while/lstm_cell_69/split�
while/lstm_cell_69/SigmoidSigmoid!while/lstm_cell_69/split:output:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/Sigmoid�
while/lstm_cell_69/Sigmoid_1Sigmoid!while/lstm_cell_69/split:output:1*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/Sigmoid_1�
while/lstm_cell_69/mulMul while/lstm_cell_69/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/mul�
while/lstm_cell_69/ReluRelu!while/lstm_cell_69/split:output:2*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/Relu�
while/lstm_cell_69/mul_1Mulwhile/lstm_cell_69/Sigmoid:y:0%while/lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/mul_1�
while/lstm_cell_69/add_1AddV2while/lstm_cell_69/mul:z:0while/lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/add_1�
while/lstm_cell_69/Sigmoid_2Sigmoid!while/lstm_cell_69/split:output:3*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/Sigmoid_2�
while/lstm_cell_69/Relu_1Reluwhile/lstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/Relu_1�
while/lstm_cell_69/mul_2Mul while/lstm_cell_69/Sigmoid_2:y:0'while/lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_69/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_69/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:��������� 2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_69/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:��������� 2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_69/BiasAdd/ReadVariableOp)^while/lstm_cell_69/MatMul/ReadVariableOp+^while/lstm_cell_69/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_69_biasadd_readvariableop_resource4while_lstm_cell_69_biasadd_readvariableop_resource_0"l
3while_lstm_cell_69_matmul_1_readvariableop_resource5while_lstm_cell_69_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_69_matmul_readvariableop_resource3while_lstm_cell_69_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2V
)while/lstm_cell_69/BiasAdd/ReadVariableOp)while/lstm_cell_69/BiasAdd/ReadVariableOp2T
(while/lstm_cell_69/MatMul/ReadVariableOp(while/lstm_cell_69/MatMul/ReadVariableOp2X
*while/lstm_cell_69/MatMul_1/ReadVariableOp*while/lstm_cell_69/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�J
�

lstm_35_while_body_566301,
(lstm_35_while_lstm_35_while_loop_counter2
.lstm_35_while_lstm_35_while_maximum_iterations
lstm_35_while_placeholder
lstm_35_while_placeholder_1
lstm_35_while_placeholder_2
lstm_35_while_placeholder_3+
'lstm_35_while_lstm_35_strided_slice_1_0g
clstm_35_while_tensorarrayv2read_tensorlistgetitem_lstm_35_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_35_while_lstm_cell_69_matmul_readvariableop_resource_0:	@�P
=lstm_35_while_lstm_cell_69_matmul_1_readvariableop_resource_0:	 �K
<lstm_35_while_lstm_cell_69_biasadd_readvariableop_resource_0:	�
lstm_35_while_identity
lstm_35_while_identity_1
lstm_35_while_identity_2
lstm_35_while_identity_3
lstm_35_while_identity_4
lstm_35_while_identity_5)
%lstm_35_while_lstm_35_strided_slice_1e
alstm_35_while_tensorarrayv2read_tensorlistgetitem_lstm_35_tensorarrayunstack_tensorlistfromtensorL
9lstm_35_while_lstm_cell_69_matmul_readvariableop_resource:	@�N
;lstm_35_while_lstm_cell_69_matmul_1_readvariableop_resource:	 �I
:lstm_35_while_lstm_cell_69_biasadd_readvariableop_resource:	���1lstm_35/while/lstm_cell_69/BiasAdd/ReadVariableOp�0lstm_35/while/lstm_cell_69/MatMul/ReadVariableOp�2lstm_35/while/lstm_cell_69/MatMul_1/ReadVariableOp�
?lstm_35/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2A
?lstm_35/while/TensorArrayV2Read/TensorListGetItem/element_shape�
1lstm_35/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_35_while_tensorarrayv2read_tensorlistgetitem_lstm_35_tensorarrayunstack_tensorlistfromtensor_0lstm_35_while_placeholderHlstm_35/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype023
1lstm_35/while/TensorArrayV2Read/TensorListGetItem�
0lstm_35/while/lstm_cell_69/MatMul/ReadVariableOpReadVariableOp;lstm_35_while_lstm_cell_69_matmul_readvariableop_resource_0*
_output_shapes
:	@�*
dtype022
0lstm_35/while/lstm_cell_69/MatMul/ReadVariableOp�
!lstm_35/while/lstm_cell_69/MatMulMatMul8lstm_35/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_35/while/lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2#
!lstm_35/while/lstm_cell_69/MatMul�
2lstm_35/while/lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOp=lstm_35_while_lstm_cell_69_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype024
2lstm_35/while/lstm_cell_69/MatMul_1/ReadVariableOp�
#lstm_35/while/lstm_cell_69/MatMul_1MatMullstm_35_while_placeholder_2:lstm_35/while/lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2%
#lstm_35/while/lstm_cell_69/MatMul_1�
lstm_35/while/lstm_cell_69/addAddV2+lstm_35/while/lstm_cell_69/MatMul:product:0-lstm_35/while/lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:����������2 
lstm_35/while/lstm_cell_69/add�
1lstm_35/while/lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOp<lstm_35_while_lstm_cell_69_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype023
1lstm_35/while/lstm_cell_69/BiasAdd/ReadVariableOp�
"lstm_35/while/lstm_cell_69/BiasAddBiasAdd"lstm_35/while/lstm_cell_69/add:z:09lstm_35/while/lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2$
"lstm_35/while/lstm_cell_69/BiasAdd�
*lstm_35/while/lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_35/while/lstm_cell_69/split/split_dim�
 lstm_35/while/lstm_cell_69/splitSplit3lstm_35/while/lstm_cell_69/split/split_dim:output:0+lstm_35/while/lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2"
 lstm_35/while/lstm_cell_69/split�
"lstm_35/while/lstm_cell_69/SigmoidSigmoid)lstm_35/while/lstm_cell_69/split:output:0*
T0*'
_output_shapes
:��������� 2$
"lstm_35/while/lstm_cell_69/Sigmoid�
$lstm_35/while/lstm_cell_69/Sigmoid_1Sigmoid)lstm_35/while/lstm_cell_69/split:output:1*
T0*'
_output_shapes
:��������� 2&
$lstm_35/while/lstm_cell_69/Sigmoid_1�
lstm_35/while/lstm_cell_69/mulMul(lstm_35/while/lstm_cell_69/Sigmoid_1:y:0lstm_35_while_placeholder_3*
T0*'
_output_shapes
:��������� 2 
lstm_35/while/lstm_cell_69/mul�
lstm_35/while/lstm_cell_69/ReluRelu)lstm_35/while/lstm_cell_69/split:output:2*
T0*'
_output_shapes
:��������� 2!
lstm_35/while/lstm_cell_69/Relu�
 lstm_35/while/lstm_cell_69/mul_1Mul&lstm_35/while/lstm_cell_69/Sigmoid:y:0-lstm_35/while/lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:��������� 2"
 lstm_35/while/lstm_cell_69/mul_1�
 lstm_35/while/lstm_cell_69/add_1AddV2"lstm_35/while/lstm_cell_69/mul:z:0$lstm_35/while/lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:��������� 2"
 lstm_35/while/lstm_cell_69/add_1�
$lstm_35/while/lstm_cell_69/Sigmoid_2Sigmoid)lstm_35/while/lstm_cell_69/split:output:3*
T0*'
_output_shapes
:��������� 2&
$lstm_35/while/lstm_cell_69/Sigmoid_2�
!lstm_35/while/lstm_cell_69/Relu_1Relu$lstm_35/while/lstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:��������� 2#
!lstm_35/while/lstm_cell_69/Relu_1�
 lstm_35/while/lstm_cell_69/mul_2Mul(lstm_35/while/lstm_cell_69/Sigmoid_2:y:0/lstm_35/while/lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2"
 lstm_35/while/lstm_cell_69/mul_2�
2lstm_35/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_35_while_placeholder_1lstm_35_while_placeholder$lstm_35/while/lstm_cell_69/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_35/while/TensorArrayV2Write/TensorListSetIteml
lstm_35/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_35/while/add/y�
lstm_35/while/addAddV2lstm_35_while_placeholderlstm_35/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_35/while/addp
lstm_35/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_35/while/add_1/y�
lstm_35/while/add_1AddV2(lstm_35_while_lstm_35_while_loop_counterlstm_35/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_35/while/add_1�
lstm_35/while/IdentityIdentitylstm_35/while/add_1:z:0^lstm_35/while/NoOp*
T0*
_output_shapes
: 2
lstm_35/while/Identity�
lstm_35/while/Identity_1Identity.lstm_35_while_lstm_35_while_maximum_iterations^lstm_35/while/NoOp*
T0*
_output_shapes
: 2
lstm_35/while/Identity_1�
lstm_35/while/Identity_2Identitylstm_35/while/add:z:0^lstm_35/while/NoOp*
T0*
_output_shapes
: 2
lstm_35/while/Identity_2�
lstm_35/while/Identity_3IdentityBlstm_35/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_35/while/NoOp*
T0*
_output_shapes
: 2
lstm_35/while/Identity_3�
lstm_35/while/Identity_4Identity$lstm_35/while/lstm_cell_69/mul_2:z:0^lstm_35/while/NoOp*
T0*'
_output_shapes
:��������� 2
lstm_35/while/Identity_4�
lstm_35/while/Identity_5Identity$lstm_35/while/lstm_cell_69/add_1:z:0^lstm_35/while/NoOp*
T0*'
_output_shapes
:��������� 2
lstm_35/while/Identity_5�
lstm_35/while/NoOpNoOp2^lstm_35/while/lstm_cell_69/BiasAdd/ReadVariableOp1^lstm_35/while/lstm_cell_69/MatMul/ReadVariableOp3^lstm_35/while/lstm_cell_69/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_35/while/NoOp"9
lstm_35_while_identitylstm_35/while/Identity:output:0"=
lstm_35_while_identity_1!lstm_35/while/Identity_1:output:0"=
lstm_35_while_identity_2!lstm_35/while/Identity_2:output:0"=
lstm_35_while_identity_3!lstm_35/while/Identity_3:output:0"=
lstm_35_while_identity_4!lstm_35/while/Identity_4:output:0"=
lstm_35_while_identity_5!lstm_35/while/Identity_5:output:0"P
%lstm_35_while_lstm_35_strided_slice_1'lstm_35_while_lstm_35_strided_slice_1_0"z
:lstm_35_while_lstm_cell_69_biasadd_readvariableop_resource<lstm_35_while_lstm_cell_69_biasadd_readvariableop_resource_0"|
;lstm_35_while_lstm_cell_69_matmul_1_readvariableop_resource=lstm_35_while_lstm_cell_69_matmul_1_readvariableop_resource_0"x
9lstm_35_while_lstm_cell_69_matmul_readvariableop_resource;lstm_35_while_lstm_cell_69_matmul_readvariableop_resource_0"�
alstm_35_while_tensorarrayv2read_tensorlistgetitem_lstm_35_tensorarrayunstack_tensorlistfromtensorclstm_35_while_tensorarrayv2read_tensorlistgetitem_lstm_35_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2f
1lstm_35/while/lstm_cell_69/BiasAdd/ReadVariableOp1lstm_35/while/lstm_cell_69/BiasAdd/ReadVariableOp2d
0lstm_35/while/lstm_cell_69/MatMul/ReadVariableOp0lstm_35/while/lstm_cell_69/MatMul/ReadVariableOp2h
2lstm_35/while/lstm_cell_69/MatMul_1/ReadVariableOp2lstm_35/while/lstm_cell_69/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�%
�
while_body_563965
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_68_563989_0:	�.
while_lstm_cell_68_563991_0:	@�*
while_lstm_cell_68_563993_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_68_563989:	�,
while_lstm_cell_68_563991:	@�(
while_lstm_cell_68_563993:	���*while/lstm_cell_68/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
*while/lstm_cell_68/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_68_563989_0while_lstm_cell_68_563991_0while_lstm_cell_68_563993_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������@:���������@:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_5639512,
*while/lstm_cell_68/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_68/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity3while/lstm_cell_68/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������@2
while/Identity_4�
while/Identity_5Identity3while/lstm_cell_68/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������@2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_68/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_68_563989while_lstm_cell_68_563989_0"8
while_lstm_cell_68_563991while_lstm_cell_68_563991_0"8
while_lstm_cell_68_563993while_lstm_cell_68_563993_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2X
*while/lstm_cell_68/StatefulPartitionedCall*while/lstm_cell_68/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�	
�
$__inference_signature_wrapper_566045
lstm_34_input
unknown:	�
	unknown_0:	@�
	unknown_1:	�
	unknown_2:	@�
	unknown_3:	 �
	unknown_4:	�
	unknown_5: 
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_34_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_5638762
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_34_input
�[
�
C__inference_lstm_34_layer_call_and_return_conditional_losses_565293

inputs>
+lstm_cell_68_matmul_readvariableop_resource:	�@
-lstm_cell_68_matmul_1_readvariableop_resource:	@�;
,lstm_cell_68_biasadd_readvariableop_resource:	�
identity��#lstm_cell_68/BiasAdd/ReadVariableOp�"lstm_cell_68/MatMul/ReadVariableOp�$lstm_cell_68/MatMul_1/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_68/MatMul/ReadVariableOpReadVariableOp+lstm_cell_68_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"lstm_cell_68/MatMul/ReadVariableOp�
lstm_cell_68/MatMulMatMulstrided_slice_2:output:0*lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_68/MatMul�
$lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype02&
$lstm_cell_68/MatMul_1/ReadVariableOp�
lstm_cell_68/MatMul_1MatMulzeros:output:0,lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_68/MatMul_1�
lstm_cell_68/addAddV2lstm_cell_68/MatMul:product:0lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_68/add�
#lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_68/BiasAdd/ReadVariableOp�
lstm_cell_68/BiasAddBiasAddlstm_cell_68/add:z:0+lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_68/BiasAdd~
lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_68/split/split_dim�
lstm_cell_68/splitSplit%lstm_cell_68/split/split_dim:output:0lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
lstm_cell_68/split�
lstm_cell_68/SigmoidSigmoidlstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/Sigmoid�
lstm_cell_68/Sigmoid_1Sigmoidlstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������@2
lstm_cell_68/Sigmoid_1�
lstm_cell_68/mulMullstm_cell_68/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/mul}
lstm_cell_68/ReluRelulstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������@2
lstm_cell_68/Relu�
lstm_cell_68/mul_1Mullstm_cell_68/Sigmoid:y:0lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/mul_1�
lstm_cell_68/add_1AddV2lstm_cell_68/mul:z:0lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/add_1�
lstm_cell_68/Sigmoid_2Sigmoidlstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������@2
lstm_cell_68/Sigmoid_2|
lstm_cell_68/Relu_1Relulstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/Relu_1�
lstm_cell_68/mul_2Mullstm_cell_68/Sigmoid_2:y:0!lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_68_matmul_readvariableop_resource-lstm_cell_68_matmul_1_readvariableop_resource,lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������@:���������@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_565209*
condR
while_cond_565208*K
output_shapes:
8: : : : :���������@:���������@: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������@2

Identity�
NoOpNoOp$^lstm_cell_68/BiasAdd/ReadVariableOp#^lstm_cell_68/MatMul/ReadVariableOp%^lstm_cell_68/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2J
#lstm_cell_68/BiasAdd/ReadVariableOp#lstm_cell_68/BiasAdd/ReadVariableOp2H
"lstm_cell_68/MatMul/ReadVariableOp"lstm_cell_68/MatMul/ReadVariableOp2L
$lstm_cell_68/MatMul_1/ReadVariableOp$lstm_cell_68/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
'sequential_17_lstm_35_while_cond_563784H
Dsequential_17_lstm_35_while_sequential_17_lstm_35_while_loop_counterN
Jsequential_17_lstm_35_while_sequential_17_lstm_35_while_maximum_iterations+
'sequential_17_lstm_35_while_placeholder-
)sequential_17_lstm_35_while_placeholder_1-
)sequential_17_lstm_35_while_placeholder_2-
)sequential_17_lstm_35_while_placeholder_3J
Fsequential_17_lstm_35_while_less_sequential_17_lstm_35_strided_slice_1`
\sequential_17_lstm_35_while_sequential_17_lstm_35_while_cond_563784___redundant_placeholder0`
\sequential_17_lstm_35_while_sequential_17_lstm_35_while_cond_563784___redundant_placeholder1`
\sequential_17_lstm_35_while_sequential_17_lstm_35_while_cond_563784___redundant_placeholder2`
\sequential_17_lstm_35_while_sequential_17_lstm_35_while_cond_563784___redundant_placeholder3(
$sequential_17_lstm_35_while_identity
�
 sequential_17/lstm_35/while/LessLess'sequential_17_lstm_35_while_placeholderFsequential_17_lstm_35_while_less_sequential_17_lstm_35_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_17/lstm_35/while/Less�
$sequential_17/lstm_35/while/IdentityIdentity$sequential_17/lstm_35/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_17/lstm_35/while/Identity"U
$sequential_17_lstm_35_while_identity-sequential_17/lstm_35/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�

�
.__inference_sequential_17_layer_call_fn_566087

inputs
unknown:	�
	unknown_0:	@�
	unknown_1:	�
	unknown_2:	@�
	unknown_3:	 �
	unknown_4:	�
	unknown_5: 
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_17_layer_call_and_return_conditional_losses_5659282
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
lstm_34_while_cond_566153,
(lstm_34_while_lstm_34_while_loop_counter2
.lstm_34_while_lstm_34_while_maximum_iterations
lstm_34_while_placeholder
lstm_34_while_placeholder_1
lstm_34_while_placeholder_2
lstm_34_while_placeholder_3.
*lstm_34_while_less_lstm_34_strided_slice_1D
@lstm_34_while_lstm_34_while_cond_566153___redundant_placeholder0D
@lstm_34_while_lstm_34_while_cond_566153___redundant_placeholder1D
@lstm_34_while_lstm_34_while_cond_566153___redundant_placeholder2D
@lstm_34_while_lstm_34_while_cond_566153___redundant_placeholder3
lstm_34_while_identity
�
lstm_34/while/LessLesslstm_34_while_placeholder*lstm_34_while_less_lstm_34_strided_slice_1*
T0*
_output_shapes
: 2
lstm_34/while/Lessu
lstm_34/while/IdentityIdentitylstm_34/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_34/while/Identity"9
lstm_34_while_identitylstm_34/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������@:���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�^
�
'sequential_17_lstm_34_while_body_563638H
Dsequential_17_lstm_34_while_sequential_17_lstm_34_while_loop_counterN
Jsequential_17_lstm_34_while_sequential_17_lstm_34_while_maximum_iterations+
'sequential_17_lstm_34_while_placeholder-
)sequential_17_lstm_34_while_placeholder_1-
)sequential_17_lstm_34_while_placeholder_2-
)sequential_17_lstm_34_while_placeholder_3G
Csequential_17_lstm_34_while_sequential_17_lstm_34_strided_slice_1_0�
sequential_17_lstm_34_while_tensorarrayv2read_tensorlistgetitem_sequential_17_lstm_34_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_17_lstm_34_while_lstm_cell_68_matmul_readvariableop_resource_0:	�^
Ksequential_17_lstm_34_while_lstm_cell_68_matmul_1_readvariableop_resource_0:	@�Y
Jsequential_17_lstm_34_while_lstm_cell_68_biasadd_readvariableop_resource_0:	�(
$sequential_17_lstm_34_while_identity*
&sequential_17_lstm_34_while_identity_1*
&sequential_17_lstm_34_while_identity_2*
&sequential_17_lstm_34_while_identity_3*
&sequential_17_lstm_34_while_identity_4*
&sequential_17_lstm_34_while_identity_5E
Asequential_17_lstm_34_while_sequential_17_lstm_34_strided_slice_1�
}sequential_17_lstm_34_while_tensorarrayv2read_tensorlistgetitem_sequential_17_lstm_34_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_17_lstm_34_while_lstm_cell_68_matmul_readvariableop_resource:	�\
Isequential_17_lstm_34_while_lstm_cell_68_matmul_1_readvariableop_resource:	@�W
Hsequential_17_lstm_34_while_lstm_cell_68_biasadd_readvariableop_resource:	���?sequential_17/lstm_34/while/lstm_cell_68/BiasAdd/ReadVariableOp�>sequential_17/lstm_34/while/lstm_cell_68/MatMul/ReadVariableOp�@sequential_17/lstm_34/while/lstm_cell_68/MatMul_1/ReadVariableOp�
Msequential_17/lstm_34/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2O
Msequential_17/lstm_34/while/TensorArrayV2Read/TensorListGetItem/element_shape�
?sequential_17/lstm_34/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_17_lstm_34_while_tensorarrayv2read_tensorlistgetitem_sequential_17_lstm_34_tensorarrayunstack_tensorlistfromtensor_0'sequential_17_lstm_34_while_placeholderVsequential_17/lstm_34/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02A
?sequential_17/lstm_34/while/TensorArrayV2Read/TensorListGetItem�
>sequential_17/lstm_34/while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOpIsequential_17_lstm_34_while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02@
>sequential_17/lstm_34/while/lstm_cell_68/MatMul/ReadVariableOp�
/sequential_17/lstm_34/while/lstm_cell_68/MatMulMatMulFsequential_17/lstm_34/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_17/lstm_34/while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������21
/sequential_17/lstm_34/while/lstm_cell_68/MatMul�
@sequential_17/lstm_34/while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOpKsequential_17_lstm_34_while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype02B
@sequential_17/lstm_34/while/lstm_cell_68/MatMul_1/ReadVariableOp�
1sequential_17/lstm_34/while/lstm_cell_68/MatMul_1MatMul)sequential_17_lstm_34_while_placeholder_2Hsequential_17/lstm_34/while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������23
1sequential_17/lstm_34/while/lstm_cell_68/MatMul_1�
,sequential_17/lstm_34/while/lstm_cell_68/addAddV29sequential_17/lstm_34/while/lstm_cell_68/MatMul:product:0;sequential_17/lstm_34/while/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:����������2.
,sequential_17/lstm_34/while/lstm_cell_68/add�
?sequential_17/lstm_34/while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOpJsequential_17_lstm_34_while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02A
?sequential_17/lstm_34/while/lstm_cell_68/BiasAdd/ReadVariableOp�
0sequential_17/lstm_34/while/lstm_cell_68/BiasAddBiasAdd0sequential_17/lstm_34/while/lstm_cell_68/add:z:0Gsequential_17/lstm_34/while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������22
0sequential_17/lstm_34/while/lstm_cell_68/BiasAdd�
8sequential_17/lstm_34/while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_17/lstm_34/while/lstm_cell_68/split/split_dim�
.sequential_17/lstm_34/while/lstm_cell_68/splitSplitAsequential_17/lstm_34/while/lstm_cell_68/split/split_dim:output:09sequential_17/lstm_34/while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split20
.sequential_17/lstm_34/while/lstm_cell_68/split�
0sequential_17/lstm_34/while/lstm_cell_68/SigmoidSigmoid7sequential_17/lstm_34/while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������@22
0sequential_17/lstm_34/while/lstm_cell_68/Sigmoid�
2sequential_17/lstm_34/while/lstm_cell_68/Sigmoid_1Sigmoid7sequential_17/lstm_34/while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������@24
2sequential_17/lstm_34/while/lstm_cell_68/Sigmoid_1�
,sequential_17/lstm_34/while/lstm_cell_68/mulMul6sequential_17/lstm_34/while/lstm_cell_68/Sigmoid_1:y:0)sequential_17_lstm_34_while_placeholder_3*
T0*'
_output_shapes
:���������@2.
,sequential_17/lstm_34/while/lstm_cell_68/mul�
-sequential_17/lstm_34/while/lstm_cell_68/ReluRelu7sequential_17/lstm_34/while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������@2/
-sequential_17/lstm_34/while/lstm_cell_68/Relu�
.sequential_17/lstm_34/while/lstm_cell_68/mul_1Mul4sequential_17/lstm_34/while/lstm_cell_68/Sigmoid:y:0;sequential_17/lstm_34/while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������@20
.sequential_17/lstm_34/while/lstm_cell_68/mul_1�
.sequential_17/lstm_34/while/lstm_cell_68/add_1AddV20sequential_17/lstm_34/while/lstm_cell_68/mul:z:02sequential_17/lstm_34/while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������@20
.sequential_17/lstm_34/while/lstm_cell_68/add_1�
2sequential_17/lstm_34/while/lstm_cell_68/Sigmoid_2Sigmoid7sequential_17/lstm_34/while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������@24
2sequential_17/lstm_34/while/lstm_cell_68/Sigmoid_2�
/sequential_17/lstm_34/while/lstm_cell_68/Relu_1Relu2sequential_17/lstm_34/while/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������@21
/sequential_17/lstm_34/while/lstm_cell_68/Relu_1�
.sequential_17/lstm_34/while/lstm_cell_68/mul_2Mul6sequential_17/lstm_34/while/lstm_cell_68/Sigmoid_2:y:0=sequential_17/lstm_34/while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������@20
.sequential_17/lstm_34/while/lstm_cell_68/mul_2�
@sequential_17/lstm_34/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_17_lstm_34_while_placeholder_1'sequential_17_lstm_34_while_placeholder2sequential_17/lstm_34/while/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype02B
@sequential_17/lstm_34/while/TensorArrayV2Write/TensorListSetItem�
!sequential_17/lstm_34/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_17/lstm_34/while/add/y�
sequential_17/lstm_34/while/addAddV2'sequential_17_lstm_34_while_placeholder*sequential_17/lstm_34/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_17/lstm_34/while/add�
#sequential_17/lstm_34/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_17/lstm_34/while/add_1/y�
!sequential_17/lstm_34/while/add_1AddV2Dsequential_17_lstm_34_while_sequential_17_lstm_34_while_loop_counter,sequential_17/lstm_34/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_17/lstm_34/while/add_1�
$sequential_17/lstm_34/while/IdentityIdentity%sequential_17/lstm_34/while/add_1:z:0!^sequential_17/lstm_34/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_17/lstm_34/while/Identity�
&sequential_17/lstm_34/while/Identity_1IdentityJsequential_17_lstm_34_while_sequential_17_lstm_34_while_maximum_iterations!^sequential_17/lstm_34/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_17/lstm_34/while/Identity_1�
&sequential_17/lstm_34/while/Identity_2Identity#sequential_17/lstm_34/while/add:z:0!^sequential_17/lstm_34/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_17/lstm_34/while/Identity_2�
&sequential_17/lstm_34/while/Identity_3IdentityPsequential_17/lstm_34/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_17/lstm_34/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_17/lstm_34/while/Identity_3�
&sequential_17/lstm_34/while/Identity_4Identity2sequential_17/lstm_34/while/lstm_cell_68/mul_2:z:0!^sequential_17/lstm_34/while/NoOp*
T0*'
_output_shapes
:���������@2(
&sequential_17/lstm_34/while/Identity_4�
&sequential_17/lstm_34/while/Identity_5Identity2sequential_17/lstm_34/while/lstm_cell_68/add_1:z:0!^sequential_17/lstm_34/while/NoOp*
T0*'
_output_shapes
:���������@2(
&sequential_17/lstm_34/while/Identity_5�
 sequential_17/lstm_34/while/NoOpNoOp@^sequential_17/lstm_34/while/lstm_cell_68/BiasAdd/ReadVariableOp?^sequential_17/lstm_34/while/lstm_cell_68/MatMul/ReadVariableOpA^sequential_17/lstm_34/while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2"
 sequential_17/lstm_34/while/NoOp"U
$sequential_17_lstm_34_while_identity-sequential_17/lstm_34/while/Identity:output:0"Y
&sequential_17_lstm_34_while_identity_1/sequential_17/lstm_34/while/Identity_1:output:0"Y
&sequential_17_lstm_34_while_identity_2/sequential_17/lstm_34/while/Identity_2:output:0"Y
&sequential_17_lstm_34_while_identity_3/sequential_17/lstm_34/while/Identity_3:output:0"Y
&sequential_17_lstm_34_while_identity_4/sequential_17/lstm_34/while/Identity_4:output:0"Y
&sequential_17_lstm_34_while_identity_5/sequential_17/lstm_34/while/Identity_5:output:0"�
Hsequential_17_lstm_34_while_lstm_cell_68_biasadd_readvariableop_resourceJsequential_17_lstm_34_while_lstm_cell_68_biasadd_readvariableop_resource_0"�
Isequential_17_lstm_34_while_lstm_cell_68_matmul_1_readvariableop_resourceKsequential_17_lstm_34_while_lstm_cell_68_matmul_1_readvariableop_resource_0"�
Gsequential_17_lstm_34_while_lstm_cell_68_matmul_readvariableop_resourceIsequential_17_lstm_34_while_lstm_cell_68_matmul_readvariableop_resource_0"�
Asequential_17_lstm_34_while_sequential_17_lstm_34_strided_slice_1Csequential_17_lstm_34_while_sequential_17_lstm_34_strided_slice_1_0"�
}sequential_17_lstm_34_while_tensorarrayv2read_tensorlistgetitem_sequential_17_lstm_34_tensorarrayunstack_tensorlistfromtensorsequential_17_lstm_34_while_tensorarrayv2read_tensorlistgetitem_sequential_17_lstm_34_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2�
?sequential_17/lstm_34/while/lstm_cell_68/BiasAdd/ReadVariableOp?sequential_17/lstm_34/while/lstm_cell_68/BiasAdd/ReadVariableOp2�
>sequential_17/lstm_34/while/lstm_cell_68/MatMul/ReadVariableOp>sequential_17/lstm_34/while/lstm_cell_68/MatMul/ReadVariableOp2�
@sequential_17/lstm_34/while/lstm_cell_68/MatMul_1/ReadVariableOp@sequential_17/lstm_34/while/lstm_cell_68/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�

�
.__inference_sequential_17_layer_call_fn_566066

inputs
unknown:	�
	unknown_0:	@�
	unknown_1:	�
	unknown_2:	@�
	unknown_3:	 �
	unknown_4:	�
	unknown_5: 
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_17_layer_call_and_return_conditional_losses_5654832
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�?
�
while_body_565367
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_69_matmul_readvariableop_resource_0:	@�H
5while_lstm_cell_69_matmul_1_readvariableop_resource_0:	 �C
4while_lstm_cell_69_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_69_matmul_readvariableop_resource:	@�F
3while_lstm_cell_69_matmul_1_readvariableop_resource:	 �A
2while_lstm_cell_69_biasadd_readvariableop_resource:	���)while/lstm_cell_69/BiasAdd/ReadVariableOp�(while/lstm_cell_69/MatMul/ReadVariableOp�*while/lstm_cell_69/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_69/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_69_matmul_readvariableop_resource_0*
_output_shapes
:	@�*
dtype02*
(while/lstm_cell_69/MatMul/ReadVariableOp�
while/lstm_cell_69/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_69/MatMul�
*while/lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_69_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02,
*while/lstm_cell_69/MatMul_1/ReadVariableOp�
while/lstm_cell_69/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_69/MatMul_1�
while/lstm_cell_69/addAddV2#while/lstm_cell_69/MatMul:product:0%while/lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_69/add�
)while/lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_69_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_69/BiasAdd/ReadVariableOp�
while/lstm_cell_69/BiasAddBiasAddwhile/lstm_cell_69/add:z:01while/lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_69/BiasAdd�
"while/lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_69/split/split_dim�
while/lstm_cell_69/splitSplit+while/lstm_cell_69/split/split_dim:output:0#while/lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
while/lstm_cell_69/split�
while/lstm_cell_69/SigmoidSigmoid!while/lstm_cell_69/split:output:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/Sigmoid�
while/lstm_cell_69/Sigmoid_1Sigmoid!while/lstm_cell_69/split:output:1*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/Sigmoid_1�
while/lstm_cell_69/mulMul while/lstm_cell_69/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/mul�
while/lstm_cell_69/ReluRelu!while/lstm_cell_69/split:output:2*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/Relu�
while/lstm_cell_69/mul_1Mulwhile/lstm_cell_69/Sigmoid:y:0%while/lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/mul_1�
while/lstm_cell_69/add_1AddV2while/lstm_cell_69/mul:z:0while/lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/add_1�
while/lstm_cell_69/Sigmoid_2Sigmoid!while/lstm_cell_69/split:output:3*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/Sigmoid_2�
while/lstm_cell_69/Relu_1Reluwhile/lstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/Relu_1�
while/lstm_cell_69/mul_2Mul while/lstm_cell_69/Sigmoid_2:y:0'while/lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_69/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_69/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:��������� 2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_69/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:��������� 2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_69/BiasAdd/ReadVariableOp)^while/lstm_cell_69/MatMul/ReadVariableOp+^while/lstm_cell_69/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_69_biasadd_readvariableop_resource4while_lstm_cell_69_biasadd_readvariableop_resource_0"l
3while_lstm_cell_69_matmul_1_readvariableop_resource5while_lstm_cell_69_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_69_matmul_readvariableop_resource3while_lstm_cell_69_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2V
)while/lstm_cell_69/BiasAdd/ReadVariableOp)while/lstm_cell_69/BiasAdd/ReadVariableOp2T
(while/lstm_cell_69/MatMul/ReadVariableOp(while/lstm_cell_69/MatMul/ReadVariableOp2X
*while/lstm_cell_69/MatMul_1/ReadVariableOp*while/lstm_cell_69/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�I
�
__inference__traced_save_568358
file_prefix.
*savev2_dense_17_kernel_read_readvariableop,
(savev2_dense_17_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_34_lstm_cell_68_kernel_read_readvariableopD
@savev2_lstm_34_lstm_cell_68_recurrent_kernel_read_readvariableop8
4savev2_lstm_34_lstm_cell_68_bias_read_readvariableop:
6savev2_lstm_35_lstm_cell_69_kernel_read_readvariableopD
@savev2_lstm_35_lstm_cell_69_recurrent_kernel_read_readvariableop8
4savev2_lstm_35_lstm_cell_69_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_17_kernel_m_read_readvariableop3
/savev2_adam_dense_17_bias_m_read_readvariableopA
=savev2_adam_lstm_34_lstm_cell_68_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_34_lstm_cell_68_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_34_lstm_cell_68_bias_m_read_readvariableopA
=savev2_adam_lstm_35_lstm_cell_69_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_35_lstm_cell_69_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_35_lstm_cell_69_bias_m_read_readvariableop5
1savev2_adam_dense_17_kernel_v_read_readvariableop3
/savev2_adam_dense_17_bias_v_read_readvariableopA
=savev2_adam_lstm_34_lstm_cell_68_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_34_lstm_cell_68_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_34_lstm_cell_68_bias_v_read_readvariableopA
=savev2_adam_lstm_35_lstm_cell_69_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_35_lstm_cell_69_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_35_lstm_cell_69_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_17_kernel_read_readvariableop(savev2_dense_17_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_34_lstm_cell_68_kernel_read_readvariableop@savev2_lstm_34_lstm_cell_68_recurrent_kernel_read_readvariableop4savev2_lstm_34_lstm_cell_68_bias_read_readvariableop6savev2_lstm_35_lstm_cell_69_kernel_read_readvariableop@savev2_lstm_35_lstm_cell_69_recurrent_kernel_read_readvariableop4savev2_lstm_35_lstm_cell_69_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_17_kernel_m_read_readvariableop/savev2_adam_dense_17_bias_m_read_readvariableop=savev2_adam_lstm_34_lstm_cell_68_kernel_m_read_readvariableopGsavev2_adam_lstm_34_lstm_cell_68_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_34_lstm_cell_68_bias_m_read_readvariableop=savev2_adam_lstm_35_lstm_cell_69_kernel_m_read_readvariableopGsavev2_adam_lstm_35_lstm_cell_69_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_35_lstm_cell_69_bias_m_read_readvariableop1savev2_adam_dense_17_kernel_v_read_readvariableop/savev2_adam_dense_17_bias_v_read_readvariableop=savev2_adam_lstm_34_lstm_cell_68_kernel_v_read_readvariableopGsavev2_adam_lstm_34_lstm_cell_68_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_34_lstm_cell_68_bias_v_read_readvariableop=savev2_adam_lstm_35_lstm_cell_69_kernel_v_read_readvariableopGsavev2_adam_lstm_35_lstm_cell_69_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_35_lstm_cell_69_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *.
dtypes$
"2 	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*�
_input_shapes�
�: : :: : : : : :	�:	@�:�:	@�:	 �:�: : : ::	�:	@�:�:	@�:	 �:�: ::	�:	@�:�:	@�:	 �:�: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:%	!

_output_shapes
:	@�:!


_output_shapes	
:�:%!

_output_shapes
:	@�:%!

_output_shapes
:	 �:!

_output_shapes	
:�:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::%!

_output_shapes
:	�:%!

_output_shapes
:	@�:!

_output_shapes	
:�:%!

_output_shapes
:	@�:%!

_output_shapes
:	 �:!

_output_shapes	
:�:$ 

_output_shapes

: : 

_output_shapes
::%!

_output_shapes
:	�:%!

_output_shapes
:	@�:!

_output_shapes	
:�:%!

_output_shapes
:	@�:%!

_output_shapes
:	 �:!

_output_shapes	
:�: 

_output_shapes
: 
�?
�
while_body_567765
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_69_matmul_readvariableop_resource_0:	@�H
5while_lstm_cell_69_matmul_1_readvariableop_resource_0:	 �C
4while_lstm_cell_69_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_69_matmul_readvariableop_resource:	@�F
3while_lstm_cell_69_matmul_1_readvariableop_resource:	 �A
2while_lstm_cell_69_biasadd_readvariableop_resource:	���)while/lstm_cell_69/BiasAdd/ReadVariableOp�(while/lstm_cell_69/MatMul/ReadVariableOp�*while/lstm_cell_69/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_69/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_69_matmul_readvariableop_resource_0*
_output_shapes
:	@�*
dtype02*
(while/lstm_cell_69/MatMul/ReadVariableOp�
while/lstm_cell_69/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_69/MatMul�
*while/lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_69_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02,
*while/lstm_cell_69/MatMul_1/ReadVariableOp�
while/lstm_cell_69/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_69/MatMul_1�
while/lstm_cell_69/addAddV2#while/lstm_cell_69/MatMul:product:0%while/lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_69/add�
)while/lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_69_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_69/BiasAdd/ReadVariableOp�
while/lstm_cell_69/BiasAddBiasAddwhile/lstm_cell_69/add:z:01while/lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_69/BiasAdd�
"while/lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_69/split/split_dim�
while/lstm_cell_69/splitSplit+while/lstm_cell_69/split/split_dim:output:0#while/lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
while/lstm_cell_69/split�
while/lstm_cell_69/SigmoidSigmoid!while/lstm_cell_69/split:output:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/Sigmoid�
while/lstm_cell_69/Sigmoid_1Sigmoid!while/lstm_cell_69/split:output:1*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/Sigmoid_1�
while/lstm_cell_69/mulMul while/lstm_cell_69/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/mul�
while/lstm_cell_69/ReluRelu!while/lstm_cell_69/split:output:2*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/Relu�
while/lstm_cell_69/mul_1Mulwhile/lstm_cell_69/Sigmoid:y:0%while/lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/mul_1�
while/lstm_cell_69/add_1AddV2while/lstm_cell_69/mul:z:0while/lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/add_1�
while/lstm_cell_69/Sigmoid_2Sigmoid!while/lstm_cell_69/split:output:3*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/Sigmoid_2�
while/lstm_cell_69/Relu_1Reluwhile/lstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/Relu_1�
while/lstm_cell_69/mul_2Mul while/lstm_cell_69/Sigmoid_2:y:0'while/lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_69/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_69/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:��������� 2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_69/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:��������� 2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_69/BiasAdd/ReadVariableOp)^while/lstm_cell_69/MatMul/ReadVariableOp+^while/lstm_cell_69/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_69_biasadd_readvariableop_resource4while_lstm_cell_69_biasadd_readvariableop_resource_0"l
3while_lstm_cell_69_matmul_1_readvariableop_resource5while_lstm_cell_69_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_69_matmul_readvariableop_resource3while_lstm_cell_69_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2V
)while/lstm_cell_69/BiasAdd/ReadVariableOp)while/lstm_cell_69/BiasAdd/ReadVariableOp2T
(while/lstm_cell_69/MatMul/ReadVariableOp(while/lstm_cell_69/MatMul/ReadVariableOp2X
*while/lstm_cell_69/MatMul_1/ReadVariableOp*while/lstm_cell_69/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�
�
(__inference_lstm_34_layer_call_fn_566726
inputs_0
unknown:	�
	unknown_0:	@�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_34_layer_call_and_return_conditional_losses_5642442
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
I__inference_sequential_17_layer_call_and_return_conditional_losses_565992
lstm_34_input!
lstm_34_565971:	�!
lstm_34_565973:	@�
lstm_34_565975:	�!
lstm_35_565978:	@�!
lstm_35_565980:	 �
lstm_35_565982:	�!
dense_17_565986: 
dense_17_565988:
identity�� dense_17/StatefulPartitionedCall�lstm_34/StatefulPartitionedCall�lstm_35/StatefulPartitionedCall�
lstm_34/StatefulPartitionedCallStatefulPartitionedCalllstm_34_inputlstm_34_565971lstm_34_565973lstm_34_565975*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_34_layer_call_and_return_conditional_losses_5652932!
lstm_34/StatefulPartitionedCall�
lstm_35/StatefulPartitionedCallStatefulPartitionedCall(lstm_34/StatefulPartitionedCall:output:0lstm_35_565978lstm_35_565980lstm_35_565982*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_35_layer_call_and_return_conditional_losses_5654512!
lstm_35/StatefulPartitionedCall�
dropout_17/PartitionedCallPartitionedCall(lstm_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_17_layer_call_and_return_conditional_losses_5654642
dropout_17/PartitionedCall�
 dense_17/StatefulPartitionedCallStatefulPartitionedCall#dropout_17/PartitionedCall:output:0dense_17_565986dense_17_565988*
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
GPU 2J 8� *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_5654762"
 dense_17/StatefulPartitionedCall�
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp!^dense_17/StatefulPartitionedCall ^lstm_34/StatefulPartitionedCall ^lstm_35/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2B
lstm_34/StatefulPartitionedCalllstm_34/StatefulPartitionedCall2B
lstm_35/StatefulPartitionedCalllstm_35/StatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_34_input
�J
�

lstm_35_while_body_566606,
(lstm_35_while_lstm_35_while_loop_counter2
.lstm_35_while_lstm_35_while_maximum_iterations
lstm_35_while_placeholder
lstm_35_while_placeholder_1
lstm_35_while_placeholder_2
lstm_35_while_placeholder_3+
'lstm_35_while_lstm_35_strided_slice_1_0g
clstm_35_while_tensorarrayv2read_tensorlistgetitem_lstm_35_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_35_while_lstm_cell_69_matmul_readvariableop_resource_0:	@�P
=lstm_35_while_lstm_cell_69_matmul_1_readvariableop_resource_0:	 �K
<lstm_35_while_lstm_cell_69_biasadd_readvariableop_resource_0:	�
lstm_35_while_identity
lstm_35_while_identity_1
lstm_35_while_identity_2
lstm_35_while_identity_3
lstm_35_while_identity_4
lstm_35_while_identity_5)
%lstm_35_while_lstm_35_strided_slice_1e
alstm_35_while_tensorarrayv2read_tensorlistgetitem_lstm_35_tensorarrayunstack_tensorlistfromtensorL
9lstm_35_while_lstm_cell_69_matmul_readvariableop_resource:	@�N
;lstm_35_while_lstm_cell_69_matmul_1_readvariableop_resource:	 �I
:lstm_35_while_lstm_cell_69_biasadd_readvariableop_resource:	���1lstm_35/while/lstm_cell_69/BiasAdd/ReadVariableOp�0lstm_35/while/lstm_cell_69/MatMul/ReadVariableOp�2lstm_35/while/lstm_cell_69/MatMul_1/ReadVariableOp�
?lstm_35/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2A
?lstm_35/while/TensorArrayV2Read/TensorListGetItem/element_shape�
1lstm_35/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_35_while_tensorarrayv2read_tensorlistgetitem_lstm_35_tensorarrayunstack_tensorlistfromtensor_0lstm_35_while_placeholderHlstm_35/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype023
1lstm_35/while/TensorArrayV2Read/TensorListGetItem�
0lstm_35/while/lstm_cell_69/MatMul/ReadVariableOpReadVariableOp;lstm_35_while_lstm_cell_69_matmul_readvariableop_resource_0*
_output_shapes
:	@�*
dtype022
0lstm_35/while/lstm_cell_69/MatMul/ReadVariableOp�
!lstm_35/while/lstm_cell_69/MatMulMatMul8lstm_35/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_35/while/lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2#
!lstm_35/while/lstm_cell_69/MatMul�
2lstm_35/while/lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOp=lstm_35_while_lstm_cell_69_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype024
2lstm_35/while/lstm_cell_69/MatMul_1/ReadVariableOp�
#lstm_35/while/lstm_cell_69/MatMul_1MatMullstm_35_while_placeholder_2:lstm_35/while/lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2%
#lstm_35/while/lstm_cell_69/MatMul_1�
lstm_35/while/lstm_cell_69/addAddV2+lstm_35/while/lstm_cell_69/MatMul:product:0-lstm_35/while/lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:����������2 
lstm_35/while/lstm_cell_69/add�
1lstm_35/while/lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOp<lstm_35_while_lstm_cell_69_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype023
1lstm_35/while/lstm_cell_69/BiasAdd/ReadVariableOp�
"lstm_35/while/lstm_cell_69/BiasAddBiasAdd"lstm_35/while/lstm_cell_69/add:z:09lstm_35/while/lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2$
"lstm_35/while/lstm_cell_69/BiasAdd�
*lstm_35/while/lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_35/while/lstm_cell_69/split/split_dim�
 lstm_35/while/lstm_cell_69/splitSplit3lstm_35/while/lstm_cell_69/split/split_dim:output:0+lstm_35/while/lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2"
 lstm_35/while/lstm_cell_69/split�
"lstm_35/while/lstm_cell_69/SigmoidSigmoid)lstm_35/while/lstm_cell_69/split:output:0*
T0*'
_output_shapes
:��������� 2$
"lstm_35/while/lstm_cell_69/Sigmoid�
$lstm_35/while/lstm_cell_69/Sigmoid_1Sigmoid)lstm_35/while/lstm_cell_69/split:output:1*
T0*'
_output_shapes
:��������� 2&
$lstm_35/while/lstm_cell_69/Sigmoid_1�
lstm_35/while/lstm_cell_69/mulMul(lstm_35/while/lstm_cell_69/Sigmoid_1:y:0lstm_35_while_placeholder_3*
T0*'
_output_shapes
:��������� 2 
lstm_35/while/lstm_cell_69/mul�
lstm_35/while/lstm_cell_69/ReluRelu)lstm_35/while/lstm_cell_69/split:output:2*
T0*'
_output_shapes
:��������� 2!
lstm_35/while/lstm_cell_69/Relu�
 lstm_35/while/lstm_cell_69/mul_1Mul&lstm_35/while/lstm_cell_69/Sigmoid:y:0-lstm_35/while/lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:��������� 2"
 lstm_35/while/lstm_cell_69/mul_1�
 lstm_35/while/lstm_cell_69/add_1AddV2"lstm_35/while/lstm_cell_69/mul:z:0$lstm_35/while/lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:��������� 2"
 lstm_35/while/lstm_cell_69/add_1�
$lstm_35/while/lstm_cell_69/Sigmoid_2Sigmoid)lstm_35/while/lstm_cell_69/split:output:3*
T0*'
_output_shapes
:��������� 2&
$lstm_35/while/lstm_cell_69/Sigmoid_2�
!lstm_35/while/lstm_cell_69/Relu_1Relu$lstm_35/while/lstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:��������� 2#
!lstm_35/while/lstm_cell_69/Relu_1�
 lstm_35/while/lstm_cell_69/mul_2Mul(lstm_35/while/lstm_cell_69/Sigmoid_2:y:0/lstm_35/while/lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2"
 lstm_35/while/lstm_cell_69/mul_2�
2lstm_35/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_35_while_placeholder_1lstm_35_while_placeholder$lstm_35/while/lstm_cell_69/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_35/while/TensorArrayV2Write/TensorListSetIteml
lstm_35/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_35/while/add/y�
lstm_35/while/addAddV2lstm_35_while_placeholderlstm_35/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_35/while/addp
lstm_35/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_35/while/add_1/y�
lstm_35/while/add_1AddV2(lstm_35_while_lstm_35_while_loop_counterlstm_35/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_35/while/add_1�
lstm_35/while/IdentityIdentitylstm_35/while/add_1:z:0^lstm_35/while/NoOp*
T0*
_output_shapes
: 2
lstm_35/while/Identity�
lstm_35/while/Identity_1Identity.lstm_35_while_lstm_35_while_maximum_iterations^lstm_35/while/NoOp*
T0*
_output_shapes
: 2
lstm_35/while/Identity_1�
lstm_35/while/Identity_2Identitylstm_35/while/add:z:0^lstm_35/while/NoOp*
T0*
_output_shapes
: 2
lstm_35/while/Identity_2�
lstm_35/while/Identity_3IdentityBlstm_35/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_35/while/NoOp*
T0*
_output_shapes
: 2
lstm_35/while/Identity_3�
lstm_35/while/Identity_4Identity$lstm_35/while/lstm_cell_69/mul_2:z:0^lstm_35/while/NoOp*
T0*'
_output_shapes
:��������� 2
lstm_35/while/Identity_4�
lstm_35/while/Identity_5Identity$lstm_35/while/lstm_cell_69/add_1:z:0^lstm_35/while/NoOp*
T0*'
_output_shapes
:��������� 2
lstm_35/while/Identity_5�
lstm_35/while/NoOpNoOp2^lstm_35/while/lstm_cell_69/BiasAdd/ReadVariableOp1^lstm_35/while/lstm_cell_69/MatMul/ReadVariableOp3^lstm_35/while/lstm_cell_69/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_35/while/NoOp"9
lstm_35_while_identitylstm_35/while/Identity:output:0"=
lstm_35_while_identity_1!lstm_35/while/Identity_1:output:0"=
lstm_35_while_identity_2!lstm_35/while/Identity_2:output:0"=
lstm_35_while_identity_3!lstm_35/while/Identity_3:output:0"=
lstm_35_while_identity_4!lstm_35/while/Identity_4:output:0"=
lstm_35_while_identity_5!lstm_35/while/Identity_5:output:0"P
%lstm_35_while_lstm_35_strided_slice_1'lstm_35_while_lstm_35_strided_slice_1_0"z
:lstm_35_while_lstm_cell_69_biasadd_readvariableop_resource<lstm_35_while_lstm_cell_69_biasadd_readvariableop_resource_0"|
;lstm_35_while_lstm_cell_69_matmul_1_readvariableop_resource=lstm_35_while_lstm_cell_69_matmul_1_readvariableop_resource_0"x
9lstm_35_while_lstm_cell_69_matmul_readvariableop_resource;lstm_35_while_lstm_cell_69_matmul_readvariableop_resource_0"�
alstm_35_while_tensorarrayv2read_tensorlistgetitem_lstm_35_tensorarrayunstack_tensorlistfromtensorclstm_35_while_tensorarrayv2read_tensorlistgetitem_lstm_35_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2f
1lstm_35/while/lstm_cell_69/BiasAdd/ReadVariableOp1lstm_35/while/lstm_cell_69/BiasAdd/ReadVariableOp2d
0lstm_35/while/lstm_cell_69/MatMul/ReadVariableOp0lstm_35/while/lstm_cell_69/MatMul/ReadVariableOp2h
2lstm_35/while/lstm_cell_69/MatMul_1/ReadVariableOp2lstm_35/while/lstm_cell_69/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�
�
H__inference_lstm_cell_69_layer_call_and_return_conditional_losses_568210

inputs
states_0
states_11
matmul_readvariableop_resource:	@�3
 matmul_1_readvariableop_resource:	 �.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:��������� 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:��������� 2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:��������� 2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:��������� 2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:��������� 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:��������� 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:��������� 2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:��������� 2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:��������� 2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:��������� 2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:��������� 2

Identity_2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������@:��������� :��������� : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/0:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/1
�
�
(__inference_lstm_35_layer_call_fn_567385

inputs
unknown:	@�
	unknown_0:	 �
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_35_layer_call_and_return_conditional_losses_5654512
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
.__inference_sequential_17_layer_call_fn_565968
lstm_34_input
unknown:	�
	unknown_0:	@�
	unknown_1:	�
	unknown_2:	@�
	unknown_3:	 �
	unknown_4:	�
	unknown_5: 
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_34_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_17_layer_call_and_return_conditional_losses_5659282
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_34_input
�
�
H__inference_lstm_cell_69_layer_call_and_return_conditional_losses_564581

inputs

states
states_11
matmul_readvariableop_resource:	@�3
 matmul_1_readvariableop_resource:	 �.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:��������� 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:��������� 2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:��������� 2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:��������� 2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:��������� 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:��������� 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:��������� 2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:��������� 2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:��������� 2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:��������� 2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:��������� 2

Identity_2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������@:��������� :��������� : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs:OK
'
_output_shapes
:��������� 
 
_user_specified_namestates:OK
'
_output_shapes
:��������� 
 
_user_specified_namestates
�
�
while_cond_565366
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_565366___redundant_placeholder04
0while_while_cond_565366___redundant_placeholder14
0while_while_cond_565366___redundant_placeholder24
0while_while_cond_565366___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�
�
)__inference_dense_17_layer_call_fn_568036

inputs
unknown: 
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
GPU 2J 8� *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_5654762
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
-__inference_lstm_cell_69_layer_call_fn_568178

inputs
states_0
states_1
unknown:	@�
	unknown_0:	 �
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_69_layer_call_and_return_conditional_losses_5647272
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� 2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:��������� 2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:��������� 2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������@:��������� :��������� : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/0:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/1
�F
�
C__inference_lstm_34_layer_call_and_return_conditional_losses_564244

inputs&
lstm_cell_68_564162:	�&
lstm_cell_68_564164:	@�"
lstm_cell_68_564166:	�
identity��$lstm_cell_68/StatefulPartitionedCall�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
$lstm_cell_68/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_68_564162lstm_cell_68_564164lstm_cell_68_564166*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������@:���������@:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_5640972&
$lstm_cell_68/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_68_564162lstm_cell_68_564164lstm_cell_68_564166*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������@:���������@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_564175*
condR
while_cond_564174*K
output_shapes:
8: : : : :���������@:���������@: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������@2

Identity}
NoOpNoOp%^lstm_cell_68/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_68/StatefulPartitionedCall$lstm_cell_68/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�?
�
while_body_567916
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_69_matmul_readvariableop_resource_0:	@�H
5while_lstm_cell_69_matmul_1_readvariableop_resource_0:	 �C
4while_lstm_cell_69_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_69_matmul_readvariableop_resource:	@�F
3while_lstm_cell_69_matmul_1_readvariableop_resource:	 �A
2while_lstm_cell_69_biasadd_readvariableop_resource:	���)while/lstm_cell_69/BiasAdd/ReadVariableOp�(while/lstm_cell_69/MatMul/ReadVariableOp�*while/lstm_cell_69/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_69/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_69_matmul_readvariableop_resource_0*
_output_shapes
:	@�*
dtype02*
(while/lstm_cell_69/MatMul/ReadVariableOp�
while/lstm_cell_69/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_69/MatMul�
*while/lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_69_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02,
*while/lstm_cell_69/MatMul_1/ReadVariableOp�
while/lstm_cell_69/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_69/MatMul_1�
while/lstm_cell_69/addAddV2#while/lstm_cell_69/MatMul:product:0%while/lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_69/add�
)while/lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_69_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_69/BiasAdd/ReadVariableOp�
while/lstm_cell_69/BiasAddBiasAddwhile/lstm_cell_69/add:z:01while/lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_69/BiasAdd�
"while/lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_69/split/split_dim�
while/lstm_cell_69/splitSplit+while/lstm_cell_69/split/split_dim:output:0#while/lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
while/lstm_cell_69/split�
while/lstm_cell_69/SigmoidSigmoid!while/lstm_cell_69/split:output:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/Sigmoid�
while/lstm_cell_69/Sigmoid_1Sigmoid!while/lstm_cell_69/split:output:1*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/Sigmoid_1�
while/lstm_cell_69/mulMul while/lstm_cell_69/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/mul�
while/lstm_cell_69/ReluRelu!while/lstm_cell_69/split:output:2*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/Relu�
while/lstm_cell_69/mul_1Mulwhile/lstm_cell_69/Sigmoid:y:0%while/lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/mul_1�
while/lstm_cell_69/add_1AddV2while/lstm_cell_69/mul:z:0while/lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/add_1�
while/lstm_cell_69/Sigmoid_2Sigmoid!while/lstm_cell_69/split:output:3*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/Sigmoid_2�
while/lstm_cell_69/Relu_1Reluwhile/lstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/Relu_1�
while/lstm_cell_69/mul_2Mul while/lstm_cell_69/Sigmoid_2:y:0'while/lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_69/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_69/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:��������� 2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_69/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:��������� 2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_69/BiasAdd/ReadVariableOp)^while/lstm_cell_69/MatMul/ReadVariableOp+^while/lstm_cell_69/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_69_biasadd_readvariableop_resource4while_lstm_cell_69_biasadd_readvariableop_resource_0"l
3while_lstm_cell_69_matmul_1_readvariableop_resource5while_lstm_cell_69_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_69_matmul_readvariableop_resource3while_lstm_cell_69_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2V
)while/lstm_cell_69/BiasAdd/ReadVariableOp)while/lstm_cell_69/BiasAdd/ReadVariableOp2T
(while/lstm_cell_69/MatMul/ReadVariableOp(while/lstm_cell_69/MatMul/ReadVariableOp2X
*while/lstm_cell_69/MatMul_1/ReadVariableOp*while/lstm_cell_69/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�%
�
while_body_564595
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_69_564619_0:	@�.
while_lstm_cell_69_564621_0:	 �*
while_lstm_cell_69_564623_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_69_564619:	@�,
while_lstm_cell_69_564621:	 �(
while_lstm_cell_69_564623:	���*while/lstm_cell_69/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
*while/lstm_cell_69/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_69_564619_0while_lstm_cell_69_564621_0while_lstm_cell_69_564623_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_69_layer_call_and_return_conditional_losses_5645812,
*while/lstm_cell_69/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_69/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity3while/lstm_cell_69/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:��������� 2
while/Identity_4�
while/Identity_5Identity3while/lstm_cell_69/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:��������� 2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_69/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_69_564619while_lstm_cell_69_564619_0"8
while_lstm_cell_69_564621while_lstm_cell_69_564621_0"8
while_lstm_cell_69_564623while_lstm_cell_69_564623_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2X
*while/lstm_cell_69/StatefulPartitionedCall*while/lstm_cell_69/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�
�
(__inference_lstm_34_layer_call_fn_566748

inputs
unknown:	�
	unknown_0:	@�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_34_layer_call_and_return_conditional_losses_5658722
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
d
+__inference_dropout_17_layer_call_fn_568010

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_17_layer_call_and_return_conditional_losses_5655322
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�

�
D__inference_dense_17_layer_call_and_return_conditional_losses_565476

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
while_cond_566965
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_566965___redundant_placeholder04
0while_while_cond_566965___redundant_placeholder14
0while_while_cond_566965___redundant_placeholder24
0while_while_cond_566965___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������@:���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�
�
(__inference_lstm_34_layer_call_fn_566737

inputs
unknown:	�
	unknown_0:	@�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_34_layer_call_and_return_conditional_losses_5652932
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_563964
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_563964___redundant_placeholder04
0while_while_cond_563964___redundant_placeholder14
0while_while_cond_563964___redundant_placeholder24
0while_while_cond_563964___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������@:���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
��
�
I__inference_sequential_17_layer_call_and_return_conditional_losses_566392

inputsF
3lstm_34_lstm_cell_68_matmul_readvariableop_resource:	�H
5lstm_34_lstm_cell_68_matmul_1_readvariableop_resource:	@�C
4lstm_34_lstm_cell_68_biasadd_readvariableop_resource:	�F
3lstm_35_lstm_cell_69_matmul_readvariableop_resource:	@�H
5lstm_35_lstm_cell_69_matmul_1_readvariableop_resource:	 �C
4lstm_35_lstm_cell_69_biasadd_readvariableop_resource:	�9
'dense_17_matmul_readvariableop_resource: 6
(dense_17_biasadd_readvariableop_resource:
identity��dense_17/BiasAdd/ReadVariableOp�dense_17/MatMul/ReadVariableOp�+lstm_34/lstm_cell_68/BiasAdd/ReadVariableOp�*lstm_34/lstm_cell_68/MatMul/ReadVariableOp�,lstm_34/lstm_cell_68/MatMul_1/ReadVariableOp�lstm_34/while�+lstm_35/lstm_cell_69/BiasAdd/ReadVariableOp�*lstm_35/lstm_cell_69/MatMul/ReadVariableOp�,lstm_35/lstm_cell_69/MatMul_1/ReadVariableOp�lstm_35/whileT
lstm_34/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_34/Shape�
lstm_34/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_34/strided_slice/stack�
lstm_34/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_34/strided_slice/stack_1�
lstm_34/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_34/strided_slice/stack_2�
lstm_34/strided_sliceStridedSlicelstm_34/Shape:output:0$lstm_34/strided_slice/stack:output:0&lstm_34/strided_slice/stack_1:output:0&lstm_34/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_34/strided_slicel
lstm_34/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_34/zeros/mul/y�
lstm_34/zeros/mulMullstm_34/strided_slice:output:0lstm_34/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_34/zeros/mulo
lstm_34/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_34/zeros/Less/y�
lstm_34/zeros/LessLesslstm_34/zeros/mul:z:0lstm_34/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_34/zeros/Lessr
lstm_34/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_34/zeros/packed/1�
lstm_34/zeros/packedPacklstm_34/strided_slice:output:0lstm_34/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_34/zeros/packedo
lstm_34/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_34/zeros/Const�
lstm_34/zerosFilllstm_34/zeros/packed:output:0lstm_34/zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
lstm_34/zerosp
lstm_34/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_34/zeros_1/mul/y�
lstm_34/zeros_1/mulMullstm_34/strided_slice:output:0lstm_34/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_34/zeros_1/muls
lstm_34/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_34/zeros_1/Less/y�
lstm_34/zeros_1/LessLesslstm_34/zeros_1/mul:z:0lstm_34/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_34/zeros_1/Lessv
lstm_34/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_34/zeros_1/packed/1�
lstm_34/zeros_1/packedPacklstm_34/strided_slice:output:0!lstm_34/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_34/zeros_1/packeds
lstm_34/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_34/zeros_1/Const�
lstm_34/zeros_1Filllstm_34/zeros_1/packed:output:0lstm_34/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@2
lstm_34/zeros_1�
lstm_34/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_34/transpose/perm�
lstm_34/transpose	Transposeinputslstm_34/transpose/perm:output:0*
T0*+
_output_shapes
:���������2
lstm_34/transposeg
lstm_34/Shape_1Shapelstm_34/transpose:y:0*
T0*
_output_shapes
:2
lstm_34/Shape_1�
lstm_34/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_34/strided_slice_1/stack�
lstm_34/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_34/strided_slice_1/stack_1�
lstm_34/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_34/strided_slice_1/stack_2�
lstm_34/strided_slice_1StridedSlicelstm_34/Shape_1:output:0&lstm_34/strided_slice_1/stack:output:0(lstm_34/strided_slice_1/stack_1:output:0(lstm_34/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_34/strided_slice_1�
#lstm_34/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2%
#lstm_34/TensorArrayV2/element_shape�
lstm_34/TensorArrayV2TensorListReserve,lstm_34/TensorArrayV2/element_shape:output:0 lstm_34/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_34/TensorArrayV2�
=lstm_34/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2?
=lstm_34/TensorArrayUnstack/TensorListFromTensor/element_shape�
/lstm_34/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_34/transpose:y:0Flstm_34/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_34/TensorArrayUnstack/TensorListFromTensor�
lstm_34/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_34/strided_slice_2/stack�
lstm_34/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_34/strided_slice_2/stack_1�
lstm_34/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_34/strided_slice_2/stack_2�
lstm_34/strided_slice_2StridedSlicelstm_34/transpose:y:0&lstm_34/strided_slice_2/stack:output:0(lstm_34/strided_slice_2/stack_1:output:0(lstm_34/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
lstm_34/strided_slice_2�
*lstm_34/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp3lstm_34_lstm_cell_68_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02,
*lstm_34/lstm_cell_68/MatMul/ReadVariableOp�
lstm_34/lstm_cell_68/MatMulMatMul lstm_34/strided_slice_2:output:02lstm_34/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_34/lstm_cell_68/MatMul�
,lstm_34/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp5lstm_34_lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype02.
,lstm_34/lstm_cell_68/MatMul_1/ReadVariableOp�
lstm_34/lstm_cell_68/MatMul_1MatMullstm_34/zeros:output:04lstm_34/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_34/lstm_cell_68/MatMul_1�
lstm_34/lstm_cell_68/addAddV2%lstm_34/lstm_cell_68/MatMul:product:0'lstm_34/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_34/lstm_cell_68/add�
+lstm_34/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp4lstm_34_lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02-
+lstm_34/lstm_cell_68/BiasAdd/ReadVariableOp�
lstm_34/lstm_cell_68/BiasAddBiasAddlstm_34/lstm_cell_68/add:z:03lstm_34/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_34/lstm_cell_68/BiasAdd�
$lstm_34/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_34/lstm_cell_68/split/split_dim�
lstm_34/lstm_cell_68/splitSplit-lstm_34/lstm_cell_68/split/split_dim:output:0%lstm_34/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
lstm_34/lstm_cell_68/split�
lstm_34/lstm_cell_68/SigmoidSigmoid#lstm_34/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������@2
lstm_34/lstm_cell_68/Sigmoid�
lstm_34/lstm_cell_68/Sigmoid_1Sigmoid#lstm_34/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������@2 
lstm_34/lstm_cell_68/Sigmoid_1�
lstm_34/lstm_cell_68/mulMul"lstm_34/lstm_cell_68/Sigmoid_1:y:0lstm_34/zeros_1:output:0*
T0*'
_output_shapes
:���������@2
lstm_34/lstm_cell_68/mul�
lstm_34/lstm_cell_68/ReluRelu#lstm_34/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������@2
lstm_34/lstm_cell_68/Relu�
lstm_34/lstm_cell_68/mul_1Mul lstm_34/lstm_cell_68/Sigmoid:y:0'lstm_34/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������@2
lstm_34/lstm_cell_68/mul_1�
lstm_34/lstm_cell_68/add_1AddV2lstm_34/lstm_cell_68/mul:z:0lstm_34/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_34/lstm_cell_68/add_1�
lstm_34/lstm_cell_68/Sigmoid_2Sigmoid#lstm_34/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������@2 
lstm_34/lstm_cell_68/Sigmoid_2�
lstm_34/lstm_cell_68/Relu_1Relulstm_34/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_34/lstm_cell_68/Relu_1�
lstm_34/lstm_cell_68/mul_2Mul"lstm_34/lstm_cell_68/Sigmoid_2:y:0)lstm_34/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
lstm_34/lstm_cell_68/mul_2�
%lstm_34/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2'
%lstm_34/TensorArrayV2_1/element_shape�
lstm_34/TensorArrayV2_1TensorListReserve.lstm_34/TensorArrayV2_1/element_shape:output:0 lstm_34/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_34/TensorArrayV2_1^
lstm_34/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_34/time�
 lstm_34/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2"
 lstm_34/while/maximum_iterationsz
lstm_34/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_34/while/loop_counter�
lstm_34/whileWhile#lstm_34/while/loop_counter:output:0)lstm_34/while/maximum_iterations:output:0lstm_34/time:output:0 lstm_34/TensorArrayV2_1:handle:0lstm_34/zeros:output:0lstm_34/zeros_1:output:0 lstm_34/strided_slice_1:output:0?lstm_34/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_34_lstm_cell_68_matmul_readvariableop_resource5lstm_34_lstm_cell_68_matmul_1_readvariableop_resource4lstm_34_lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������@:���������@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_34_while_body_566154*%
condR
lstm_34_while_cond_566153*K
output_shapes:
8: : : : :���������@:���������@: : : : : *
parallel_iterations 2
lstm_34/while�
8lstm_34/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2:
8lstm_34/TensorArrayV2Stack/TensorListStack/element_shape�
*lstm_34/TensorArrayV2Stack/TensorListStackTensorListStacklstm_34/while:output:3Alstm_34/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype02,
*lstm_34/TensorArrayV2Stack/TensorListStack�
lstm_34/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
lstm_34/strided_slice_3/stack�
lstm_34/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_34/strided_slice_3/stack_1�
lstm_34/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_34/strided_slice_3/stack_2�
lstm_34/strided_slice_3StridedSlice3lstm_34/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_34/strided_slice_3/stack:output:0(lstm_34/strided_slice_3/stack_1:output:0(lstm_34/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
lstm_34/strided_slice_3�
lstm_34/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_34/transpose_1/perm�
lstm_34/transpose_1	Transpose3lstm_34/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_34/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@2
lstm_34/transpose_1v
lstm_34/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_34/runtimee
lstm_35/ShapeShapelstm_34/transpose_1:y:0*
T0*
_output_shapes
:2
lstm_35/Shape�
lstm_35/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_35/strided_slice/stack�
lstm_35/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_35/strided_slice/stack_1�
lstm_35/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_35/strided_slice/stack_2�
lstm_35/strided_sliceStridedSlicelstm_35/Shape:output:0$lstm_35/strided_slice/stack:output:0&lstm_35/strided_slice/stack_1:output:0&lstm_35/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_35/strided_slicel
lstm_35/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_35/zeros/mul/y�
lstm_35/zeros/mulMullstm_35/strided_slice:output:0lstm_35/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_35/zeros/mulo
lstm_35/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_35/zeros/Less/y�
lstm_35/zeros/LessLesslstm_35/zeros/mul:z:0lstm_35/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_35/zeros/Lessr
lstm_35/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_35/zeros/packed/1�
lstm_35/zeros/packedPacklstm_35/strided_slice:output:0lstm_35/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_35/zeros/packedo
lstm_35/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_35/zeros/Const�
lstm_35/zerosFilllstm_35/zeros/packed:output:0lstm_35/zeros/Const:output:0*
T0*'
_output_shapes
:��������� 2
lstm_35/zerosp
lstm_35/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_35/zeros_1/mul/y�
lstm_35/zeros_1/mulMullstm_35/strided_slice:output:0lstm_35/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_35/zeros_1/muls
lstm_35/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_35/zeros_1/Less/y�
lstm_35/zeros_1/LessLesslstm_35/zeros_1/mul:z:0lstm_35/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_35/zeros_1/Lessv
lstm_35/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_35/zeros_1/packed/1�
lstm_35/zeros_1/packedPacklstm_35/strided_slice:output:0!lstm_35/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_35/zeros_1/packeds
lstm_35/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_35/zeros_1/Const�
lstm_35/zeros_1Filllstm_35/zeros_1/packed:output:0lstm_35/zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� 2
lstm_35/zeros_1�
lstm_35/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_35/transpose/perm�
lstm_35/transpose	Transposelstm_34/transpose_1:y:0lstm_35/transpose/perm:output:0*
T0*+
_output_shapes
:���������@2
lstm_35/transposeg
lstm_35/Shape_1Shapelstm_35/transpose:y:0*
T0*
_output_shapes
:2
lstm_35/Shape_1�
lstm_35/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_35/strided_slice_1/stack�
lstm_35/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_35/strided_slice_1/stack_1�
lstm_35/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_35/strided_slice_1/stack_2�
lstm_35/strided_slice_1StridedSlicelstm_35/Shape_1:output:0&lstm_35/strided_slice_1/stack:output:0(lstm_35/strided_slice_1/stack_1:output:0(lstm_35/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_35/strided_slice_1�
#lstm_35/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2%
#lstm_35/TensorArrayV2/element_shape�
lstm_35/TensorArrayV2TensorListReserve,lstm_35/TensorArrayV2/element_shape:output:0 lstm_35/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_35/TensorArrayV2�
=lstm_35/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2?
=lstm_35/TensorArrayUnstack/TensorListFromTensor/element_shape�
/lstm_35/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_35/transpose:y:0Flstm_35/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_35/TensorArrayUnstack/TensorListFromTensor�
lstm_35/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_35/strided_slice_2/stack�
lstm_35/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_35/strided_slice_2/stack_1�
lstm_35/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_35/strided_slice_2/stack_2�
lstm_35/strided_slice_2StridedSlicelstm_35/transpose:y:0&lstm_35/strided_slice_2/stack:output:0(lstm_35/strided_slice_2/stack_1:output:0(lstm_35/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
lstm_35/strided_slice_2�
*lstm_35/lstm_cell_69/MatMul/ReadVariableOpReadVariableOp3lstm_35_lstm_cell_69_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype02,
*lstm_35/lstm_cell_69/MatMul/ReadVariableOp�
lstm_35/lstm_cell_69/MatMulMatMul lstm_35/strided_slice_2:output:02lstm_35/lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_35/lstm_cell_69/MatMul�
,lstm_35/lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOp5lstm_35_lstm_cell_69_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02.
,lstm_35/lstm_cell_69/MatMul_1/ReadVariableOp�
lstm_35/lstm_cell_69/MatMul_1MatMullstm_35/zeros:output:04lstm_35/lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_35/lstm_cell_69/MatMul_1�
lstm_35/lstm_cell_69/addAddV2%lstm_35/lstm_cell_69/MatMul:product:0'lstm_35/lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_35/lstm_cell_69/add�
+lstm_35/lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOp4lstm_35_lstm_cell_69_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02-
+lstm_35/lstm_cell_69/BiasAdd/ReadVariableOp�
lstm_35/lstm_cell_69/BiasAddBiasAddlstm_35/lstm_cell_69/add:z:03lstm_35/lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_35/lstm_cell_69/BiasAdd�
$lstm_35/lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_35/lstm_cell_69/split/split_dim�
lstm_35/lstm_cell_69/splitSplit-lstm_35/lstm_cell_69/split/split_dim:output:0%lstm_35/lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
lstm_35/lstm_cell_69/split�
lstm_35/lstm_cell_69/SigmoidSigmoid#lstm_35/lstm_cell_69/split:output:0*
T0*'
_output_shapes
:��������� 2
lstm_35/lstm_cell_69/Sigmoid�
lstm_35/lstm_cell_69/Sigmoid_1Sigmoid#lstm_35/lstm_cell_69/split:output:1*
T0*'
_output_shapes
:��������� 2 
lstm_35/lstm_cell_69/Sigmoid_1�
lstm_35/lstm_cell_69/mulMul"lstm_35/lstm_cell_69/Sigmoid_1:y:0lstm_35/zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
lstm_35/lstm_cell_69/mul�
lstm_35/lstm_cell_69/ReluRelu#lstm_35/lstm_cell_69/split:output:2*
T0*'
_output_shapes
:��������� 2
lstm_35/lstm_cell_69/Relu�
lstm_35/lstm_cell_69/mul_1Mul lstm_35/lstm_cell_69/Sigmoid:y:0'lstm_35/lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:��������� 2
lstm_35/lstm_cell_69/mul_1�
lstm_35/lstm_cell_69/add_1AddV2lstm_35/lstm_cell_69/mul:z:0lstm_35/lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
lstm_35/lstm_cell_69/add_1�
lstm_35/lstm_cell_69/Sigmoid_2Sigmoid#lstm_35/lstm_cell_69/split:output:3*
T0*'
_output_shapes
:��������� 2 
lstm_35/lstm_cell_69/Sigmoid_2�
lstm_35/lstm_cell_69/Relu_1Relulstm_35/lstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:��������� 2
lstm_35/lstm_cell_69/Relu_1�
lstm_35/lstm_cell_69/mul_2Mul"lstm_35/lstm_cell_69/Sigmoid_2:y:0)lstm_35/lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2
lstm_35/lstm_cell_69/mul_2�
%lstm_35/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2'
%lstm_35/TensorArrayV2_1/element_shape�
lstm_35/TensorArrayV2_1TensorListReserve.lstm_35/TensorArrayV2_1/element_shape:output:0 lstm_35/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_35/TensorArrayV2_1^
lstm_35/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_35/time�
 lstm_35/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2"
 lstm_35/while/maximum_iterationsz
lstm_35/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_35/while/loop_counter�
lstm_35/whileWhile#lstm_35/while/loop_counter:output:0)lstm_35/while/maximum_iterations:output:0lstm_35/time:output:0 lstm_35/TensorArrayV2_1:handle:0lstm_35/zeros:output:0lstm_35/zeros_1:output:0 lstm_35/strided_slice_1:output:0?lstm_35/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_35_lstm_cell_69_matmul_readvariableop_resource5lstm_35_lstm_cell_69_matmul_1_readvariableop_resource4lstm_35_lstm_cell_69_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_35_while_body_566301*%
condR
lstm_35_while_cond_566300*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations 2
lstm_35/while�
8lstm_35/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2:
8lstm_35/TensorArrayV2Stack/TensorListStack/element_shape�
*lstm_35/TensorArrayV2Stack/TensorListStackTensorListStacklstm_35/while:output:3Alstm_35/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype02,
*lstm_35/TensorArrayV2Stack/TensorListStack�
lstm_35/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
lstm_35/strided_slice_3/stack�
lstm_35/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_35/strided_slice_3/stack_1�
lstm_35/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_35/strided_slice_3/stack_2�
lstm_35/strided_slice_3StridedSlice3lstm_35/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_35/strided_slice_3/stack:output:0(lstm_35/strided_slice_3/stack_1:output:0(lstm_35/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
lstm_35/strided_slice_3�
lstm_35/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_35/transpose_1/perm�
lstm_35/transpose_1	Transpose3lstm_35/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_35/transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� 2
lstm_35/transpose_1v
lstm_35/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_35/runtime�
dropout_17/IdentityIdentity lstm_35/strided_slice_3:output:0*
T0*'
_output_shapes
:��������� 2
dropout_17/Identity�
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_17/MatMul/ReadVariableOp�
dense_17/MatMulMatMuldropout_17/Identity:output:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_17/MatMul�
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_17/BiasAdd/ReadVariableOp�
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_17/BiasAddt
IdentityIdentitydense_17/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp,^lstm_34/lstm_cell_68/BiasAdd/ReadVariableOp+^lstm_34/lstm_cell_68/MatMul/ReadVariableOp-^lstm_34/lstm_cell_68/MatMul_1/ReadVariableOp^lstm_34/while,^lstm_35/lstm_cell_69/BiasAdd/ReadVariableOp+^lstm_35/lstm_cell_69/MatMul/ReadVariableOp-^lstm_35/lstm_cell_69/MatMul_1/ReadVariableOp^lstm_35/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp2Z
+lstm_34/lstm_cell_68/BiasAdd/ReadVariableOp+lstm_34/lstm_cell_68/BiasAdd/ReadVariableOp2X
*lstm_34/lstm_cell_68/MatMul/ReadVariableOp*lstm_34/lstm_cell_68/MatMul/ReadVariableOp2\
,lstm_34/lstm_cell_68/MatMul_1/ReadVariableOp,lstm_34/lstm_cell_68/MatMul_1/ReadVariableOp2
lstm_34/whilelstm_34/while2Z
+lstm_35/lstm_cell_69/BiasAdd/ReadVariableOp+lstm_35/lstm_cell_69/BiasAdd/ReadVariableOp2X
*lstm_35/lstm_cell_69/MatMul/ReadVariableOp*lstm_35/lstm_cell_69/MatMul/ReadVariableOp2\
,lstm_35/lstm_cell_69/MatMul_1/ReadVariableOp,lstm_35/lstm_cell_69/MatMul_1/ReadVariableOp2
lstm_35/whilelstm_35/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
-__inference_lstm_cell_69_layer_call_fn_568161

inputs
states_0
states_1
unknown:	@�
	unknown_0:	 �
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_69_layer_call_and_return_conditional_losses_5645812
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� 2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:��������� 2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:��������� 2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������@:��������� :��������� : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/0:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/1
�%
�
while_body_564805
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_69_564829_0:	@�.
while_lstm_cell_69_564831_0:	 �*
while_lstm_cell_69_564833_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_69_564829:	@�,
while_lstm_cell_69_564831:	 �(
while_lstm_cell_69_564833:	���*while/lstm_cell_69/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
*while/lstm_cell_69/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_69_564829_0while_lstm_cell_69_564831_0while_lstm_cell_69_564833_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_69_layer_call_and_return_conditional_losses_5647272,
*while/lstm_cell_69/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_69/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity3while/lstm_cell_69/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:��������� 2
while/Identity_4�
while/Identity_5Identity3while/lstm_cell_69/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:��������� 2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_69/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_69_564829while_lstm_cell_69_564829_0"8
while_lstm_cell_69_564831while_lstm_cell_69_564831_0"8
while_lstm_cell_69_564833while_lstm_cell_69_564833_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2X
*while/lstm_cell_69/StatefulPartitionedCall*while/lstm_cell_69/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_567462
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_567462___redundant_placeholder04
0while_while_cond_567462___redundant_placeholder14
0while_while_cond_567462___redundant_placeholder24
0while_while_cond_567462___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�
�
while_cond_567764
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_567764___redundant_placeholder04
0while_while_cond_567764___redundant_placeholder14
0while_while_cond_567764___redundant_placeholder24
0while_while_cond_567764___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�
�
while_cond_566814
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_566814___redundant_placeholder04
0while_while_cond_566814___redundant_placeholder14
0while_while_cond_566814___redundant_placeholder24
0while_while_cond_566814___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������@:���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�

�
.__inference_sequential_17_layer_call_fn_565502
lstm_34_input
unknown:	�
	unknown_0:	@�
	unknown_1:	�
	unknown_2:	@�
	unknown_3:	 �
	unknown_4:	�
	unknown_5: 
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_34_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_17_layer_call_and_return_conditional_losses_5654832
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_34_input
�
�
while_cond_564594
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_564594___redundant_placeholder04
0while_while_cond_564594___redundant_placeholder14
0while_while_cond_564594___redundant_placeholder24
0while_while_cond_564594___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�
�
(__inference_lstm_35_layer_call_fn_567396

inputs
unknown:	@�
	unknown_0:	 �
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_35_layer_call_and_return_conditional_losses_5656992
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_568112

inputs
states_0
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	@�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������@2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������@2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������@2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������@2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������@2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������@2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������@2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������@2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������@2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������@2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������@2

Identity_2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������@:���������@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/1
�
�
while_cond_567267
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_567267___redundant_placeholder04
0while_while_cond_567267___redundant_placeholder14
0while_while_cond_567267___redundant_placeholder24
0while_while_cond_567267___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������@:���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_567613
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_567613___redundant_placeholder04
0while_while_cond_567613___redundant_placeholder14
0while_while_cond_567613___redundant_placeholder24
0while_while_cond_567613___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�

�
lstm_35_while_cond_566300,
(lstm_35_while_lstm_35_while_loop_counter2
.lstm_35_while_lstm_35_while_maximum_iterations
lstm_35_while_placeholder
lstm_35_while_placeholder_1
lstm_35_while_placeholder_2
lstm_35_while_placeholder_3.
*lstm_35_while_less_lstm_35_strided_slice_1D
@lstm_35_while_lstm_35_while_cond_566300___redundant_placeholder0D
@lstm_35_while_lstm_35_while_cond_566300___redundant_placeholder1D
@lstm_35_while_lstm_35_while_cond_566300___redundant_placeholder2D
@lstm_35_while_lstm_35_while_cond_566300___redundant_placeholder3
lstm_35_while_identity
�
lstm_35/while/LessLesslstm_35_while_placeholder*lstm_35_while_less_lstm_35_strided_slice_1*
T0*
_output_shapes
: 2
lstm_35/while/Lessu
lstm_35/while/IdentityIdentitylstm_35/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_35/while/Identity"9
lstm_35_while_identitylstm_35/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�
�
-__inference_lstm_cell_68_layer_call_fn_568080

inputs
states_0
states_1
unknown:	�
	unknown_0:	@�
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������@:���������@:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_5640972
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������@2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������@2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������@:���������@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/1
�

�
lstm_35_while_cond_566605,
(lstm_35_while_lstm_35_while_loop_counter2
.lstm_35_while_lstm_35_while_maximum_iterations
lstm_35_while_placeholder
lstm_35_while_placeholder_1
lstm_35_while_placeholder_2
lstm_35_while_placeholder_3.
*lstm_35_while_less_lstm_35_strided_slice_1D
@lstm_35_while_lstm_35_while_cond_566605___redundant_placeholder0D
@lstm_35_while_lstm_35_while_cond_566605___redundant_placeholder1D
@lstm_35_while_lstm_35_while_cond_566605___redundant_placeholder2D
@lstm_35_while_lstm_35_while_cond_566605___redundant_placeholder3
lstm_35_while_identity
�
lstm_35/while/LessLesslstm_35_while_placeholder*lstm_35_while_less_lstm_35_strided_slice_1*
T0*
_output_shapes
: 2
lstm_35/while/Lessu
lstm_35/while/IdentityIdentitylstm_35/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_35/while/Identity"9
lstm_35_while_identitylstm_35/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�
d
F__inference_dropout_17_layer_call_and_return_conditional_losses_568015

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:��������� 2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:��������� 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
(__inference_lstm_35_layer_call_fn_567374
inputs_0
unknown:	@�
	unknown_0:	 �
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_35_layer_call_and_return_conditional_losses_5648742
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������@
"
_user_specified_name
inputs/0
�[
�
C__inference_lstm_35_layer_call_and_return_conditional_losses_565451

inputs>
+lstm_cell_69_matmul_readvariableop_resource:	@�@
-lstm_cell_69_matmul_1_readvariableop_resource:	 �;
,lstm_cell_69_biasadd_readvariableop_resource:	�
identity��#lstm_cell_69/BiasAdd/ReadVariableOp�"lstm_cell_69/MatMul/ReadVariableOp�$lstm_cell_69/MatMul_1/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_69/MatMul/ReadVariableOpReadVariableOp+lstm_cell_69_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype02$
"lstm_cell_69/MatMul/ReadVariableOp�
lstm_cell_69/MatMulMatMulstrided_slice_2:output:0*lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_69/MatMul�
$lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_69_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02&
$lstm_cell_69/MatMul_1/ReadVariableOp�
lstm_cell_69/MatMul_1MatMulzeros:output:0,lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_69/MatMul_1�
lstm_cell_69/addAddV2lstm_cell_69/MatMul:product:0lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_69/add�
#lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_69_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_69/BiasAdd/ReadVariableOp�
lstm_cell_69/BiasAddBiasAddlstm_cell_69/add:z:0+lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_69/BiasAdd~
lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_69/split/split_dim�
lstm_cell_69/splitSplit%lstm_cell_69/split/split_dim:output:0lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
lstm_cell_69/split�
lstm_cell_69/SigmoidSigmoidlstm_cell_69/split:output:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/Sigmoid�
lstm_cell_69/Sigmoid_1Sigmoidlstm_cell_69/split:output:1*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/Sigmoid_1�
lstm_cell_69/mulMullstm_cell_69/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/mul}
lstm_cell_69/ReluRelulstm_cell_69/split:output:2*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/Relu�
lstm_cell_69/mul_1Mullstm_cell_69/Sigmoid:y:0lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/mul_1�
lstm_cell_69/add_1AddV2lstm_cell_69/mul:z:0lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/add_1�
lstm_cell_69/Sigmoid_2Sigmoidlstm_cell_69/split:output:3*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/Sigmoid_2|
lstm_cell_69/Relu_1Relulstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/Relu_1�
lstm_cell_69/mul_2Mullstm_cell_69/Sigmoid_2:y:0!lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_69_matmul_readvariableop_resource-lstm_cell_69_matmul_1_readvariableop_resource,lstm_cell_69_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_565367*
condR
while_cond_565366*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:��������� 2

Identity�
NoOpNoOp$^lstm_cell_69/BiasAdd/ReadVariableOp#^lstm_cell_69/MatMul/ReadVariableOp%^lstm_cell_69/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������@: : : 2J
#lstm_cell_69/BiasAdd/ReadVariableOp#lstm_cell_69/BiasAdd/ReadVariableOp2H
"lstm_cell_69/MatMul/ReadVariableOp"lstm_cell_69/MatMul/ReadVariableOp2L
$lstm_cell_69/MatMul_1/ReadVariableOp$lstm_cell_69/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�
G
+__inference_dropout_17_layer_call_fn_568005

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_17_layer_call_and_return_conditional_losses_5654642
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�?
�
while_body_567463
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_69_matmul_readvariableop_resource_0:	@�H
5while_lstm_cell_69_matmul_1_readvariableop_resource_0:	 �C
4while_lstm_cell_69_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_69_matmul_readvariableop_resource:	@�F
3while_lstm_cell_69_matmul_1_readvariableop_resource:	 �A
2while_lstm_cell_69_biasadd_readvariableop_resource:	���)while/lstm_cell_69/BiasAdd/ReadVariableOp�(while/lstm_cell_69/MatMul/ReadVariableOp�*while/lstm_cell_69/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_69/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_69_matmul_readvariableop_resource_0*
_output_shapes
:	@�*
dtype02*
(while/lstm_cell_69/MatMul/ReadVariableOp�
while/lstm_cell_69/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_69/MatMul�
*while/lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_69_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02,
*while/lstm_cell_69/MatMul_1/ReadVariableOp�
while/lstm_cell_69/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_69/MatMul_1�
while/lstm_cell_69/addAddV2#while/lstm_cell_69/MatMul:product:0%while/lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_69/add�
)while/lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_69_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_69/BiasAdd/ReadVariableOp�
while/lstm_cell_69/BiasAddBiasAddwhile/lstm_cell_69/add:z:01while/lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_69/BiasAdd�
"while/lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_69/split/split_dim�
while/lstm_cell_69/splitSplit+while/lstm_cell_69/split/split_dim:output:0#while/lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
while/lstm_cell_69/split�
while/lstm_cell_69/SigmoidSigmoid!while/lstm_cell_69/split:output:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/Sigmoid�
while/lstm_cell_69/Sigmoid_1Sigmoid!while/lstm_cell_69/split:output:1*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/Sigmoid_1�
while/lstm_cell_69/mulMul while/lstm_cell_69/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/mul�
while/lstm_cell_69/ReluRelu!while/lstm_cell_69/split:output:2*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/Relu�
while/lstm_cell_69/mul_1Mulwhile/lstm_cell_69/Sigmoid:y:0%while/lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/mul_1�
while/lstm_cell_69/add_1AddV2while/lstm_cell_69/mul:z:0while/lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/add_1�
while/lstm_cell_69/Sigmoid_2Sigmoid!while/lstm_cell_69/split:output:3*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/Sigmoid_2�
while/lstm_cell_69/Relu_1Reluwhile/lstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/Relu_1�
while/lstm_cell_69/mul_2Mul while/lstm_cell_69/Sigmoid_2:y:0'while/lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_69/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_69/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:��������� 2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_69/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:��������� 2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_69/BiasAdd/ReadVariableOp)^while/lstm_cell_69/MatMul/ReadVariableOp+^while/lstm_cell_69/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_69_biasadd_readvariableop_resource4while_lstm_cell_69_biasadd_readvariableop_resource_0"l
3while_lstm_cell_69_matmul_1_readvariableop_resource5while_lstm_cell_69_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_69_matmul_readvariableop_resource3while_lstm_cell_69_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2V
)while/lstm_cell_69/BiasAdd/ReadVariableOp)while/lstm_cell_69/BiasAdd/ReadVariableOp2T
(while/lstm_cell_69/MatMul/ReadVariableOp(while/lstm_cell_69/MatMul/ReadVariableOp2X
*while/lstm_cell_69/MatMul_1/ReadVariableOp*while/lstm_cell_69/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�?
�
while_body_566966
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_68_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_68_matmul_1_readvariableop_resource_0:	@�C
4while_lstm_cell_68_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_68_matmul_readvariableop_resource:	�F
3while_lstm_cell_68_matmul_1_readvariableop_resource:	@�A
2while_lstm_cell_68_biasadd_readvariableop_resource:	���)while/lstm_cell_68/BiasAdd/ReadVariableOp�(while/lstm_cell_68/MatMul/ReadVariableOp�*while/lstm_cell_68/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02*
(while/lstm_cell_68/MatMul/ReadVariableOp�
while/lstm_cell_68/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_68/MatMul�
*while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype02,
*while/lstm_cell_68/MatMul_1/ReadVariableOp�
while/lstm_cell_68/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_68/MatMul_1�
while/lstm_cell_68/addAddV2#while/lstm_cell_68/MatMul:product:0%while/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_68/add�
)while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_68/BiasAdd/ReadVariableOp�
while/lstm_cell_68/BiasAddBiasAddwhile/lstm_cell_68/add:z:01while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_68/BiasAdd�
"while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_68/split/split_dim�
while/lstm_cell_68/splitSplit+while/lstm_cell_68/split/split_dim:output:0#while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
while/lstm_cell_68/split�
while/lstm_cell_68/SigmoidSigmoid!while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/Sigmoid�
while/lstm_cell_68/Sigmoid_1Sigmoid!while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/Sigmoid_1�
while/lstm_cell_68/mulMul while/lstm_cell_68/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/mul�
while/lstm_cell_68/ReluRelu!while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/Relu�
while/lstm_cell_68/mul_1Mulwhile/lstm_cell_68/Sigmoid:y:0%while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/mul_1�
while/lstm_cell_68/add_1AddV2while/lstm_cell_68/mul:z:0while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/add_1�
while/lstm_cell_68/Sigmoid_2Sigmoid!while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/Sigmoid_2�
while/lstm_cell_68/Relu_1Reluwhile/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/Relu_1�
while/lstm_cell_68/mul_2Mul while/lstm_cell_68/Sigmoid_2:y:0'while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_68/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������@2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_68/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������@2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_68/BiasAdd/ReadVariableOp)^while/lstm_cell_68/MatMul/ReadVariableOp+^while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_68_biasadd_readvariableop_resource4while_lstm_cell_68_biasadd_readvariableop_resource_0"l
3while_lstm_cell_68_matmul_1_readvariableop_resource5while_lstm_cell_68_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_68_matmul_readvariableop_resource3while_lstm_cell_68_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2V
)while/lstm_cell_68/BiasAdd/ReadVariableOp)while/lstm_cell_68/BiasAdd/ReadVariableOp2T
(while/lstm_cell_68/MatMul/ReadVariableOp(while/lstm_cell_68/MatMul/ReadVariableOp2X
*while/lstm_cell_68/MatMul_1/ReadVariableOp*while/lstm_cell_68/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�[
�
C__inference_lstm_34_layer_call_and_return_conditional_losses_567352

inputs>
+lstm_cell_68_matmul_readvariableop_resource:	�@
-lstm_cell_68_matmul_1_readvariableop_resource:	@�;
,lstm_cell_68_biasadd_readvariableop_resource:	�
identity��#lstm_cell_68/BiasAdd/ReadVariableOp�"lstm_cell_68/MatMul/ReadVariableOp�$lstm_cell_68/MatMul_1/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_68/MatMul/ReadVariableOpReadVariableOp+lstm_cell_68_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"lstm_cell_68/MatMul/ReadVariableOp�
lstm_cell_68/MatMulMatMulstrided_slice_2:output:0*lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_68/MatMul�
$lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype02&
$lstm_cell_68/MatMul_1/ReadVariableOp�
lstm_cell_68/MatMul_1MatMulzeros:output:0,lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_68/MatMul_1�
lstm_cell_68/addAddV2lstm_cell_68/MatMul:product:0lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_68/add�
#lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_68/BiasAdd/ReadVariableOp�
lstm_cell_68/BiasAddBiasAddlstm_cell_68/add:z:0+lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_68/BiasAdd~
lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_68/split/split_dim�
lstm_cell_68/splitSplit%lstm_cell_68/split/split_dim:output:0lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
lstm_cell_68/split�
lstm_cell_68/SigmoidSigmoidlstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/Sigmoid�
lstm_cell_68/Sigmoid_1Sigmoidlstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������@2
lstm_cell_68/Sigmoid_1�
lstm_cell_68/mulMullstm_cell_68/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/mul}
lstm_cell_68/ReluRelulstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������@2
lstm_cell_68/Relu�
lstm_cell_68/mul_1Mullstm_cell_68/Sigmoid:y:0lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/mul_1�
lstm_cell_68/add_1AddV2lstm_cell_68/mul:z:0lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/add_1�
lstm_cell_68/Sigmoid_2Sigmoidlstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������@2
lstm_cell_68/Sigmoid_2|
lstm_cell_68/Relu_1Relulstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/Relu_1�
lstm_cell_68/mul_2Mullstm_cell_68/Sigmoid_2:y:0!lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_68_matmul_readvariableop_resource-lstm_cell_68_matmul_1_readvariableop_resource,lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������@:���������@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_567268*
condR
while_cond_567267*K
output_shapes:
8: : : : :���������@:���������@: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������@2

Identity�
NoOpNoOp$^lstm_cell_68/BiasAdd/ReadVariableOp#^lstm_cell_68/MatMul/ReadVariableOp%^lstm_cell_68/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2J
#lstm_cell_68/BiasAdd/ReadVariableOp#lstm_cell_68/BiasAdd/ReadVariableOp2H
"lstm_cell_68/MatMul/ReadVariableOp"lstm_cell_68/MatMul/ReadVariableOp2L
$lstm_cell_68/MatMul_1/ReadVariableOp$lstm_cell_68/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�\
�
C__inference_lstm_35_layer_call_and_return_conditional_losses_567698
inputs_0>
+lstm_cell_69_matmul_readvariableop_resource:	@�@
-lstm_cell_69_matmul_1_readvariableop_resource:	 �;
,lstm_cell_69_biasadd_readvariableop_resource:	�
identity��#lstm_cell_69/BiasAdd/ReadVariableOp�"lstm_cell_69/MatMul/ReadVariableOp�$lstm_cell_69/MatMul_1/ReadVariableOp�whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_69/MatMul/ReadVariableOpReadVariableOp+lstm_cell_69_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype02$
"lstm_cell_69/MatMul/ReadVariableOp�
lstm_cell_69/MatMulMatMulstrided_slice_2:output:0*lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_69/MatMul�
$lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_69_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02&
$lstm_cell_69/MatMul_1/ReadVariableOp�
lstm_cell_69/MatMul_1MatMulzeros:output:0,lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_69/MatMul_1�
lstm_cell_69/addAddV2lstm_cell_69/MatMul:product:0lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_69/add�
#lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_69_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_69/BiasAdd/ReadVariableOp�
lstm_cell_69/BiasAddBiasAddlstm_cell_69/add:z:0+lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_69/BiasAdd~
lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_69/split/split_dim�
lstm_cell_69/splitSplit%lstm_cell_69/split/split_dim:output:0lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
lstm_cell_69/split�
lstm_cell_69/SigmoidSigmoidlstm_cell_69/split:output:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/Sigmoid�
lstm_cell_69/Sigmoid_1Sigmoidlstm_cell_69/split:output:1*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/Sigmoid_1�
lstm_cell_69/mulMullstm_cell_69/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/mul}
lstm_cell_69/ReluRelulstm_cell_69/split:output:2*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/Relu�
lstm_cell_69/mul_1Mullstm_cell_69/Sigmoid:y:0lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/mul_1�
lstm_cell_69/add_1AddV2lstm_cell_69/mul:z:0lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/add_1�
lstm_cell_69/Sigmoid_2Sigmoidlstm_cell_69/split:output:3*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/Sigmoid_2|
lstm_cell_69/Relu_1Relulstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/Relu_1�
lstm_cell_69/mul_2Mullstm_cell_69/Sigmoid_2:y:0!lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_69_matmul_readvariableop_resource-lstm_cell_69_matmul_1_readvariableop_resource,lstm_cell_69_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_567614*
condR
while_cond_567613*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������ *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:��������� 2

Identity�
NoOpNoOp$^lstm_cell_69/BiasAdd/ReadVariableOp#^lstm_cell_69/MatMul/ReadVariableOp%^lstm_cell_69/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������@: : : 2J
#lstm_cell_69/BiasAdd/ReadVariableOp#lstm_cell_69/BiasAdd/ReadVariableOp2H
"lstm_cell_69/MatMul/ReadVariableOp"lstm_cell_69/MatMul/ReadVariableOp2L
$lstm_cell_69/MatMul_1/ReadVariableOp$lstm_cell_69/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������@
"
_user_specified_name
inputs/0
�\
�
C__inference_lstm_34_layer_call_and_return_conditional_losses_566899
inputs_0>
+lstm_cell_68_matmul_readvariableop_resource:	�@
-lstm_cell_68_matmul_1_readvariableop_resource:	@�;
,lstm_cell_68_biasadd_readvariableop_resource:	�
identity��#lstm_cell_68/BiasAdd/ReadVariableOp�"lstm_cell_68/MatMul/ReadVariableOp�$lstm_cell_68/MatMul_1/ReadVariableOp�whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_68/MatMul/ReadVariableOpReadVariableOp+lstm_cell_68_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"lstm_cell_68/MatMul/ReadVariableOp�
lstm_cell_68/MatMulMatMulstrided_slice_2:output:0*lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_68/MatMul�
$lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype02&
$lstm_cell_68/MatMul_1/ReadVariableOp�
lstm_cell_68/MatMul_1MatMulzeros:output:0,lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_68/MatMul_1�
lstm_cell_68/addAddV2lstm_cell_68/MatMul:product:0lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_68/add�
#lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_68/BiasAdd/ReadVariableOp�
lstm_cell_68/BiasAddBiasAddlstm_cell_68/add:z:0+lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_68/BiasAdd~
lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_68/split/split_dim�
lstm_cell_68/splitSplit%lstm_cell_68/split/split_dim:output:0lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
lstm_cell_68/split�
lstm_cell_68/SigmoidSigmoidlstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/Sigmoid�
lstm_cell_68/Sigmoid_1Sigmoidlstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������@2
lstm_cell_68/Sigmoid_1�
lstm_cell_68/mulMullstm_cell_68/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/mul}
lstm_cell_68/ReluRelulstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������@2
lstm_cell_68/Relu�
lstm_cell_68/mul_1Mullstm_cell_68/Sigmoid:y:0lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/mul_1�
lstm_cell_68/add_1AddV2lstm_cell_68/mul:z:0lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/add_1�
lstm_cell_68/Sigmoid_2Sigmoidlstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������@2
lstm_cell_68/Sigmoid_2|
lstm_cell_68/Relu_1Relulstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/Relu_1�
lstm_cell_68/mul_2Mullstm_cell_68/Sigmoid_2:y:0!lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_68_matmul_readvariableop_resource-lstm_cell_68_matmul_1_readvariableop_resource,lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������@:���������@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_566815*
condR
while_cond_566814*K
output_shapes:
8: : : : :���������@:���������@: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������@2

Identity�
NoOpNoOp$^lstm_cell_68/BiasAdd/ReadVariableOp#^lstm_cell_68/MatMul/ReadVariableOp%^lstm_cell_68/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2J
#lstm_cell_68/BiasAdd/ReadVariableOp#lstm_cell_68/BiasAdd/ReadVariableOp2H
"lstm_cell_68/MatMul/ReadVariableOp"lstm_cell_68/MatMul/ReadVariableOp2L
$lstm_cell_68/MatMul_1/ReadVariableOp$lstm_cell_68/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�?
�
while_body_567614
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_69_matmul_readvariableop_resource_0:	@�H
5while_lstm_cell_69_matmul_1_readvariableop_resource_0:	 �C
4while_lstm_cell_69_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_69_matmul_readvariableop_resource:	@�F
3while_lstm_cell_69_matmul_1_readvariableop_resource:	 �A
2while_lstm_cell_69_biasadd_readvariableop_resource:	���)while/lstm_cell_69/BiasAdd/ReadVariableOp�(while/lstm_cell_69/MatMul/ReadVariableOp�*while/lstm_cell_69/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_69/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_69_matmul_readvariableop_resource_0*
_output_shapes
:	@�*
dtype02*
(while/lstm_cell_69/MatMul/ReadVariableOp�
while/lstm_cell_69/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_69/MatMul�
*while/lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_69_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02,
*while/lstm_cell_69/MatMul_1/ReadVariableOp�
while/lstm_cell_69/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_69/MatMul_1�
while/lstm_cell_69/addAddV2#while/lstm_cell_69/MatMul:product:0%while/lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_69/add�
)while/lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_69_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_69/BiasAdd/ReadVariableOp�
while/lstm_cell_69/BiasAddBiasAddwhile/lstm_cell_69/add:z:01while/lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_69/BiasAdd�
"while/lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_69/split/split_dim�
while/lstm_cell_69/splitSplit+while/lstm_cell_69/split/split_dim:output:0#while/lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
while/lstm_cell_69/split�
while/lstm_cell_69/SigmoidSigmoid!while/lstm_cell_69/split:output:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/Sigmoid�
while/lstm_cell_69/Sigmoid_1Sigmoid!while/lstm_cell_69/split:output:1*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/Sigmoid_1�
while/lstm_cell_69/mulMul while/lstm_cell_69/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/mul�
while/lstm_cell_69/ReluRelu!while/lstm_cell_69/split:output:2*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/Relu�
while/lstm_cell_69/mul_1Mulwhile/lstm_cell_69/Sigmoid:y:0%while/lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/mul_1�
while/lstm_cell_69/add_1AddV2while/lstm_cell_69/mul:z:0while/lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/add_1�
while/lstm_cell_69/Sigmoid_2Sigmoid!while/lstm_cell_69/split:output:3*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/Sigmoid_2�
while/lstm_cell_69/Relu_1Reluwhile/lstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/Relu_1�
while/lstm_cell_69/mul_2Mul while/lstm_cell_69/Sigmoid_2:y:0'while/lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_69/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_69/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_69/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:��������� 2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_69/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:��������� 2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_69/BiasAdd/ReadVariableOp)^while/lstm_cell_69/MatMul/ReadVariableOp+^while/lstm_cell_69/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_69_biasadd_readvariableop_resource4while_lstm_cell_69_biasadd_readvariableop_resource_0"l
3while_lstm_cell_69_matmul_1_readvariableop_resource5while_lstm_cell_69_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_69_matmul_readvariableop_resource3while_lstm_cell_69_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2V
)while/lstm_cell_69/BiasAdd/ReadVariableOp)while/lstm_cell_69/BiasAdd/ReadVariableOp2T
(while/lstm_cell_69/MatMul/ReadVariableOp(while/lstm_cell_69/MatMul/ReadVariableOp2X
*while/lstm_cell_69/MatMul_1/ReadVariableOp*while/lstm_cell_69/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�
e
F__inference_dropout_17_layer_call_and_return_conditional_losses_568027

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:��������� 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:��������� 2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�\
�
C__inference_lstm_34_layer_call_and_return_conditional_losses_567050
inputs_0>
+lstm_cell_68_matmul_readvariableop_resource:	�@
-lstm_cell_68_matmul_1_readvariableop_resource:	@�;
,lstm_cell_68_biasadd_readvariableop_resource:	�
identity��#lstm_cell_68/BiasAdd/ReadVariableOp�"lstm_cell_68/MatMul/ReadVariableOp�$lstm_cell_68/MatMul_1/ReadVariableOp�whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_68/MatMul/ReadVariableOpReadVariableOp+lstm_cell_68_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"lstm_cell_68/MatMul/ReadVariableOp�
lstm_cell_68/MatMulMatMulstrided_slice_2:output:0*lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_68/MatMul�
$lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype02&
$lstm_cell_68/MatMul_1/ReadVariableOp�
lstm_cell_68/MatMul_1MatMulzeros:output:0,lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_68/MatMul_1�
lstm_cell_68/addAddV2lstm_cell_68/MatMul:product:0lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_68/add�
#lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_68/BiasAdd/ReadVariableOp�
lstm_cell_68/BiasAddBiasAddlstm_cell_68/add:z:0+lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_68/BiasAdd~
lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_68/split/split_dim�
lstm_cell_68/splitSplit%lstm_cell_68/split/split_dim:output:0lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
lstm_cell_68/split�
lstm_cell_68/SigmoidSigmoidlstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/Sigmoid�
lstm_cell_68/Sigmoid_1Sigmoidlstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������@2
lstm_cell_68/Sigmoid_1�
lstm_cell_68/mulMullstm_cell_68/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/mul}
lstm_cell_68/ReluRelulstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������@2
lstm_cell_68/Relu�
lstm_cell_68/mul_1Mullstm_cell_68/Sigmoid:y:0lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/mul_1�
lstm_cell_68/add_1AddV2lstm_cell_68/mul:z:0lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/add_1�
lstm_cell_68/Sigmoid_2Sigmoidlstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������@2
lstm_cell_68/Sigmoid_2|
lstm_cell_68/Relu_1Relulstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/Relu_1�
lstm_cell_68/mul_2Mullstm_cell_68/Sigmoid_2:y:0!lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_68_matmul_readvariableop_resource-lstm_cell_68_matmul_1_readvariableop_resource,lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������@:���������@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_566966*
condR
while_cond_566965*K
output_shapes:
8: : : : :���������@:���������@: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������@2

Identity�
NoOpNoOp$^lstm_cell_68/BiasAdd/ReadVariableOp#^lstm_cell_68/MatMul/ReadVariableOp%^lstm_cell_68/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2J
#lstm_cell_68/BiasAdd/ReadVariableOp#lstm_cell_68/BiasAdd/ReadVariableOp2H
"lstm_cell_68/MatMul/ReadVariableOp"lstm_cell_68/MatMul/ReadVariableOp2L
$lstm_cell_68/MatMul_1/ReadVariableOp$lstm_cell_68/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
while_cond_564174
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_564174___redundant_placeholder04
0while_while_cond_564174___redundant_placeholder14
0while_while_cond_564174___redundant_placeholder24
0while_while_cond_564174___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������@:���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�
�
H__inference_lstm_cell_69_layer_call_and_return_conditional_losses_564727

inputs

states
states_11
matmul_readvariableop_resource:	@�3
 matmul_1_readvariableop_resource:	 �.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:��������� 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:��������� 2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:��������� 2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:��������� 2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:��������� 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:��������� 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:��������� 2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:��������� 2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:��������� 2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:��������� 2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:��������� 2

Identity_2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������@:��������� :��������� : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs:OK
'
_output_shapes
:��������� 
 
_user_specified_namestates:OK
'
_output_shapes
:��������� 
 
_user_specified_namestates
�
�
H__inference_lstm_cell_69_layer_call_and_return_conditional_losses_568242

inputs
states_0
states_11
matmul_readvariableop_resource:	@�3
 matmul_1_readvariableop_resource:	 �.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:��������� 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:��������� 2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:��������� 2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:��������� 2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:��������� 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:��������� 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:��������� 2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:��������� 2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:��������� 2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:��������� 2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:��������� 2

Identity_2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������@:��������� :��������� : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/0:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/1
�J
�

lstm_34_while_body_566459,
(lstm_34_while_lstm_34_while_loop_counter2
.lstm_34_while_lstm_34_while_maximum_iterations
lstm_34_while_placeholder
lstm_34_while_placeholder_1
lstm_34_while_placeholder_2
lstm_34_while_placeholder_3+
'lstm_34_while_lstm_34_strided_slice_1_0g
clstm_34_while_tensorarrayv2read_tensorlistgetitem_lstm_34_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_34_while_lstm_cell_68_matmul_readvariableop_resource_0:	�P
=lstm_34_while_lstm_cell_68_matmul_1_readvariableop_resource_0:	@�K
<lstm_34_while_lstm_cell_68_biasadd_readvariableop_resource_0:	�
lstm_34_while_identity
lstm_34_while_identity_1
lstm_34_while_identity_2
lstm_34_while_identity_3
lstm_34_while_identity_4
lstm_34_while_identity_5)
%lstm_34_while_lstm_34_strided_slice_1e
alstm_34_while_tensorarrayv2read_tensorlistgetitem_lstm_34_tensorarrayunstack_tensorlistfromtensorL
9lstm_34_while_lstm_cell_68_matmul_readvariableop_resource:	�N
;lstm_34_while_lstm_cell_68_matmul_1_readvariableop_resource:	@�I
:lstm_34_while_lstm_cell_68_biasadd_readvariableop_resource:	���1lstm_34/while/lstm_cell_68/BiasAdd/ReadVariableOp�0lstm_34/while/lstm_cell_68/MatMul/ReadVariableOp�2lstm_34/while/lstm_cell_68/MatMul_1/ReadVariableOp�
?lstm_34/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2A
?lstm_34/while/TensorArrayV2Read/TensorListGetItem/element_shape�
1lstm_34/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_34_while_tensorarrayv2read_tensorlistgetitem_lstm_34_tensorarrayunstack_tensorlistfromtensor_0lstm_34_while_placeholderHlstm_34/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype023
1lstm_34/while/TensorArrayV2Read/TensorListGetItem�
0lstm_34/while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp;lstm_34_while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype022
0lstm_34/while/lstm_cell_68/MatMul/ReadVariableOp�
!lstm_34/while/lstm_cell_68/MatMulMatMul8lstm_34/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_34/while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2#
!lstm_34/while/lstm_cell_68/MatMul�
2lstm_34/while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp=lstm_34_while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype024
2lstm_34/while/lstm_cell_68/MatMul_1/ReadVariableOp�
#lstm_34/while/lstm_cell_68/MatMul_1MatMullstm_34_while_placeholder_2:lstm_34/while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2%
#lstm_34/while/lstm_cell_68/MatMul_1�
lstm_34/while/lstm_cell_68/addAddV2+lstm_34/while/lstm_cell_68/MatMul:product:0-lstm_34/while/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:����������2 
lstm_34/while/lstm_cell_68/add�
1lstm_34/while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp<lstm_34_while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype023
1lstm_34/while/lstm_cell_68/BiasAdd/ReadVariableOp�
"lstm_34/while/lstm_cell_68/BiasAddBiasAdd"lstm_34/while/lstm_cell_68/add:z:09lstm_34/while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2$
"lstm_34/while/lstm_cell_68/BiasAdd�
*lstm_34/while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_34/while/lstm_cell_68/split/split_dim�
 lstm_34/while/lstm_cell_68/splitSplit3lstm_34/while/lstm_cell_68/split/split_dim:output:0+lstm_34/while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2"
 lstm_34/while/lstm_cell_68/split�
"lstm_34/while/lstm_cell_68/SigmoidSigmoid)lstm_34/while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������@2$
"lstm_34/while/lstm_cell_68/Sigmoid�
$lstm_34/while/lstm_cell_68/Sigmoid_1Sigmoid)lstm_34/while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������@2&
$lstm_34/while/lstm_cell_68/Sigmoid_1�
lstm_34/while/lstm_cell_68/mulMul(lstm_34/while/lstm_cell_68/Sigmoid_1:y:0lstm_34_while_placeholder_3*
T0*'
_output_shapes
:���������@2 
lstm_34/while/lstm_cell_68/mul�
lstm_34/while/lstm_cell_68/ReluRelu)lstm_34/while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������@2!
lstm_34/while/lstm_cell_68/Relu�
 lstm_34/while/lstm_cell_68/mul_1Mul&lstm_34/while/lstm_cell_68/Sigmoid:y:0-lstm_34/while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������@2"
 lstm_34/while/lstm_cell_68/mul_1�
 lstm_34/while/lstm_cell_68/add_1AddV2"lstm_34/while/lstm_cell_68/mul:z:0$lstm_34/while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������@2"
 lstm_34/while/lstm_cell_68/add_1�
$lstm_34/while/lstm_cell_68/Sigmoid_2Sigmoid)lstm_34/while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������@2&
$lstm_34/while/lstm_cell_68/Sigmoid_2�
!lstm_34/while/lstm_cell_68/Relu_1Relu$lstm_34/while/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������@2#
!lstm_34/while/lstm_cell_68/Relu_1�
 lstm_34/while/lstm_cell_68/mul_2Mul(lstm_34/while/lstm_cell_68/Sigmoid_2:y:0/lstm_34/while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2"
 lstm_34/while/lstm_cell_68/mul_2�
2lstm_34/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_34_while_placeholder_1lstm_34_while_placeholder$lstm_34/while/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_34/while/TensorArrayV2Write/TensorListSetIteml
lstm_34/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_34/while/add/y�
lstm_34/while/addAddV2lstm_34_while_placeholderlstm_34/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_34/while/addp
lstm_34/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_34/while/add_1/y�
lstm_34/while/add_1AddV2(lstm_34_while_lstm_34_while_loop_counterlstm_34/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_34/while/add_1�
lstm_34/while/IdentityIdentitylstm_34/while/add_1:z:0^lstm_34/while/NoOp*
T0*
_output_shapes
: 2
lstm_34/while/Identity�
lstm_34/while/Identity_1Identity.lstm_34_while_lstm_34_while_maximum_iterations^lstm_34/while/NoOp*
T0*
_output_shapes
: 2
lstm_34/while/Identity_1�
lstm_34/while/Identity_2Identitylstm_34/while/add:z:0^lstm_34/while/NoOp*
T0*
_output_shapes
: 2
lstm_34/while/Identity_2�
lstm_34/while/Identity_3IdentityBlstm_34/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_34/while/NoOp*
T0*
_output_shapes
: 2
lstm_34/while/Identity_3�
lstm_34/while/Identity_4Identity$lstm_34/while/lstm_cell_68/mul_2:z:0^lstm_34/while/NoOp*
T0*'
_output_shapes
:���������@2
lstm_34/while/Identity_4�
lstm_34/while/Identity_5Identity$lstm_34/while/lstm_cell_68/add_1:z:0^lstm_34/while/NoOp*
T0*'
_output_shapes
:���������@2
lstm_34/while/Identity_5�
lstm_34/while/NoOpNoOp2^lstm_34/while/lstm_cell_68/BiasAdd/ReadVariableOp1^lstm_34/while/lstm_cell_68/MatMul/ReadVariableOp3^lstm_34/while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_34/while/NoOp"9
lstm_34_while_identitylstm_34/while/Identity:output:0"=
lstm_34_while_identity_1!lstm_34/while/Identity_1:output:0"=
lstm_34_while_identity_2!lstm_34/while/Identity_2:output:0"=
lstm_34_while_identity_3!lstm_34/while/Identity_3:output:0"=
lstm_34_while_identity_4!lstm_34/while/Identity_4:output:0"=
lstm_34_while_identity_5!lstm_34/while/Identity_5:output:0"P
%lstm_34_while_lstm_34_strided_slice_1'lstm_34_while_lstm_34_strided_slice_1_0"z
:lstm_34_while_lstm_cell_68_biasadd_readvariableop_resource<lstm_34_while_lstm_cell_68_biasadd_readvariableop_resource_0"|
;lstm_34_while_lstm_cell_68_matmul_1_readvariableop_resource=lstm_34_while_lstm_cell_68_matmul_1_readvariableop_resource_0"x
9lstm_34_while_lstm_cell_68_matmul_readvariableop_resource;lstm_34_while_lstm_cell_68_matmul_readvariableop_resource_0"�
alstm_34_while_tensorarrayv2read_tensorlistgetitem_lstm_34_tensorarrayunstack_tensorlistfromtensorclstm_34_while_tensorarrayv2read_tensorlistgetitem_lstm_34_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2f
1lstm_34/while/lstm_cell_68/BiasAdd/ReadVariableOp1lstm_34/while/lstm_cell_68/BiasAdd/ReadVariableOp2d
0lstm_34/while/lstm_cell_68/MatMul/ReadVariableOp0lstm_34/while/lstm_cell_68/MatMul/ReadVariableOp2h
2lstm_34/while/lstm_cell_68/MatMul_1/ReadVariableOp2lstm_34/while/lstm_cell_68/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�?
�
while_body_565788
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_68_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_68_matmul_1_readvariableop_resource_0:	@�C
4while_lstm_cell_68_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_68_matmul_readvariableop_resource:	�F
3while_lstm_cell_68_matmul_1_readvariableop_resource:	@�A
2while_lstm_cell_68_biasadd_readvariableop_resource:	���)while/lstm_cell_68/BiasAdd/ReadVariableOp�(while/lstm_cell_68/MatMul/ReadVariableOp�*while/lstm_cell_68/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02*
(while/lstm_cell_68/MatMul/ReadVariableOp�
while/lstm_cell_68/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_68/MatMul�
*while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype02,
*while/lstm_cell_68/MatMul_1/ReadVariableOp�
while/lstm_cell_68/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_68/MatMul_1�
while/lstm_cell_68/addAddV2#while/lstm_cell_68/MatMul:product:0%while/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_68/add�
)while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_68/BiasAdd/ReadVariableOp�
while/lstm_cell_68/BiasAddBiasAddwhile/lstm_cell_68/add:z:01while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_68/BiasAdd�
"while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_68/split/split_dim�
while/lstm_cell_68/splitSplit+while/lstm_cell_68/split/split_dim:output:0#while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
while/lstm_cell_68/split�
while/lstm_cell_68/SigmoidSigmoid!while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/Sigmoid�
while/lstm_cell_68/Sigmoid_1Sigmoid!while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/Sigmoid_1�
while/lstm_cell_68/mulMul while/lstm_cell_68/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/mul�
while/lstm_cell_68/ReluRelu!while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/Relu�
while/lstm_cell_68/mul_1Mulwhile/lstm_cell_68/Sigmoid:y:0%while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/mul_1�
while/lstm_cell_68/add_1AddV2while/lstm_cell_68/mul:z:0while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/add_1�
while/lstm_cell_68/Sigmoid_2Sigmoid!while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/Sigmoid_2�
while/lstm_cell_68/Relu_1Reluwhile/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/Relu_1�
while/lstm_cell_68/mul_2Mul while/lstm_cell_68/Sigmoid_2:y:0'while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_68/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������@2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_68/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������@2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_68/BiasAdd/ReadVariableOp)^while/lstm_cell_68/MatMul/ReadVariableOp+^while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_68_biasadd_readvariableop_resource4while_lstm_cell_68_biasadd_readvariableop_resource_0"l
3while_lstm_cell_68_matmul_1_readvariableop_resource5while_lstm_cell_68_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_68_matmul_readvariableop_resource3while_lstm_cell_68_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2V
)while/lstm_cell_68/BiasAdd/ReadVariableOp)while/lstm_cell_68/BiasAdd/ReadVariableOp2T
(while/lstm_cell_68/MatMul/ReadVariableOp(while/lstm_cell_68/MatMul/ReadVariableOp2X
*while/lstm_cell_68/MatMul_1/ReadVariableOp*while/lstm_cell_68/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�
e
F__inference_dropout_17_layer_call_and_return_conditional_losses_565532

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:��������� 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:��������� 2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�?
�
while_body_567117
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_68_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_68_matmul_1_readvariableop_resource_0:	@�C
4while_lstm_cell_68_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_68_matmul_readvariableop_resource:	�F
3while_lstm_cell_68_matmul_1_readvariableop_resource:	@�A
2while_lstm_cell_68_biasadd_readvariableop_resource:	���)while/lstm_cell_68/BiasAdd/ReadVariableOp�(while/lstm_cell_68/MatMul/ReadVariableOp�*while/lstm_cell_68/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02*
(while/lstm_cell_68/MatMul/ReadVariableOp�
while/lstm_cell_68/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_68/MatMul�
*while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype02,
*while/lstm_cell_68/MatMul_1/ReadVariableOp�
while/lstm_cell_68/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_68/MatMul_1�
while/lstm_cell_68/addAddV2#while/lstm_cell_68/MatMul:product:0%while/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_68/add�
)while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_68/BiasAdd/ReadVariableOp�
while/lstm_cell_68/BiasAddBiasAddwhile/lstm_cell_68/add:z:01while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_68/BiasAdd�
"while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_68/split/split_dim�
while/lstm_cell_68/splitSplit+while/lstm_cell_68/split/split_dim:output:0#while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
while/lstm_cell_68/split�
while/lstm_cell_68/SigmoidSigmoid!while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/Sigmoid�
while/lstm_cell_68/Sigmoid_1Sigmoid!while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/Sigmoid_1�
while/lstm_cell_68/mulMul while/lstm_cell_68/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/mul�
while/lstm_cell_68/ReluRelu!while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/Relu�
while/lstm_cell_68/mul_1Mulwhile/lstm_cell_68/Sigmoid:y:0%while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/mul_1�
while/lstm_cell_68/add_1AddV2while/lstm_cell_68/mul:z:0while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/add_1�
while/lstm_cell_68/Sigmoid_2Sigmoid!while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/Sigmoid_2�
while/lstm_cell_68/Relu_1Reluwhile/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/Relu_1�
while/lstm_cell_68/mul_2Mul while/lstm_cell_68/Sigmoid_2:y:0'while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_68/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������@2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_68/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������@2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_68/BiasAdd/ReadVariableOp)^while/lstm_cell_68/MatMul/ReadVariableOp+^while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_68_biasadd_readvariableop_resource4while_lstm_cell_68_biasadd_readvariableop_resource_0"l
3while_lstm_cell_68_matmul_1_readvariableop_resource5while_lstm_cell_68_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_68_matmul_readvariableop_resource3while_lstm_cell_68_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2V
)while/lstm_cell_68/BiasAdd/ReadVariableOp)while/lstm_cell_68/BiasAdd/ReadVariableOp2T
(while/lstm_cell_68/MatMul/ReadVariableOp(while/lstm_cell_68/MatMul/ReadVariableOp2X
*while/lstm_cell_68/MatMul_1/ReadVariableOp*while/lstm_cell_68/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�
�
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_564097

inputs

states
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	@�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������@2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������@2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������@2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������@2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������@2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������@2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������@2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������@2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������@2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������@2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������@2

Identity_2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������@:���������@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������@
 
_user_specified_namestates:OK
'
_output_shapes
:���������@
 
_user_specified_namestates
�\
�
C__inference_lstm_35_layer_call_and_return_conditional_losses_567547
inputs_0>
+lstm_cell_69_matmul_readvariableop_resource:	@�@
-lstm_cell_69_matmul_1_readvariableop_resource:	 �;
,lstm_cell_69_biasadd_readvariableop_resource:	�
identity��#lstm_cell_69/BiasAdd/ReadVariableOp�"lstm_cell_69/MatMul/ReadVariableOp�$lstm_cell_69/MatMul_1/ReadVariableOp�whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_69/MatMul/ReadVariableOpReadVariableOp+lstm_cell_69_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype02$
"lstm_cell_69/MatMul/ReadVariableOp�
lstm_cell_69/MatMulMatMulstrided_slice_2:output:0*lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_69/MatMul�
$lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_69_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02&
$lstm_cell_69/MatMul_1/ReadVariableOp�
lstm_cell_69/MatMul_1MatMulzeros:output:0,lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_69/MatMul_1�
lstm_cell_69/addAddV2lstm_cell_69/MatMul:product:0lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_69/add�
#lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_69_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_69/BiasAdd/ReadVariableOp�
lstm_cell_69/BiasAddBiasAddlstm_cell_69/add:z:0+lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_69/BiasAdd~
lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_69/split/split_dim�
lstm_cell_69/splitSplit%lstm_cell_69/split/split_dim:output:0lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
lstm_cell_69/split�
lstm_cell_69/SigmoidSigmoidlstm_cell_69/split:output:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/Sigmoid�
lstm_cell_69/Sigmoid_1Sigmoidlstm_cell_69/split:output:1*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/Sigmoid_1�
lstm_cell_69/mulMullstm_cell_69/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/mul}
lstm_cell_69/ReluRelulstm_cell_69/split:output:2*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/Relu�
lstm_cell_69/mul_1Mullstm_cell_69/Sigmoid:y:0lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/mul_1�
lstm_cell_69/add_1AddV2lstm_cell_69/mul:z:0lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/add_1�
lstm_cell_69/Sigmoid_2Sigmoidlstm_cell_69/split:output:3*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/Sigmoid_2|
lstm_cell_69/Relu_1Relulstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/Relu_1�
lstm_cell_69/mul_2Mullstm_cell_69/Sigmoid_2:y:0!lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_69_matmul_readvariableop_resource-lstm_cell_69_matmul_1_readvariableop_resource,lstm_cell_69_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_567463*
condR
while_cond_567462*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������ *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:��������� 2

Identity�
NoOpNoOp$^lstm_cell_69/BiasAdd/ReadVariableOp#^lstm_cell_69/MatMul/ReadVariableOp%^lstm_cell_69/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������@: : : 2J
#lstm_cell_69/BiasAdd/ReadVariableOp#lstm_cell_69/BiasAdd/ReadVariableOp2H
"lstm_cell_69/MatMul/ReadVariableOp"lstm_cell_69/MatMul/ReadVariableOp2L
$lstm_cell_69/MatMul_1/ReadVariableOp$lstm_cell_69/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������@
"
_user_specified_name
inputs/0
�
�
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_563951

inputs

states
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	@�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������@2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������@2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������@2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������@2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������@2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������@2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������@2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������@2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������@2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������@2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������@2

Identity_2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������@:���������@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������@
 
_user_specified_namestates:OK
'
_output_shapes
:���������@
 
_user_specified_namestates
�
�
(__inference_lstm_34_layer_call_fn_566715
inputs_0
unknown:	�
	unknown_0:	@�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_34_layer_call_and_return_conditional_losses_5640342
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
d
F__inference_dropout_17_layer_call_and_return_conditional_losses_565464

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:��������� 2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:��������� 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�[
�
C__inference_lstm_34_layer_call_and_return_conditional_losses_565872

inputs>
+lstm_cell_68_matmul_readvariableop_resource:	�@
-lstm_cell_68_matmul_1_readvariableop_resource:	@�;
,lstm_cell_68_biasadd_readvariableop_resource:	�
identity��#lstm_cell_68/BiasAdd/ReadVariableOp�"lstm_cell_68/MatMul/ReadVariableOp�$lstm_cell_68/MatMul_1/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_68/MatMul/ReadVariableOpReadVariableOp+lstm_cell_68_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"lstm_cell_68/MatMul/ReadVariableOp�
lstm_cell_68/MatMulMatMulstrided_slice_2:output:0*lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_68/MatMul�
$lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype02&
$lstm_cell_68/MatMul_1/ReadVariableOp�
lstm_cell_68/MatMul_1MatMulzeros:output:0,lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_68/MatMul_1�
lstm_cell_68/addAddV2lstm_cell_68/MatMul:product:0lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_68/add�
#lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_68/BiasAdd/ReadVariableOp�
lstm_cell_68/BiasAddBiasAddlstm_cell_68/add:z:0+lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_68/BiasAdd~
lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_68/split/split_dim�
lstm_cell_68/splitSplit%lstm_cell_68/split/split_dim:output:0lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
lstm_cell_68/split�
lstm_cell_68/SigmoidSigmoidlstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/Sigmoid�
lstm_cell_68/Sigmoid_1Sigmoidlstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������@2
lstm_cell_68/Sigmoid_1�
lstm_cell_68/mulMullstm_cell_68/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/mul}
lstm_cell_68/ReluRelulstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������@2
lstm_cell_68/Relu�
lstm_cell_68/mul_1Mullstm_cell_68/Sigmoid:y:0lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/mul_1�
lstm_cell_68/add_1AddV2lstm_cell_68/mul:z:0lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/add_1�
lstm_cell_68/Sigmoid_2Sigmoidlstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������@2
lstm_cell_68/Sigmoid_2|
lstm_cell_68/Relu_1Relulstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/Relu_1�
lstm_cell_68/mul_2Mullstm_cell_68/Sigmoid_2:y:0!lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_68_matmul_readvariableop_resource-lstm_cell_68_matmul_1_readvariableop_resource,lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������@:���������@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_565788*
condR
while_cond_565787*K
output_shapes:
8: : : : :���������@:���������@: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������@2

Identity�
NoOpNoOp$^lstm_cell_68/BiasAdd/ReadVariableOp#^lstm_cell_68/MatMul/ReadVariableOp%^lstm_cell_68/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2J
#lstm_cell_68/BiasAdd/ReadVariableOp#lstm_cell_68/BiasAdd/ReadVariableOp2H
"lstm_cell_68/MatMul/ReadVariableOp"lstm_cell_68/MatMul/ReadVariableOp2L
$lstm_cell_68/MatMul_1/ReadVariableOp$lstm_cell_68/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�[
�
C__inference_lstm_35_layer_call_and_return_conditional_losses_565699

inputs>
+lstm_cell_69_matmul_readvariableop_resource:	@�@
-lstm_cell_69_matmul_1_readvariableop_resource:	 �;
,lstm_cell_69_biasadd_readvariableop_resource:	�
identity��#lstm_cell_69/BiasAdd/ReadVariableOp�"lstm_cell_69/MatMul/ReadVariableOp�$lstm_cell_69/MatMul_1/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_69/MatMul/ReadVariableOpReadVariableOp+lstm_cell_69_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype02$
"lstm_cell_69/MatMul/ReadVariableOp�
lstm_cell_69/MatMulMatMulstrided_slice_2:output:0*lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_69/MatMul�
$lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_69_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02&
$lstm_cell_69/MatMul_1/ReadVariableOp�
lstm_cell_69/MatMul_1MatMulzeros:output:0,lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_69/MatMul_1�
lstm_cell_69/addAddV2lstm_cell_69/MatMul:product:0lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_69/add�
#lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_69_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_69/BiasAdd/ReadVariableOp�
lstm_cell_69/BiasAddBiasAddlstm_cell_69/add:z:0+lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_69/BiasAdd~
lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_69/split/split_dim�
lstm_cell_69/splitSplit%lstm_cell_69/split/split_dim:output:0lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
lstm_cell_69/split�
lstm_cell_69/SigmoidSigmoidlstm_cell_69/split:output:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/Sigmoid�
lstm_cell_69/Sigmoid_1Sigmoidlstm_cell_69/split:output:1*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/Sigmoid_1�
lstm_cell_69/mulMullstm_cell_69/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/mul}
lstm_cell_69/ReluRelulstm_cell_69/split:output:2*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/Relu�
lstm_cell_69/mul_1Mullstm_cell_69/Sigmoid:y:0lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/mul_1�
lstm_cell_69/add_1AddV2lstm_cell_69/mul:z:0lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/add_1�
lstm_cell_69/Sigmoid_2Sigmoidlstm_cell_69/split:output:3*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/Sigmoid_2|
lstm_cell_69/Relu_1Relulstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/Relu_1�
lstm_cell_69/mul_2Mullstm_cell_69/Sigmoid_2:y:0!lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_69/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_69_matmul_readvariableop_resource-lstm_cell_69_matmul_1_readvariableop_resource,lstm_cell_69_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_565615*
condR
while_cond_565614*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:��������� 2

Identity�
NoOpNoOp$^lstm_cell_69/BiasAdd/ReadVariableOp#^lstm_cell_69/MatMul/ReadVariableOp%^lstm_cell_69/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������@: : : 2J
#lstm_cell_69/BiasAdd/ReadVariableOp#lstm_cell_69/BiasAdd/ReadVariableOp2H
"lstm_cell_69/MatMul/ReadVariableOp"lstm_cell_69/MatMul/ReadVariableOp2L
$lstm_cell_69/MatMul_1/ReadVariableOp$lstm_cell_69/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�F
�
C__inference_lstm_34_layer_call_and_return_conditional_losses_564034

inputs&
lstm_cell_68_563952:	�&
lstm_cell_68_563954:	@�"
lstm_cell_68_563956:	�
identity��$lstm_cell_68/StatefulPartitionedCall�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
$lstm_cell_68/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_68_563952lstm_cell_68_563954lstm_cell_68_563956*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������@:���������@:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_5639512&
$lstm_cell_68/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_68_563952lstm_cell_68_563954lstm_cell_68_563956*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������@:���������@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_563965*
condR
while_cond_563964*K
output_shapes:
8: : : : :���������@:���������@: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������@2

Identity}
NoOpNoOp%^lstm_cell_68/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_68/StatefulPartitionedCall$lstm_cell_68/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
while_cond_565614
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_565614___redundant_placeholder04
0while_while_cond_565614___redundant_placeholder14
0while_while_cond_565614___redundant_placeholder24
0while_while_cond_565614___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�
�
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_568144

inputs
states_0
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	@�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������@2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������@2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������@2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������@2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������@2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������@2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������@2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������@2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������@2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������@2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������@2

Identity_2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������@:���������@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/1
�?
�
while_body_567268
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_68_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_68_matmul_1_readvariableop_resource_0:	@�C
4while_lstm_cell_68_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_68_matmul_readvariableop_resource:	�F
3while_lstm_cell_68_matmul_1_readvariableop_resource:	@�A
2while_lstm_cell_68_biasadd_readvariableop_resource:	���)while/lstm_cell_68/BiasAdd/ReadVariableOp�(while/lstm_cell_68/MatMul/ReadVariableOp�*while/lstm_cell_68/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02*
(while/lstm_cell_68/MatMul/ReadVariableOp�
while/lstm_cell_68/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_68/MatMul�
*while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype02,
*while/lstm_cell_68/MatMul_1/ReadVariableOp�
while/lstm_cell_68/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_68/MatMul_1�
while/lstm_cell_68/addAddV2#while/lstm_cell_68/MatMul:product:0%while/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_68/add�
)while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_68/BiasAdd/ReadVariableOp�
while/lstm_cell_68/BiasAddBiasAddwhile/lstm_cell_68/add:z:01while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_68/BiasAdd�
"while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_68/split/split_dim�
while/lstm_cell_68/splitSplit+while/lstm_cell_68/split/split_dim:output:0#while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
while/lstm_cell_68/split�
while/lstm_cell_68/SigmoidSigmoid!while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/Sigmoid�
while/lstm_cell_68/Sigmoid_1Sigmoid!while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/Sigmoid_1�
while/lstm_cell_68/mulMul while/lstm_cell_68/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/mul�
while/lstm_cell_68/ReluRelu!while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/Relu�
while/lstm_cell_68/mul_1Mulwhile/lstm_cell_68/Sigmoid:y:0%while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/mul_1�
while/lstm_cell_68/add_1AddV2while/lstm_cell_68/mul:z:0while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/add_1�
while/lstm_cell_68/Sigmoid_2Sigmoid!while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/Sigmoid_2�
while/lstm_cell_68/Relu_1Reluwhile/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/Relu_1�
while/lstm_cell_68/mul_2Mul while/lstm_cell_68/Sigmoid_2:y:0'while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_68/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_68/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������@2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_68/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������@2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_68/BiasAdd/ReadVariableOp)^while/lstm_cell_68/MatMul/ReadVariableOp+^while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_68_biasadd_readvariableop_resource4while_lstm_cell_68_biasadd_readvariableop_resource_0"l
3while_lstm_cell_68_matmul_1_readvariableop_resource5while_lstm_cell_68_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_68_matmul_readvariableop_resource3while_lstm_cell_68_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2V
)while/lstm_cell_68/BiasAdd/ReadVariableOp)while/lstm_cell_68/BiasAdd/ReadVariableOp2T
(while/lstm_cell_68/MatMul/ReadVariableOp(while/lstm_cell_68/MatMul/ReadVariableOp2X
*while/lstm_cell_68/MatMul_1/ReadVariableOp*while/lstm_cell_68/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�
�
I__inference_sequential_17_layer_call_and_return_conditional_losses_566016
lstm_34_input!
lstm_34_565995:	�!
lstm_34_565997:	@�
lstm_34_565999:	�!
lstm_35_566002:	@�!
lstm_35_566004:	 �
lstm_35_566006:	�!
dense_17_566010: 
dense_17_566012:
identity�� dense_17/StatefulPartitionedCall�"dropout_17/StatefulPartitionedCall�lstm_34/StatefulPartitionedCall�lstm_35/StatefulPartitionedCall�
lstm_34/StatefulPartitionedCallStatefulPartitionedCalllstm_34_inputlstm_34_565995lstm_34_565997lstm_34_565999*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_34_layer_call_and_return_conditional_losses_5658722!
lstm_34/StatefulPartitionedCall�
lstm_35/StatefulPartitionedCallStatefulPartitionedCall(lstm_34/StatefulPartitionedCall:output:0lstm_35_566002lstm_35_566004lstm_35_566006*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_35_layer_call_and_return_conditional_losses_5656992!
lstm_35/StatefulPartitionedCall�
"dropout_17/StatefulPartitionedCallStatefulPartitionedCall(lstm_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_17_layer_call_and_return_conditional_losses_5655322$
"dropout_17/StatefulPartitionedCall�
 dense_17/StatefulPartitionedCallStatefulPartitionedCall+dropout_17/StatefulPartitionedCall:output:0dense_17_566010dense_17_566012*
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
GPU 2J 8� *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_5654762"
 dense_17/StatefulPartitionedCall�
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp!^dense_17/StatefulPartitionedCall#^dropout_17/StatefulPartitionedCall ^lstm_34/StatefulPartitionedCall ^lstm_35/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2H
"dropout_17/StatefulPartitionedCall"dropout_17/StatefulPartitionedCall2B
lstm_34/StatefulPartitionedCalllstm_34/StatefulPartitionedCall2B
lstm_35/StatefulPartitionedCalllstm_35/StatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_34_input
�F
�
C__inference_lstm_35_layer_call_and_return_conditional_losses_564874

inputs&
lstm_cell_69_564792:	@�&
lstm_cell_69_564794:	 �"
lstm_cell_69_564796:	�
identity��$lstm_cell_69/StatefulPartitionedCall�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� 2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_2�
$lstm_cell_69/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_69_564792lstm_cell_69_564794lstm_cell_69_564796*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_69_layer_call_and_return_conditional_losses_5647272&
$lstm_cell_69/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_69_564792lstm_cell_69_564794lstm_cell_69_564796*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_564805*
condR
while_cond_564804*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������ *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:��������� 2

Identity}
NoOpNoOp%^lstm_cell_69/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������@: : : 2L
$lstm_cell_69/StatefulPartitionedCall$lstm_cell_69/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������@
 
_user_specified_nameinputs
�[
�
C__inference_lstm_34_layer_call_and_return_conditional_losses_567201

inputs>
+lstm_cell_68_matmul_readvariableop_resource:	�@
-lstm_cell_68_matmul_1_readvariableop_resource:	@�;
,lstm_cell_68_biasadd_readvariableop_resource:	�
identity��#lstm_cell_68/BiasAdd/ReadVariableOp�"lstm_cell_68/MatMul/ReadVariableOp�$lstm_cell_68/MatMul_1/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
"lstm_cell_68/MatMul/ReadVariableOpReadVariableOp+lstm_cell_68_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"lstm_cell_68/MatMul/ReadVariableOp�
lstm_cell_68/MatMulMatMulstrided_slice_2:output:0*lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_68/MatMul�
$lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype02&
$lstm_cell_68/MatMul_1/ReadVariableOp�
lstm_cell_68/MatMul_1MatMulzeros:output:0,lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_68/MatMul_1�
lstm_cell_68/addAddV2lstm_cell_68/MatMul:product:0lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_68/add�
#lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_68/BiasAdd/ReadVariableOp�
lstm_cell_68/BiasAddBiasAddlstm_cell_68/add:z:0+lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_68/BiasAdd~
lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_68/split/split_dim�
lstm_cell_68/splitSplit%lstm_cell_68/split/split_dim:output:0lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
lstm_cell_68/split�
lstm_cell_68/SigmoidSigmoidlstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/Sigmoid�
lstm_cell_68/Sigmoid_1Sigmoidlstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������@2
lstm_cell_68/Sigmoid_1�
lstm_cell_68/mulMullstm_cell_68/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/mul}
lstm_cell_68/ReluRelulstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������@2
lstm_cell_68/Relu�
lstm_cell_68/mul_1Mullstm_cell_68/Sigmoid:y:0lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/mul_1�
lstm_cell_68/add_1AddV2lstm_cell_68/mul:z:0lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/add_1�
lstm_cell_68/Sigmoid_2Sigmoidlstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������@2
lstm_cell_68/Sigmoid_2|
lstm_cell_68/Relu_1Relulstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/Relu_1�
lstm_cell_68/mul_2Mullstm_cell_68/Sigmoid_2:y:0!lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
lstm_cell_68/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_68_matmul_readvariableop_resource-lstm_cell_68_matmul_1_readvariableop_resource,lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������@:���������@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_567117*
condR
while_cond_567116*K
output_shapes:
8: : : : :���������@:���������@: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������@2

Identity�
NoOpNoOp$^lstm_cell_68/BiasAdd/ReadVariableOp#^lstm_cell_68/MatMul/ReadVariableOp%^lstm_cell_68/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2J
#lstm_cell_68/BiasAdd/ReadVariableOp#lstm_cell_68/BiasAdd/ReadVariableOp2H
"lstm_cell_68/MatMul/ReadVariableOp"lstm_cell_68/MatMul/ReadVariableOp2L
$lstm_cell_68/MatMul_1/ReadVariableOp$lstm_cell_68/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
K
lstm_34_input:
serving_default_lstm_34_input:0���������<
dense_170
StatefulPartitionedCall:0���������tensorflow/serving/predict:�
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
	optimizer
trainable_variables
regularization_losses
	variables
		keras_api


signatures
p_default_save_signature
q__call__
*r&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api
s__call__
*t&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
�
cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api
u__call__
*v&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
�
trainable_variables
regularization_losses
	variables
	keras_api
w__call__
*x&call_and_return_all_conditional_losses"
_tf_keras_layer
�

kernel
bias
trainable_variables
regularization_losses
	variables
 	keras_api
y__call__
*z&call_and_return_all_conditional_losses"
_tf_keras_layer
�
!iter

"beta_1

#beta_2
	$decay
%learning_ratem`ma&mb'mc(md)me*mf+mgvhvi&vj'vk(vl)vm*vn+vo"
	optimizer
X
&0
'1
(2
)3
*4
+5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
X
&0
'1
(2
)3
*4
+5
6
7"
trackable_list_wrapper
�
trainable_variables
regularization_losses
,layer_metrics

-layers
	variables
.metrics
/non_trainable_variables
0layer_regularization_losses
q__call__
p_default_save_signature
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
,
{serving_default"
signature_map
�
1
state_size

&kernel
'recurrent_kernel
(bias
2trainable_variables
3regularization_losses
4	variables
5	keras_api
|__call__
*}&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
�
trainable_variables
regularization_losses
6layer_metrics

7layers
	variables
8layer_regularization_losses
9metrics
:non_trainable_variables

;states
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
�
<
state_size

)kernel
*recurrent_kernel
+bias
=trainable_variables
>regularization_losses
?	variables
@	keras_api
~__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
)0
*1
+2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
)0
*1
+2"
trackable_list_wrapper
�
trainable_variables
regularization_losses
Alayer_metrics

Blayers
	variables
Clayer_regularization_losses
Dmetrics
Enon_trainable_variables

Fstates
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
trainable_variables
regularization_losses
Glayer_metrics

Hlayers
	variables
Imetrics
Jnon_trainable_variables
Klayer_regularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
!: 2dense_17/kernel
:2dense_17/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
trainable_variables
regularization_losses
Llayer_metrics

Mlayers
	variables
Nmetrics
Onon_trainable_variables
Player_regularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.:,	�2lstm_34/lstm_cell_68/kernel
8:6	@�2%lstm_34/lstm_cell_68/recurrent_kernel
(:&�2lstm_34/lstm_cell_68/bias
.:,	@�2lstm_35/lstm_cell_69/kernel
8:6	 �2%lstm_35/lstm_cell_69/recurrent_kernel
(:&�2lstm_35/lstm_cell_69/bias
 "
trackable_dict_wrapper
<
0
1
2
3"
trackable_list_wrapper
'
Q0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
�
2trainable_variables
3regularization_losses
Rlayer_metrics

Slayers
4	variables
Tmetrics
Unon_trainable_variables
Vlayer_regularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
)0
*1
+2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
)0
*1
+2"
trackable_list_wrapper
�
=trainable_variables
>regularization_losses
Wlayer_metrics

Xlayers
?	variables
Ymetrics
Znon_trainable_variables
[layer_regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
N
	\total
	]count
^	variables
_	keras_api"
_tf_keras_metric
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
.
\0
]1"
trackable_list_wrapper
-
^	variables"
_generic_user_object
&:$ 2Adam/dense_17/kernel/m
 :2Adam/dense_17/bias/m
3:1	�2"Adam/lstm_34/lstm_cell_68/kernel/m
=:;	@�2,Adam/lstm_34/lstm_cell_68/recurrent_kernel/m
-:+�2 Adam/lstm_34/lstm_cell_68/bias/m
3:1	@�2"Adam/lstm_35/lstm_cell_69/kernel/m
=:;	 �2,Adam/lstm_35/lstm_cell_69/recurrent_kernel/m
-:+�2 Adam/lstm_35/lstm_cell_69/bias/m
&:$ 2Adam/dense_17/kernel/v
 :2Adam/dense_17/bias/v
3:1	�2"Adam/lstm_34/lstm_cell_68/kernel/v
=:;	@�2,Adam/lstm_34/lstm_cell_68/recurrent_kernel/v
-:+�2 Adam/lstm_34/lstm_cell_68/bias/v
3:1	@�2"Adam/lstm_35/lstm_cell_69/kernel/v
=:;	 �2,Adam/lstm_35/lstm_cell_69/recurrent_kernel/v
-:+�2 Adam/lstm_35/lstm_cell_69/bias/v
�B�
!__inference__wrapped_model_563876lstm_34_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
.__inference_sequential_17_layer_call_fn_565502
.__inference_sequential_17_layer_call_fn_566066
.__inference_sequential_17_layer_call_fn_566087
.__inference_sequential_17_layer_call_fn_565968�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
I__inference_sequential_17_layer_call_and_return_conditional_losses_566392
I__inference_sequential_17_layer_call_and_return_conditional_losses_566704
I__inference_sequential_17_layer_call_and_return_conditional_losses_565992
I__inference_sequential_17_layer_call_and_return_conditional_losses_566016�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
(__inference_lstm_34_layer_call_fn_566715
(__inference_lstm_34_layer_call_fn_566726
(__inference_lstm_34_layer_call_fn_566737
(__inference_lstm_34_layer_call_fn_566748�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
C__inference_lstm_34_layer_call_and_return_conditional_losses_566899
C__inference_lstm_34_layer_call_and_return_conditional_losses_567050
C__inference_lstm_34_layer_call_and_return_conditional_losses_567201
C__inference_lstm_34_layer_call_and_return_conditional_losses_567352�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
(__inference_lstm_35_layer_call_fn_567363
(__inference_lstm_35_layer_call_fn_567374
(__inference_lstm_35_layer_call_fn_567385
(__inference_lstm_35_layer_call_fn_567396�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
C__inference_lstm_35_layer_call_and_return_conditional_losses_567547
C__inference_lstm_35_layer_call_and_return_conditional_losses_567698
C__inference_lstm_35_layer_call_and_return_conditional_losses_567849
C__inference_lstm_35_layer_call_and_return_conditional_losses_568000�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
+__inference_dropout_17_layer_call_fn_568005
+__inference_dropout_17_layer_call_fn_568010�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
F__inference_dropout_17_layer_call_and_return_conditional_losses_568015
F__inference_dropout_17_layer_call_and_return_conditional_losses_568027�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
)__inference_dense_17_layer_call_fn_568036�
���
FullArgSpec
args�
jself
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
annotations� *
 
�2�
D__inference_dense_17_layer_call_and_return_conditional_losses_568046�
���
FullArgSpec
args�
jself
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
annotations� *
 
�B�
$__inference_signature_wrapper_566045lstm_34_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_lstm_cell_68_layer_call_fn_568063
-__inference_lstm_cell_68_layer_call_fn_568080�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_568112
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_568144�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
-__inference_lstm_cell_69_layer_call_fn_568161
-__inference_lstm_cell_69_layer_call_fn_568178�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
H__inference_lstm_cell_69_layer_call_and_return_conditional_losses_568210
H__inference_lstm_cell_69_layer_call_and_return_conditional_losses_568242�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 �
!__inference__wrapped_model_563876{&'()*+:�7
0�-
+�(
lstm_34_input���������
� "3�0
.
dense_17"�
dense_17����������
D__inference_dense_17_layer_call_and_return_conditional_losses_568046\/�,
%�"
 �
inputs��������� 
� "%�"
�
0���������
� |
)__inference_dense_17_layer_call_fn_568036O/�,
%�"
 �
inputs��������� 
� "�����������
F__inference_dropout_17_layer_call_and_return_conditional_losses_568015\3�0
)�&
 �
inputs��������� 
p 
� "%�"
�
0��������� 
� �
F__inference_dropout_17_layer_call_and_return_conditional_losses_568027\3�0
)�&
 �
inputs��������� 
p
� "%�"
�
0��������� 
� ~
+__inference_dropout_17_layer_call_fn_568005O3�0
)�&
 �
inputs��������� 
p 
� "���������� ~
+__inference_dropout_17_layer_call_fn_568010O3�0
)�&
 �
inputs��������� 
p
� "���������� �
C__inference_lstm_34_layer_call_and_return_conditional_losses_566899�&'(O�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "2�/
(�%
0������������������@
� �
C__inference_lstm_34_layer_call_and_return_conditional_losses_567050�&'(O�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "2�/
(�%
0������������������@
� �
C__inference_lstm_34_layer_call_and_return_conditional_losses_567201q&'(?�<
5�2
$�!
inputs���������

 
p 

 
� ")�&
�
0���������@
� �
C__inference_lstm_34_layer_call_and_return_conditional_losses_567352q&'(?�<
5�2
$�!
inputs���������

 
p

 
� ")�&
�
0���������@
� �
(__inference_lstm_34_layer_call_fn_566715}&'(O�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "%�"������������������@�
(__inference_lstm_34_layer_call_fn_566726}&'(O�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "%�"������������������@�
(__inference_lstm_34_layer_call_fn_566737d&'(?�<
5�2
$�!
inputs���������

 
p 

 
� "����������@�
(__inference_lstm_34_layer_call_fn_566748d&'(?�<
5�2
$�!
inputs���������

 
p

 
� "����������@�
C__inference_lstm_35_layer_call_and_return_conditional_losses_567547})*+O�L
E�B
4�1
/�,
inputs/0������������������@

 
p 

 
� "%�"
�
0��������� 
� �
C__inference_lstm_35_layer_call_and_return_conditional_losses_567698})*+O�L
E�B
4�1
/�,
inputs/0������������������@

 
p

 
� "%�"
�
0��������� 
� �
C__inference_lstm_35_layer_call_and_return_conditional_losses_567849m)*+?�<
5�2
$�!
inputs���������@

 
p 

 
� "%�"
�
0��������� 
� �
C__inference_lstm_35_layer_call_and_return_conditional_losses_568000m)*+?�<
5�2
$�!
inputs���������@

 
p

 
� "%�"
�
0��������� 
� �
(__inference_lstm_35_layer_call_fn_567363p)*+O�L
E�B
4�1
/�,
inputs/0������������������@

 
p 

 
� "���������� �
(__inference_lstm_35_layer_call_fn_567374p)*+O�L
E�B
4�1
/�,
inputs/0������������������@

 
p

 
� "���������� �
(__inference_lstm_35_layer_call_fn_567385`)*+?�<
5�2
$�!
inputs���������@

 
p 

 
� "���������� �
(__inference_lstm_35_layer_call_fn_567396`)*+?�<
5�2
$�!
inputs���������@

 
p

 
� "���������� �
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_568112�&'(��}
v�s
 �
inputs���������
K�H
"�
states/0���������@
"�
states/1���������@
p 
� "s�p
i�f
�
0/0���������@
E�B
�
0/1/0���������@
�
0/1/1���������@
� �
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_568144�&'(��}
v�s
 �
inputs���������
K�H
"�
states/0���������@
"�
states/1���������@
p
� "s�p
i�f
�
0/0���������@
E�B
�
0/1/0���������@
�
0/1/1���������@
� �
-__inference_lstm_cell_68_layer_call_fn_568063�&'(��}
v�s
 �
inputs���������
K�H
"�
states/0���������@
"�
states/1���������@
p 
� "c�`
�
0���������@
A�>
�
1/0���������@
�
1/1���������@�
-__inference_lstm_cell_68_layer_call_fn_568080�&'(��}
v�s
 �
inputs���������
K�H
"�
states/0���������@
"�
states/1���������@
p
� "c�`
�
0���������@
A�>
�
1/0���������@
�
1/1���������@�
H__inference_lstm_cell_69_layer_call_and_return_conditional_losses_568210�)*+��}
v�s
 �
inputs���������@
K�H
"�
states/0��������� 
"�
states/1��������� 
p 
� "s�p
i�f
�
0/0��������� 
E�B
�
0/1/0��������� 
�
0/1/1��������� 
� �
H__inference_lstm_cell_69_layer_call_and_return_conditional_losses_568242�)*+��}
v�s
 �
inputs���������@
K�H
"�
states/0��������� 
"�
states/1��������� 
p
� "s�p
i�f
�
0/0��������� 
E�B
�
0/1/0��������� 
�
0/1/1��������� 
� �
-__inference_lstm_cell_69_layer_call_fn_568161�)*+��}
v�s
 �
inputs���������@
K�H
"�
states/0��������� 
"�
states/1��������� 
p 
� "c�`
�
0��������� 
A�>
�
1/0��������� 
�
1/1��������� �
-__inference_lstm_cell_69_layer_call_fn_568178�)*+��}
v�s
 �
inputs���������@
K�H
"�
states/0��������� 
"�
states/1��������� 
p
� "c�`
�
0��������� 
A�>
�
1/0��������� 
�
1/1��������� �
I__inference_sequential_17_layer_call_and_return_conditional_losses_565992u&'()*+B�?
8�5
+�(
lstm_34_input���������
p 

 
� "%�"
�
0���������
� �
I__inference_sequential_17_layer_call_and_return_conditional_losses_566016u&'()*+B�?
8�5
+�(
lstm_34_input���������
p

 
� "%�"
�
0���������
� �
I__inference_sequential_17_layer_call_and_return_conditional_losses_566392n&'()*+;�8
1�.
$�!
inputs���������
p 

 
� "%�"
�
0���������
� �
I__inference_sequential_17_layer_call_and_return_conditional_losses_566704n&'()*+;�8
1�.
$�!
inputs���������
p

 
� "%�"
�
0���������
� �
.__inference_sequential_17_layer_call_fn_565502h&'()*+B�?
8�5
+�(
lstm_34_input���������
p 

 
� "�����������
.__inference_sequential_17_layer_call_fn_565968h&'()*+B�?
8�5
+�(
lstm_34_input���������
p

 
� "�����������
.__inference_sequential_17_layer_call_fn_566066a&'()*+;�8
1�.
$�!
inputs���������
p 

 
� "�����������
.__inference_sequential_17_layer_call_fn_566087a&'()*+;�8
1�.
$�!
inputs���������
p

 
� "�����������
$__inference_signature_wrapper_566045�&'()*+K�H
� 
A�>
<
lstm_34_input+�(
lstm_34_input���������"3�0
.
dense_17"�
dense_17���������