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
dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_10/kernel
s
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel*
_output_shapes

: *
dtype0
r
dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_10/bias
k
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
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
lstm_20/lstm_cell_40/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*,
shared_namelstm_20/lstm_cell_40/kernel
�
/lstm_20/lstm_cell_40/kernel/Read/ReadVariableOpReadVariableOplstm_20/lstm_cell_40/kernel*
_output_shapes
:	�*
dtype0
�
%lstm_20/lstm_cell_40/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*6
shared_name'%lstm_20/lstm_cell_40/recurrent_kernel
�
9lstm_20/lstm_cell_40/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_20/lstm_cell_40/recurrent_kernel*
_output_shapes
:	@�*
dtype0
�
lstm_20/lstm_cell_40/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�**
shared_namelstm_20/lstm_cell_40/bias
�
-lstm_20/lstm_cell_40/bias/Read/ReadVariableOpReadVariableOplstm_20/lstm_cell_40/bias*
_output_shapes	
:�*
dtype0
�
lstm_21/lstm_cell_41/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*,
shared_namelstm_21/lstm_cell_41/kernel
�
/lstm_21/lstm_cell_41/kernel/Read/ReadVariableOpReadVariableOplstm_21/lstm_cell_41/kernel*
_output_shapes
:	@�*
dtype0
�
%lstm_21/lstm_cell_41/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*6
shared_name'%lstm_21/lstm_cell_41/recurrent_kernel
�
9lstm_21/lstm_cell_41/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_21/lstm_cell_41/recurrent_kernel*
_output_shapes
:	 �*
dtype0
�
lstm_21/lstm_cell_41/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�**
shared_namelstm_21/lstm_cell_41/bias
�
-lstm_21/lstm_cell_41/bias/Read/ReadVariableOpReadVariableOplstm_21/lstm_cell_41/bias*
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
Adam/dense_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_10/kernel/m
�
*Adam/dense_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/m*
_output_shapes

: *
dtype0
�
Adam/dense_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_10/bias/m
y
(Adam/dense_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/m*
_output_shapes
:*
dtype0
�
"Adam/lstm_20/lstm_cell_40/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*3
shared_name$"Adam/lstm_20/lstm_cell_40/kernel/m
�
6Adam/lstm_20/lstm_cell_40/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_20/lstm_cell_40/kernel/m*
_output_shapes
:	�*
dtype0
�
,Adam/lstm_20/lstm_cell_40/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*=
shared_name.,Adam/lstm_20/lstm_cell_40/recurrent_kernel/m
�
@Adam/lstm_20/lstm_cell_40/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_20/lstm_cell_40/recurrent_kernel/m*
_output_shapes
:	@�*
dtype0
�
 Adam/lstm_20/lstm_cell_40/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_20/lstm_cell_40/bias/m
�
4Adam/lstm_20/lstm_cell_40/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_20/lstm_cell_40/bias/m*
_output_shapes	
:�*
dtype0
�
"Adam/lstm_21/lstm_cell_41/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*3
shared_name$"Adam/lstm_21/lstm_cell_41/kernel/m
�
6Adam/lstm_21/lstm_cell_41/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_21/lstm_cell_41/kernel/m*
_output_shapes
:	@�*
dtype0
�
,Adam/lstm_21/lstm_cell_41/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*=
shared_name.,Adam/lstm_21/lstm_cell_41/recurrent_kernel/m
�
@Adam/lstm_21/lstm_cell_41/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_21/lstm_cell_41/recurrent_kernel/m*
_output_shapes
:	 �*
dtype0
�
 Adam/lstm_21/lstm_cell_41/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_21/lstm_cell_41/bias/m
�
4Adam/lstm_21/lstm_cell_41/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_21/lstm_cell_41/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_10/kernel/v
�
*Adam/dense_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/v*
_output_shapes

: *
dtype0
�
Adam/dense_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_10/bias/v
y
(Adam/dense_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/v*
_output_shapes
:*
dtype0
�
"Adam/lstm_20/lstm_cell_40/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*3
shared_name$"Adam/lstm_20/lstm_cell_40/kernel/v
�
6Adam/lstm_20/lstm_cell_40/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_20/lstm_cell_40/kernel/v*
_output_shapes
:	�*
dtype0
�
,Adam/lstm_20/lstm_cell_40/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*=
shared_name.,Adam/lstm_20/lstm_cell_40/recurrent_kernel/v
�
@Adam/lstm_20/lstm_cell_40/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_20/lstm_cell_40/recurrent_kernel/v*
_output_shapes
:	@�*
dtype0
�
 Adam/lstm_20/lstm_cell_40/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_20/lstm_cell_40/bias/v
�
4Adam/lstm_20/lstm_cell_40/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_20/lstm_cell_40/bias/v*
_output_shapes	
:�*
dtype0
�
"Adam/lstm_21/lstm_cell_41/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*3
shared_name$"Adam/lstm_21/lstm_cell_41/kernel/v
�
6Adam/lstm_21/lstm_cell_41/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_21/lstm_cell_41/kernel/v*
_output_shapes
:	@�*
dtype0
�
,Adam/lstm_21/lstm_cell_41/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*=
shared_name.,Adam/lstm_21/lstm_cell_41/recurrent_kernel/v
�
@Adam/lstm_21/lstm_cell_41/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_21/lstm_cell_41/recurrent_kernel/v*
_output_shapes
:	 �*
dtype0
�
 Adam/lstm_21/lstm_cell_41/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_21/lstm_cell_41/bias/v
�
4Adam/lstm_21/lstm_cell_41/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_21/lstm_cell_41/bias/v*
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
VARIABLE_VALUEdense_10/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_10/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_20/lstm_cell_40/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%lstm_20/lstm_cell_40/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_20/lstm_cell_40/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUElstm_21/lstm_cell_41/kernel0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%lstm_21/lstm_cell_41/recurrent_kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_21/lstm_cell_41/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_10/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_10/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/lstm_20/lstm_cell_40/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_20/lstm_cell_40/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE Adam/lstm_20/lstm_cell_40/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/lstm_21/lstm_cell_41/kernel/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_21/lstm_cell_41/recurrent_kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE Adam/lstm_21/lstm_cell_41/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_10/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_10/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/lstm_20/lstm_cell_40/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_20/lstm_cell_40/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE Adam/lstm_20/lstm_cell_40/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/lstm_21/lstm_cell_41/kernel/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_21/lstm_cell_41/recurrent_kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE Adam/lstm_21/lstm_cell_41/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_lstm_20_inputPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_20_inputlstm_20/lstm_cell_40/kernel%lstm_20/lstm_cell_40/recurrent_kernellstm_20/lstm_cell_40/biaslstm_21/lstm_cell_41/kernel%lstm_21/lstm_cell_41/recurrent_kernellstm_21/lstm_cell_41/biasdense_10/kerneldense_10/bias*
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
$__inference_signature_wrapper_355398
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_10/kernel/Read/ReadVariableOp!dense_10/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_20/lstm_cell_40/kernel/Read/ReadVariableOp9lstm_20/lstm_cell_40/recurrent_kernel/Read/ReadVariableOp-lstm_20/lstm_cell_40/bias/Read/ReadVariableOp/lstm_21/lstm_cell_41/kernel/Read/ReadVariableOp9lstm_21/lstm_cell_41/recurrent_kernel/Read/ReadVariableOp-lstm_21/lstm_cell_41/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_10/kernel/m/Read/ReadVariableOp(Adam/dense_10/bias/m/Read/ReadVariableOp6Adam/lstm_20/lstm_cell_40/kernel/m/Read/ReadVariableOp@Adam/lstm_20/lstm_cell_40/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_20/lstm_cell_40/bias/m/Read/ReadVariableOp6Adam/lstm_21/lstm_cell_41/kernel/m/Read/ReadVariableOp@Adam/lstm_21/lstm_cell_41/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_21/lstm_cell_41/bias/m/Read/ReadVariableOp*Adam/dense_10/kernel/v/Read/ReadVariableOp(Adam/dense_10/bias/v/Read/ReadVariableOp6Adam/lstm_20/lstm_cell_40/kernel/v/Read/ReadVariableOp@Adam/lstm_20/lstm_cell_40/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_20/lstm_cell_40/bias/v/Read/ReadVariableOp6Adam/lstm_21/lstm_cell_41/kernel/v/Read/ReadVariableOp@Adam/lstm_21/lstm_cell_41/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_21/lstm_cell_41/bias/v/Read/ReadVariableOpConst*,
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
__inference__traced_save_357711
�	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_10/kerneldense_10/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_20/lstm_cell_40/kernel%lstm_20/lstm_cell_40/recurrent_kernellstm_20/lstm_cell_40/biaslstm_21/lstm_cell_41/kernel%lstm_21/lstm_cell_41/recurrent_kernellstm_21/lstm_cell_41/biastotalcountAdam/dense_10/kernel/mAdam/dense_10/bias/m"Adam/lstm_20/lstm_cell_40/kernel/m,Adam/lstm_20/lstm_cell_40/recurrent_kernel/m Adam/lstm_20/lstm_cell_40/bias/m"Adam/lstm_21/lstm_cell_41/kernel/m,Adam/lstm_21/lstm_cell_41/recurrent_kernel/m Adam/lstm_21/lstm_cell_41/bias/mAdam/dense_10/kernel/vAdam/dense_10/bias/v"Adam/lstm_20/lstm_cell_40/kernel/v,Adam/lstm_20/lstm_cell_40/recurrent_kernel/v Adam/lstm_20/lstm_cell_40/bias/v"Adam/lstm_21/lstm_cell_41/kernel/v,Adam/lstm_21/lstm_cell_41/recurrent_kernel/v Adam/lstm_21/lstm_cell_41/bias/v*+
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
"__inference__traced_restore_357814��#
�
d
F__inference_dropout_10_layer_call_and_return_conditional_losses_354817

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
�

�
D__inference_dense_10_layer_call_and_return_conditional_losses_357399

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
�%
�
while_body_354158
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_41_354182_0:	@�.
while_lstm_cell_41_354184_0:	 �*
while_lstm_cell_41_354186_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_41_354182:	@�,
while_lstm_cell_41_354184:	 �(
while_lstm_cell_41_354186:	���*while/lstm_cell_41/StatefulPartitionedCall�
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
*while/lstm_cell_41/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_41_354182_0while_lstm_cell_41_354184_0while_lstm_cell_41_354186_0*
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
H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_3540802,
*while/lstm_cell_41/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_41/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_41/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:��������� 2
while/Identity_4�
while/Identity_5Identity3while/lstm_cell_41/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:��������� 2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_41/StatefulPartitionedCall*"
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
while_lstm_cell_41_354182while_lstm_cell_41_354182_0"8
while_lstm_cell_41_354184while_lstm_cell_41_354184_0"8
while_lstm_cell_41_354186while_lstm_cell_41_354186_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2X
*while/lstm_cell_41/StatefulPartitionedCall*while/lstm_cell_41/StatefulPartitionedCall: 
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
�
G
+__inference_dropout_10_layer_call_fn_357358

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
F__inference_dropout_10_layer_call_and_return_conditional_losses_3548172
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
�F
�
C__inference_lstm_20_layer_call_and_return_conditional_losses_353597

inputs&
lstm_cell_40_353515:	�&
lstm_cell_40_353517:	@�"
lstm_cell_40_353519:	�
identity��$lstm_cell_40/StatefulPartitionedCall�whileD
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
$lstm_cell_40/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_40_353515lstm_cell_40_353517lstm_cell_40_353519*
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
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_3534502&
$lstm_cell_40/StatefulPartitionedCall�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_40_353515lstm_cell_40_353517lstm_cell_40_353519*
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
while_body_353528*
condR
while_cond_353527*K
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
NoOpNoOp%^lstm_cell_40/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_40/StatefulPartitionedCall$lstm_cell_40/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
-__inference_lstm_cell_40_layer_call_fn_357416

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
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_3533042
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
�
�
(__inference_lstm_20_layer_call_fn_356079
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
C__inference_lstm_20_layer_call_and_return_conditional_losses_3535972
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
�
�
H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_357563

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
�[
�
C__inference_lstm_21_layer_call_and_return_conditional_losses_354804

inputs>
+lstm_cell_41_matmul_readvariableop_resource:	@�@
-lstm_cell_41_matmul_1_readvariableop_resource:	 �;
,lstm_cell_41_biasadd_readvariableop_resource:	�
identity��#lstm_cell_41/BiasAdd/ReadVariableOp�"lstm_cell_41/MatMul/ReadVariableOp�$lstm_cell_41/MatMul_1/ReadVariableOp�whileD
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
"lstm_cell_41/MatMul/ReadVariableOpReadVariableOp+lstm_cell_41_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype02$
"lstm_cell_41/MatMul/ReadVariableOp�
lstm_cell_41/MatMulMatMulstrided_slice_2:output:0*lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_41/MatMul�
$lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_41_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02&
$lstm_cell_41/MatMul_1/ReadVariableOp�
lstm_cell_41/MatMul_1MatMulzeros:output:0,lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_41/MatMul_1�
lstm_cell_41/addAddV2lstm_cell_41/MatMul:product:0lstm_cell_41/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_41/add�
#lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_41_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_41/BiasAdd/ReadVariableOp�
lstm_cell_41/BiasAddBiasAddlstm_cell_41/add:z:0+lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_41/BiasAdd~
lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_41/split/split_dim�
lstm_cell_41/splitSplit%lstm_cell_41/split/split_dim:output:0lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
lstm_cell_41/split�
lstm_cell_41/SigmoidSigmoidlstm_cell_41/split:output:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/Sigmoid�
lstm_cell_41/Sigmoid_1Sigmoidlstm_cell_41/split:output:1*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/Sigmoid_1�
lstm_cell_41/mulMullstm_cell_41/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/mul}
lstm_cell_41/ReluRelulstm_cell_41/split:output:2*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/Relu�
lstm_cell_41/mul_1Mullstm_cell_41/Sigmoid:y:0lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/mul_1�
lstm_cell_41/add_1AddV2lstm_cell_41/mul:z:0lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/add_1�
lstm_cell_41/Sigmoid_2Sigmoidlstm_cell_41/split:output:3*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/Sigmoid_2|
lstm_cell_41/Relu_1Relulstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/Relu_1�
lstm_cell_41/mul_2Mullstm_cell_41/Sigmoid_2:y:0!lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/mul_2�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_41_matmul_readvariableop_resource-lstm_cell_41_matmul_1_readvariableop_resource,lstm_cell_41_biasadd_readvariableop_resource*
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
while_body_354720*
condR
while_cond_354719*K
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
NoOpNoOp$^lstm_cell_41/BiasAdd/ReadVariableOp#^lstm_cell_41/MatMul/ReadVariableOp%^lstm_cell_41/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������@: : : 2J
#lstm_cell_41/BiasAdd/ReadVariableOp#lstm_cell_41/BiasAdd/ReadVariableOp2H
"lstm_cell_41/MatMul/ReadVariableOp"lstm_cell_41/MatMul/ReadVariableOp2L
$lstm_cell_41/MatMul_1/ReadVariableOp$lstm_cell_41/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
.__inference_sequential_10_layer_call_fn_355440

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
I__inference_sequential_10_layer_call_and_return_conditional_losses_3552812
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

�
.__inference_sequential_10_layer_call_fn_355321
lstm_20_input
unknown:	�
	unknown_0:	@�
	unknown_1:	�
	unknown_2:	@�
	unknown_3:	 �
	unknown_4:	�
	unknown_5: 
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_20_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
I__inference_sequential_10_layer_call_and_return_conditional_losses_3552812
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
_user_specified_namelstm_20_input
�J
�

lstm_21_while_body_355654,
(lstm_21_while_lstm_21_while_loop_counter2
.lstm_21_while_lstm_21_while_maximum_iterations
lstm_21_while_placeholder
lstm_21_while_placeholder_1
lstm_21_while_placeholder_2
lstm_21_while_placeholder_3+
'lstm_21_while_lstm_21_strided_slice_1_0g
clstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_21_while_lstm_cell_41_matmul_readvariableop_resource_0:	@�P
=lstm_21_while_lstm_cell_41_matmul_1_readvariableop_resource_0:	 �K
<lstm_21_while_lstm_cell_41_biasadd_readvariableop_resource_0:	�
lstm_21_while_identity
lstm_21_while_identity_1
lstm_21_while_identity_2
lstm_21_while_identity_3
lstm_21_while_identity_4
lstm_21_while_identity_5)
%lstm_21_while_lstm_21_strided_slice_1e
alstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensorL
9lstm_21_while_lstm_cell_41_matmul_readvariableop_resource:	@�N
;lstm_21_while_lstm_cell_41_matmul_1_readvariableop_resource:	 �I
:lstm_21_while_lstm_cell_41_biasadd_readvariableop_resource:	���1lstm_21/while/lstm_cell_41/BiasAdd/ReadVariableOp�0lstm_21/while/lstm_cell_41/MatMul/ReadVariableOp�2lstm_21/while/lstm_cell_41/MatMul_1/ReadVariableOp�
?lstm_21/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2A
?lstm_21/while/TensorArrayV2Read/TensorListGetItem/element_shape�
1lstm_21/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensor_0lstm_21_while_placeholderHlstm_21/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype023
1lstm_21/while/TensorArrayV2Read/TensorListGetItem�
0lstm_21/while/lstm_cell_41/MatMul/ReadVariableOpReadVariableOp;lstm_21_while_lstm_cell_41_matmul_readvariableop_resource_0*
_output_shapes
:	@�*
dtype022
0lstm_21/while/lstm_cell_41/MatMul/ReadVariableOp�
!lstm_21/while/lstm_cell_41/MatMulMatMul8lstm_21/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_21/while/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2#
!lstm_21/while/lstm_cell_41/MatMul�
2lstm_21/while/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp=lstm_21_while_lstm_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype024
2lstm_21/while/lstm_cell_41/MatMul_1/ReadVariableOp�
#lstm_21/while/lstm_cell_41/MatMul_1MatMullstm_21_while_placeholder_2:lstm_21/while/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2%
#lstm_21/while/lstm_cell_41/MatMul_1�
lstm_21/while/lstm_cell_41/addAddV2+lstm_21/while/lstm_cell_41/MatMul:product:0-lstm_21/while/lstm_cell_41/MatMul_1:product:0*
T0*(
_output_shapes
:����������2 
lstm_21/while/lstm_cell_41/add�
1lstm_21/while/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp<lstm_21_while_lstm_cell_41_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype023
1lstm_21/while/lstm_cell_41/BiasAdd/ReadVariableOp�
"lstm_21/while/lstm_cell_41/BiasAddBiasAdd"lstm_21/while/lstm_cell_41/add:z:09lstm_21/while/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2$
"lstm_21/while/lstm_cell_41/BiasAdd�
*lstm_21/while/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_21/while/lstm_cell_41/split/split_dim�
 lstm_21/while/lstm_cell_41/splitSplit3lstm_21/while/lstm_cell_41/split/split_dim:output:0+lstm_21/while/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2"
 lstm_21/while/lstm_cell_41/split�
"lstm_21/while/lstm_cell_41/SigmoidSigmoid)lstm_21/while/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:��������� 2$
"lstm_21/while/lstm_cell_41/Sigmoid�
$lstm_21/while/lstm_cell_41/Sigmoid_1Sigmoid)lstm_21/while/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:��������� 2&
$lstm_21/while/lstm_cell_41/Sigmoid_1�
lstm_21/while/lstm_cell_41/mulMul(lstm_21/while/lstm_cell_41/Sigmoid_1:y:0lstm_21_while_placeholder_3*
T0*'
_output_shapes
:��������� 2 
lstm_21/while/lstm_cell_41/mul�
lstm_21/while/lstm_cell_41/ReluRelu)lstm_21/while/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:��������� 2!
lstm_21/while/lstm_cell_41/Relu�
 lstm_21/while/lstm_cell_41/mul_1Mul&lstm_21/while/lstm_cell_41/Sigmoid:y:0-lstm_21/while/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:��������� 2"
 lstm_21/while/lstm_cell_41/mul_1�
 lstm_21/while/lstm_cell_41/add_1AddV2"lstm_21/while/lstm_cell_41/mul:z:0$lstm_21/while/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:��������� 2"
 lstm_21/while/lstm_cell_41/add_1�
$lstm_21/while/lstm_cell_41/Sigmoid_2Sigmoid)lstm_21/while/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:��������� 2&
$lstm_21/while/lstm_cell_41/Sigmoid_2�
!lstm_21/while/lstm_cell_41/Relu_1Relu$lstm_21/while/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:��������� 2#
!lstm_21/while/lstm_cell_41/Relu_1�
 lstm_21/while/lstm_cell_41/mul_2Mul(lstm_21/while/lstm_cell_41/Sigmoid_2:y:0/lstm_21/while/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2"
 lstm_21/while/lstm_cell_41/mul_2�
2lstm_21/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_21_while_placeholder_1lstm_21_while_placeholder$lstm_21/while/lstm_cell_41/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_21/while/TensorArrayV2Write/TensorListSetIteml
lstm_21/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_21/while/add/y�
lstm_21/while/addAddV2lstm_21_while_placeholderlstm_21/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_21/while/addp
lstm_21/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_21/while/add_1/y�
lstm_21/while/add_1AddV2(lstm_21_while_lstm_21_while_loop_counterlstm_21/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_21/while/add_1�
lstm_21/while/IdentityIdentitylstm_21/while/add_1:z:0^lstm_21/while/NoOp*
T0*
_output_shapes
: 2
lstm_21/while/Identity�
lstm_21/while/Identity_1Identity.lstm_21_while_lstm_21_while_maximum_iterations^lstm_21/while/NoOp*
T0*
_output_shapes
: 2
lstm_21/while/Identity_1�
lstm_21/while/Identity_2Identitylstm_21/while/add:z:0^lstm_21/while/NoOp*
T0*
_output_shapes
: 2
lstm_21/while/Identity_2�
lstm_21/while/Identity_3IdentityBlstm_21/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_21/while/NoOp*
T0*
_output_shapes
: 2
lstm_21/while/Identity_3�
lstm_21/while/Identity_4Identity$lstm_21/while/lstm_cell_41/mul_2:z:0^lstm_21/while/NoOp*
T0*'
_output_shapes
:��������� 2
lstm_21/while/Identity_4�
lstm_21/while/Identity_5Identity$lstm_21/while/lstm_cell_41/add_1:z:0^lstm_21/while/NoOp*
T0*'
_output_shapes
:��������� 2
lstm_21/while/Identity_5�
lstm_21/while/NoOpNoOp2^lstm_21/while/lstm_cell_41/BiasAdd/ReadVariableOp1^lstm_21/while/lstm_cell_41/MatMul/ReadVariableOp3^lstm_21/while/lstm_cell_41/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_21/while/NoOp"9
lstm_21_while_identitylstm_21/while/Identity:output:0"=
lstm_21_while_identity_1!lstm_21/while/Identity_1:output:0"=
lstm_21_while_identity_2!lstm_21/while/Identity_2:output:0"=
lstm_21_while_identity_3!lstm_21/while/Identity_3:output:0"=
lstm_21_while_identity_4!lstm_21/while/Identity_4:output:0"=
lstm_21_while_identity_5!lstm_21/while/Identity_5:output:0"P
%lstm_21_while_lstm_21_strided_slice_1'lstm_21_while_lstm_21_strided_slice_1_0"z
:lstm_21_while_lstm_cell_41_biasadd_readvariableop_resource<lstm_21_while_lstm_cell_41_biasadd_readvariableop_resource_0"|
;lstm_21_while_lstm_cell_41_matmul_1_readvariableop_resource=lstm_21_while_lstm_cell_41_matmul_1_readvariableop_resource_0"x
9lstm_21_while_lstm_cell_41_matmul_readvariableop_resource;lstm_21_while_lstm_cell_41_matmul_readvariableop_resource_0"�
alstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensorclstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2f
1lstm_21/while/lstm_cell_41/BiasAdd/ReadVariableOp1lstm_21/while/lstm_cell_41/BiasAdd/ReadVariableOp2d
0lstm_21/while/lstm_cell_41/MatMul/ReadVariableOp0lstm_21/while/lstm_cell_41/MatMul/ReadVariableOp2h
2lstm_21/while/lstm_cell_41/MatMul_1/ReadVariableOp2lstm_21/while/lstm_cell_41/MatMul_1/ReadVariableOp: 
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
H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_353934

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
�
�
I__inference_sequential_10_layer_call_and_return_conditional_losses_355345
lstm_20_input!
lstm_20_355324:	�!
lstm_20_355326:	@�
lstm_20_355328:	�!
lstm_21_355331:	@�!
lstm_21_355333:	 �
lstm_21_355335:	�!
dense_10_355339: 
dense_10_355341:
identity�� dense_10/StatefulPartitionedCall�lstm_20/StatefulPartitionedCall�lstm_21/StatefulPartitionedCall�
lstm_20/StatefulPartitionedCallStatefulPartitionedCalllstm_20_inputlstm_20_355324lstm_20_355326lstm_20_355328*
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
C__inference_lstm_20_layer_call_and_return_conditional_losses_3546462!
lstm_20/StatefulPartitionedCall�
lstm_21/StatefulPartitionedCallStatefulPartitionedCall(lstm_20/StatefulPartitionedCall:output:0lstm_21_355331lstm_21_355333lstm_21_355335*
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
C__inference_lstm_21_layer_call_and_return_conditional_losses_3548042!
lstm_21/StatefulPartitionedCall�
dropout_10/PartitionedCallPartitionedCall(lstm_21/StatefulPartitionedCall:output:0*
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
F__inference_dropout_10_layer_call_and_return_conditional_losses_3548172
dropout_10/PartitionedCall�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall#dropout_10/PartitionedCall:output:0dense_10_355339dense_10_355341*
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
D__inference_dense_10_layer_call_and_return_conditional_losses_3548292"
 dense_10/StatefulPartitionedCall�
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp!^dense_10/StatefulPartitionedCall ^lstm_20/StatefulPartitionedCall ^lstm_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2B
lstm_20/StatefulPartitionedCalllstm_20/StatefulPartitionedCall2B
lstm_21/StatefulPartitionedCalllstm_21/StatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_20_input
ԓ
�	
!__inference__wrapped_model_353229
lstm_20_inputT
Asequential_10_lstm_20_lstm_cell_40_matmul_readvariableop_resource:	�V
Csequential_10_lstm_20_lstm_cell_40_matmul_1_readvariableop_resource:	@�Q
Bsequential_10_lstm_20_lstm_cell_40_biasadd_readvariableop_resource:	�T
Asequential_10_lstm_21_lstm_cell_41_matmul_readvariableop_resource:	@�V
Csequential_10_lstm_21_lstm_cell_41_matmul_1_readvariableop_resource:	 �Q
Bsequential_10_lstm_21_lstm_cell_41_biasadd_readvariableop_resource:	�G
5sequential_10_dense_10_matmul_readvariableop_resource: D
6sequential_10_dense_10_biasadd_readvariableop_resource:
identity��-sequential_10/dense_10/BiasAdd/ReadVariableOp�,sequential_10/dense_10/MatMul/ReadVariableOp�9sequential_10/lstm_20/lstm_cell_40/BiasAdd/ReadVariableOp�8sequential_10/lstm_20/lstm_cell_40/MatMul/ReadVariableOp�:sequential_10/lstm_20/lstm_cell_40/MatMul_1/ReadVariableOp�sequential_10/lstm_20/while�9sequential_10/lstm_21/lstm_cell_41/BiasAdd/ReadVariableOp�8sequential_10/lstm_21/lstm_cell_41/MatMul/ReadVariableOp�:sequential_10/lstm_21/lstm_cell_41/MatMul_1/ReadVariableOp�sequential_10/lstm_21/whilew
sequential_10/lstm_20/ShapeShapelstm_20_input*
T0*
_output_shapes
:2
sequential_10/lstm_20/Shape�
)sequential_10/lstm_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_10/lstm_20/strided_slice/stack�
+sequential_10/lstm_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_10/lstm_20/strided_slice/stack_1�
+sequential_10/lstm_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_10/lstm_20/strided_slice/stack_2�
#sequential_10/lstm_20/strided_sliceStridedSlice$sequential_10/lstm_20/Shape:output:02sequential_10/lstm_20/strided_slice/stack:output:04sequential_10/lstm_20/strided_slice/stack_1:output:04sequential_10/lstm_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_10/lstm_20/strided_slice�
!sequential_10/lstm_20/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2#
!sequential_10/lstm_20/zeros/mul/y�
sequential_10/lstm_20/zeros/mulMul,sequential_10/lstm_20/strided_slice:output:0*sequential_10/lstm_20/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_10/lstm_20/zeros/mul�
"sequential_10/lstm_20/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2$
"sequential_10/lstm_20/zeros/Less/y�
 sequential_10/lstm_20/zeros/LessLess#sequential_10/lstm_20/zeros/mul:z:0+sequential_10/lstm_20/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_10/lstm_20/zeros/Less�
$sequential_10/lstm_20/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2&
$sequential_10/lstm_20/zeros/packed/1�
"sequential_10/lstm_20/zeros/packedPack,sequential_10/lstm_20/strided_slice:output:0-sequential_10/lstm_20/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_10/lstm_20/zeros/packed�
!sequential_10/lstm_20/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_10/lstm_20/zeros/Const�
sequential_10/lstm_20/zerosFill+sequential_10/lstm_20/zeros/packed:output:0*sequential_10/lstm_20/zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
sequential_10/lstm_20/zeros�
#sequential_10/lstm_20/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2%
#sequential_10/lstm_20/zeros_1/mul/y�
!sequential_10/lstm_20/zeros_1/mulMul,sequential_10/lstm_20/strided_slice:output:0,sequential_10/lstm_20/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_10/lstm_20/zeros_1/mul�
$sequential_10/lstm_20/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2&
$sequential_10/lstm_20/zeros_1/Less/y�
"sequential_10/lstm_20/zeros_1/LessLess%sequential_10/lstm_20/zeros_1/mul:z:0-sequential_10/lstm_20/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_10/lstm_20/zeros_1/Less�
&sequential_10/lstm_20/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2(
&sequential_10/lstm_20/zeros_1/packed/1�
$sequential_10/lstm_20/zeros_1/packedPack,sequential_10/lstm_20/strided_slice:output:0/sequential_10/lstm_20/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_10/lstm_20/zeros_1/packed�
#sequential_10/lstm_20/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_10/lstm_20/zeros_1/Const�
sequential_10/lstm_20/zeros_1Fill-sequential_10/lstm_20/zeros_1/packed:output:0,sequential_10/lstm_20/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@2
sequential_10/lstm_20/zeros_1�
$sequential_10/lstm_20/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_10/lstm_20/transpose/perm�
sequential_10/lstm_20/transpose	Transposelstm_20_input-sequential_10/lstm_20/transpose/perm:output:0*
T0*+
_output_shapes
:���������2!
sequential_10/lstm_20/transpose�
sequential_10/lstm_20/Shape_1Shape#sequential_10/lstm_20/transpose:y:0*
T0*
_output_shapes
:2
sequential_10/lstm_20/Shape_1�
+sequential_10/lstm_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_10/lstm_20/strided_slice_1/stack�
-sequential_10/lstm_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_10/lstm_20/strided_slice_1/stack_1�
-sequential_10/lstm_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_10/lstm_20/strided_slice_1/stack_2�
%sequential_10/lstm_20/strided_slice_1StridedSlice&sequential_10/lstm_20/Shape_1:output:04sequential_10/lstm_20/strided_slice_1/stack:output:06sequential_10/lstm_20/strided_slice_1/stack_1:output:06sequential_10/lstm_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_10/lstm_20/strided_slice_1�
1sequential_10/lstm_20/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������23
1sequential_10/lstm_20/TensorArrayV2/element_shape�
#sequential_10/lstm_20/TensorArrayV2TensorListReserve:sequential_10/lstm_20/TensorArrayV2/element_shape:output:0.sequential_10/lstm_20/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_10/lstm_20/TensorArrayV2�
Ksequential_10/lstm_20/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2M
Ksequential_10/lstm_20/TensorArrayUnstack/TensorListFromTensor/element_shape�
=sequential_10/lstm_20/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_10/lstm_20/transpose:y:0Tsequential_10/lstm_20/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_10/lstm_20/TensorArrayUnstack/TensorListFromTensor�
+sequential_10/lstm_20/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_10/lstm_20/strided_slice_2/stack�
-sequential_10/lstm_20/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_10/lstm_20/strided_slice_2/stack_1�
-sequential_10/lstm_20/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_10/lstm_20/strided_slice_2/stack_2�
%sequential_10/lstm_20/strided_slice_2StridedSlice#sequential_10/lstm_20/transpose:y:04sequential_10/lstm_20/strided_slice_2/stack:output:06sequential_10/lstm_20/strided_slice_2/stack_1:output:06sequential_10/lstm_20/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2'
%sequential_10/lstm_20/strided_slice_2�
8sequential_10/lstm_20/lstm_cell_40/MatMul/ReadVariableOpReadVariableOpAsequential_10_lstm_20_lstm_cell_40_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02:
8sequential_10/lstm_20/lstm_cell_40/MatMul/ReadVariableOp�
)sequential_10/lstm_20/lstm_cell_40/MatMulMatMul.sequential_10/lstm_20/strided_slice_2:output:0@sequential_10/lstm_20/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2+
)sequential_10/lstm_20/lstm_cell_40/MatMul�
:sequential_10/lstm_20/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOpCsequential_10_lstm_20_lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype02<
:sequential_10/lstm_20/lstm_cell_40/MatMul_1/ReadVariableOp�
+sequential_10/lstm_20/lstm_cell_40/MatMul_1MatMul$sequential_10/lstm_20/zeros:output:0Bsequential_10/lstm_20/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2-
+sequential_10/lstm_20/lstm_cell_40/MatMul_1�
&sequential_10/lstm_20/lstm_cell_40/addAddV23sequential_10/lstm_20/lstm_cell_40/MatMul:product:05sequential_10/lstm_20/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:����������2(
&sequential_10/lstm_20/lstm_cell_40/add�
9sequential_10/lstm_20/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOpBsequential_10_lstm_20_lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02;
9sequential_10/lstm_20/lstm_cell_40/BiasAdd/ReadVariableOp�
*sequential_10/lstm_20/lstm_cell_40/BiasAddBiasAdd*sequential_10/lstm_20/lstm_cell_40/add:z:0Asequential_10/lstm_20/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2,
*sequential_10/lstm_20/lstm_cell_40/BiasAdd�
2sequential_10/lstm_20/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_10/lstm_20/lstm_cell_40/split/split_dim�
(sequential_10/lstm_20/lstm_cell_40/splitSplit;sequential_10/lstm_20/lstm_cell_40/split/split_dim:output:03sequential_10/lstm_20/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2*
(sequential_10/lstm_20/lstm_cell_40/split�
*sequential_10/lstm_20/lstm_cell_40/SigmoidSigmoid1sequential_10/lstm_20/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:���������@2,
*sequential_10/lstm_20/lstm_cell_40/Sigmoid�
,sequential_10/lstm_20/lstm_cell_40/Sigmoid_1Sigmoid1sequential_10/lstm_20/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:���������@2.
,sequential_10/lstm_20/lstm_cell_40/Sigmoid_1�
&sequential_10/lstm_20/lstm_cell_40/mulMul0sequential_10/lstm_20/lstm_cell_40/Sigmoid_1:y:0&sequential_10/lstm_20/zeros_1:output:0*
T0*'
_output_shapes
:���������@2(
&sequential_10/lstm_20/lstm_cell_40/mul�
'sequential_10/lstm_20/lstm_cell_40/ReluRelu1sequential_10/lstm_20/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:���������@2)
'sequential_10/lstm_20/lstm_cell_40/Relu�
(sequential_10/lstm_20/lstm_cell_40/mul_1Mul.sequential_10/lstm_20/lstm_cell_40/Sigmoid:y:05sequential_10/lstm_20/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:���������@2*
(sequential_10/lstm_20/lstm_cell_40/mul_1�
(sequential_10/lstm_20/lstm_cell_40/add_1AddV2*sequential_10/lstm_20/lstm_cell_40/mul:z:0,sequential_10/lstm_20/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:���������@2*
(sequential_10/lstm_20/lstm_cell_40/add_1�
,sequential_10/lstm_20/lstm_cell_40/Sigmoid_2Sigmoid1sequential_10/lstm_20/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:���������@2.
,sequential_10/lstm_20/lstm_cell_40/Sigmoid_2�
)sequential_10/lstm_20/lstm_cell_40/Relu_1Relu,sequential_10/lstm_20/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:���������@2+
)sequential_10/lstm_20/lstm_cell_40/Relu_1�
(sequential_10/lstm_20/lstm_cell_40/mul_2Mul0sequential_10/lstm_20/lstm_cell_40/Sigmoid_2:y:07sequential_10/lstm_20/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2*
(sequential_10/lstm_20/lstm_cell_40/mul_2�
3sequential_10/lstm_20/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   25
3sequential_10/lstm_20/TensorArrayV2_1/element_shape�
%sequential_10/lstm_20/TensorArrayV2_1TensorListReserve<sequential_10/lstm_20/TensorArrayV2_1/element_shape:output:0.sequential_10/lstm_20/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_10/lstm_20/TensorArrayV2_1z
sequential_10/lstm_20/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_10/lstm_20/time�
.sequential_10/lstm_20/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������20
.sequential_10/lstm_20/while/maximum_iterations�
(sequential_10/lstm_20/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_10/lstm_20/while/loop_counter�
sequential_10/lstm_20/whileWhile1sequential_10/lstm_20/while/loop_counter:output:07sequential_10/lstm_20/while/maximum_iterations:output:0#sequential_10/lstm_20/time:output:0.sequential_10/lstm_20/TensorArrayV2_1:handle:0$sequential_10/lstm_20/zeros:output:0&sequential_10/lstm_20/zeros_1:output:0.sequential_10/lstm_20/strided_slice_1:output:0Msequential_10/lstm_20/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_10_lstm_20_lstm_cell_40_matmul_readvariableop_resourceCsequential_10_lstm_20_lstm_cell_40_matmul_1_readvariableop_resourceBsequential_10_lstm_20_lstm_cell_40_biasadd_readvariableop_resource*
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
'sequential_10_lstm_20_while_body_352991*3
cond+R)
'sequential_10_lstm_20_while_cond_352990*K
output_shapes:
8: : : : :���������@:���������@: : : : : *
parallel_iterations 2
sequential_10/lstm_20/while�
Fsequential_10/lstm_20/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2H
Fsequential_10/lstm_20/TensorArrayV2Stack/TensorListStack/element_shape�
8sequential_10/lstm_20/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_10/lstm_20/while:output:3Osequential_10/lstm_20/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype02:
8sequential_10/lstm_20/TensorArrayV2Stack/TensorListStack�
+sequential_10/lstm_20/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2-
+sequential_10/lstm_20/strided_slice_3/stack�
-sequential_10/lstm_20/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_10/lstm_20/strided_slice_3/stack_1�
-sequential_10/lstm_20/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_10/lstm_20/strided_slice_3/stack_2�
%sequential_10/lstm_20/strided_slice_3StridedSliceAsequential_10/lstm_20/TensorArrayV2Stack/TensorListStack:tensor:04sequential_10/lstm_20/strided_slice_3/stack:output:06sequential_10/lstm_20/strided_slice_3/stack_1:output:06sequential_10/lstm_20/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2'
%sequential_10/lstm_20/strided_slice_3�
&sequential_10/lstm_20/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_10/lstm_20/transpose_1/perm�
!sequential_10/lstm_20/transpose_1	TransposeAsequential_10/lstm_20/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_10/lstm_20/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@2#
!sequential_10/lstm_20/transpose_1�
sequential_10/lstm_20/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_10/lstm_20/runtime�
sequential_10/lstm_21/ShapeShape%sequential_10/lstm_20/transpose_1:y:0*
T0*
_output_shapes
:2
sequential_10/lstm_21/Shape�
)sequential_10/lstm_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_10/lstm_21/strided_slice/stack�
+sequential_10/lstm_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_10/lstm_21/strided_slice/stack_1�
+sequential_10/lstm_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_10/lstm_21/strided_slice/stack_2�
#sequential_10/lstm_21/strided_sliceStridedSlice$sequential_10/lstm_21/Shape:output:02sequential_10/lstm_21/strided_slice/stack:output:04sequential_10/lstm_21/strided_slice/stack_1:output:04sequential_10/lstm_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_10/lstm_21/strided_slice�
!sequential_10/lstm_21/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2#
!sequential_10/lstm_21/zeros/mul/y�
sequential_10/lstm_21/zeros/mulMul,sequential_10/lstm_21/strided_slice:output:0*sequential_10/lstm_21/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_10/lstm_21/zeros/mul�
"sequential_10/lstm_21/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2$
"sequential_10/lstm_21/zeros/Less/y�
 sequential_10/lstm_21/zeros/LessLess#sequential_10/lstm_21/zeros/mul:z:0+sequential_10/lstm_21/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_10/lstm_21/zeros/Less�
$sequential_10/lstm_21/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_10/lstm_21/zeros/packed/1�
"sequential_10/lstm_21/zeros/packedPack,sequential_10/lstm_21/strided_slice:output:0-sequential_10/lstm_21/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_10/lstm_21/zeros/packed�
!sequential_10/lstm_21/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_10/lstm_21/zeros/Const�
sequential_10/lstm_21/zerosFill+sequential_10/lstm_21/zeros/packed:output:0*sequential_10/lstm_21/zeros/Const:output:0*
T0*'
_output_shapes
:��������� 2
sequential_10/lstm_21/zeros�
#sequential_10/lstm_21/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2%
#sequential_10/lstm_21/zeros_1/mul/y�
!sequential_10/lstm_21/zeros_1/mulMul,sequential_10/lstm_21/strided_slice:output:0,sequential_10/lstm_21/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_10/lstm_21/zeros_1/mul�
$sequential_10/lstm_21/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2&
$sequential_10/lstm_21/zeros_1/Less/y�
"sequential_10/lstm_21/zeros_1/LessLess%sequential_10/lstm_21/zeros_1/mul:z:0-sequential_10/lstm_21/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_10/lstm_21/zeros_1/Less�
&sequential_10/lstm_21/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_10/lstm_21/zeros_1/packed/1�
$sequential_10/lstm_21/zeros_1/packedPack,sequential_10/lstm_21/strided_slice:output:0/sequential_10/lstm_21/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_10/lstm_21/zeros_1/packed�
#sequential_10/lstm_21/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_10/lstm_21/zeros_1/Const�
sequential_10/lstm_21/zeros_1Fill-sequential_10/lstm_21/zeros_1/packed:output:0,sequential_10/lstm_21/zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� 2
sequential_10/lstm_21/zeros_1�
$sequential_10/lstm_21/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_10/lstm_21/transpose/perm�
sequential_10/lstm_21/transpose	Transpose%sequential_10/lstm_20/transpose_1:y:0-sequential_10/lstm_21/transpose/perm:output:0*
T0*+
_output_shapes
:���������@2!
sequential_10/lstm_21/transpose�
sequential_10/lstm_21/Shape_1Shape#sequential_10/lstm_21/transpose:y:0*
T0*
_output_shapes
:2
sequential_10/lstm_21/Shape_1�
+sequential_10/lstm_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_10/lstm_21/strided_slice_1/stack�
-sequential_10/lstm_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_10/lstm_21/strided_slice_1/stack_1�
-sequential_10/lstm_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_10/lstm_21/strided_slice_1/stack_2�
%sequential_10/lstm_21/strided_slice_1StridedSlice&sequential_10/lstm_21/Shape_1:output:04sequential_10/lstm_21/strided_slice_1/stack:output:06sequential_10/lstm_21/strided_slice_1/stack_1:output:06sequential_10/lstm_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_10/lstm_21/strided_slice_1�
1sequential_10/lstm_21/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������23
1sequential_10/lstm_21/TensorArrayV2/element_shape�
#sequential_10/lstm_21/TensorArrayV2TensorListReserve:sequential_10/lstm_21/TensorArrayV2/element_shape:output:0.sequential_10/lstm_21/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_10/lstm_21/TensorArrayV2�
Ksequential_10/lstm_21/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2M
Ksequential_10/lstm_21/TensorArrayUnstack/TensorListFromTensor/element_shape�
=sequential_10/lstm_21/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_10/lstm_21/transpose:y:0Tsequential_10/lstm_21/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_10/lstm_21/TensorArrayUnstack/TensorListFromTensor�
+sequential_10/lstm_21/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_10/lstm_21/strided_slice_2/stack�
-sequential_10/lstm_21/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_10/lstm_21/strided_slice_2/stack_1�
-sequential_10/lstm_21/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_10/lstm_21/strided_slice_2/stack_2�
%sequential_10/lstm_21/strided_slice_2StridedSlice#sequential_10/lstm_21/transpose:y:04sequential_10/lstm_21/strided_slice_2/stack:output:06sequential_10/lstm_21/strided_slice_2/stack_1:output:06sequential_10/lstm_21/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2'
%sequential_10/lstm_21/strided_slice_2�
8sequential_10/lstm_21/lstm_cell_41/MatMul/ReadVariableOpReadVariableOpAsequential_10_lstm_21_lstm_cell_41_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype02:
8sequential_10/lstm_21/lstm_cell_41/MatMul/ReadVariableOp�
)sequential_10/lstm_21/lstm_cell_41/MatMulMatMul.sequential_10/lstm_21/strided_slice_2:output:0@sequential_10/lstm_21/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2+
)sequential_10/lstm_21/lstm_cell_41/MatMul�
:sequential_10/lstm_21/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOpCsequential_10_lstm_21_lstm_cell_41_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02<
:sequential_10/lstm_21/lstm_cell_41/MatMul_1/ReadVariableOp�
+sequential_10/lstm_21/lstm_cell_41/MatMul_1MatMul$sequential_10/lstm_21/zeros:output:0Bsequential_10/lstm_21/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2-
+sequential_10/lstm_21/lstm_cell_41/MatMul_1�
&sequential_10/lstm_21/lstm_cell_41/addAddV23sequential_10/lstm_21/lstm_cell_41/MatMul:product:05sequential_10/lstm_21/lstm_cell_41/MatMul_1:product:0*
T0*(
_output_shapes
:����������2(
&sequential_10/lstm_21/lstm_cell_41/add�
9sequential_10/lstm_21/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOpBsequential_10_lstm_21_lstm_cell_41_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02;
9sequential_10/lstm_21/lstm_cell_41/BiasAdd/ReadVariableOp�
*sequential_10/lstm_21/lstm_cell_41/BiasAddBiasAdd*sequential_10/lstm_21/lstm_cell_41/add:z:0Asequential_10/lstm_21/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2,
*sequential_10/lstm_21/lstm_cell_41/BiasAdd�
2sequential_10/lstm_21/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_10/lstm_21/lstm_cell_41/split/split_dim�
(sequential_10/lstm_21/lstm_cell_41/splitSplit;sequential_10/lstm_21/lstm_cell_41/split/split_dim:output:03sequential_10/lstm_21/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2*
(sequential_10/lstm_21/lstm_cell_41/split�
*sequential_10/lstm_21/lstm_cell_41/SigmoidSigmoid1sequential_10/lstm_21/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:��������� 2,
*sequential_10/lstm_21/lstm_cell_41/Sigmoid�
,sequential_10/lstm_21/lstm_cell_41/Sigmoid_1Sigmoid1sequential_10/lstm_21/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:��������� 2.
,sequential_10/lstm_21/lstm_cell_41/Sigmoid_1�
&sequential_10/lstm_21/lstm_cell_41/mulMul0sequential_10/lstm_21/lstm_cell_41/Sigmoid_1:y:0&sequential_10/lstm_21/zeros_1:output:0*
T0*'
_output_shapes
:��������� 2(
&sequential_10/lstm_21/lstm_cell_41/mul�
'sequential_10/lstm_21/lstm_cell_41/ReluRelu1sequential_10/lstm_21/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:��������� 2)
'sequential_10/lstm_21/lstm_cell_41/Relu�
(sequential_10/lstm_21/lstm_cell_41/mul_1Mul.sequential_10/lstm_21/lstm_cell_41/Sigmoid:y:05sequential_10/lstm_21/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:��������� 2*
(sequential_10/lstm_21/lstm_cell_41/mul_1�
(sequential_10/lstm_21/lstm_cell_41/add_1AddV2*sequential_10/lstm_21/lstm_cell_41/mul:z:0,sequential_10/lstm_21/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:��������� 2*
(sequential_10/lstm_21/lstm_cell_41/add_1�
,sequential_10/lstm_21/lstm_cell_41/Sigmoid_2Sigmoid1sequential_10/lstm_21/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:��������� 2.
,sequential_10/lstm_21/lstm_cell_41/Sigmoid_2�
)sequential_10/lstm_21/lstm_cell_41/Relu_1Relu,sequential_10/lstm_21/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:��������� 2+
)sequential_10/lstm_21/lstm_cell_41/Relu_1�
(sequential_10/lstm_21/lstm_cell_41/mul_2Mul0sequential_10/lstm_21/lstm_cell_41/Sigmoid_2:y:07sequential_10/lstm_21/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2*
(sequential_10/lstm_21/lstm_cell_41/mul_2�
3sequential_10/lstm_21/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    25
3sequential_10/lstm_21/TensorArrayV2_1/element_shape�
%sequential_10/lstm_21/TensorArrayV2_1TensorListReserve<sequential_10/lstm_21/TensorArrayV2_1/element_shape:output:0.sequential_10/lstm_21/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_10/lstm_21/TensorArrayV2_1z
sequential_10/lstm_21/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_10/lstm_21/time�
.sequential_10/lstm_21/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������20
.sequential_10/lstm_21/while/maximum_iterations�
(sequential_10/lstm_21/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_10/lstm_21/while/loop_counter�
sequential_10/lstm_21/whileWhile1sequential_10/lstm_21/while/loop_counter:output:07sequential_10/lstm_21/while/maximum_iterations:output:0#sequential_10/lstm_21/time:output:0.sequential_10/lstm_21/TensorArrayV2_1:handle:0$sequential_10/lstm_21/zeros:output:0&sequential_10/lstm_21/zeros_1:output:0.sequential_10/lstm_21/strided_slice_1:output:0Msequential_10/lstm_21/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_10_lstm_21_lstm_cell_41_matmul_readvariableop_resourceCsequential_10_lstm_21_lstm_cell_41_matmul_1_readvariableop_resourceBsequential_10_lstm_21_lstm_cell_41_biasadd_readvariableop_resource*
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
'sequential_10_lstm_21_while_body_353138*3
cond+R)
'sequential_10_lstm_21_while_cond_353137*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations 2
sequential_10/lstm_21/while�
Fsequential_10/lstm_21/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2H
Fsequential_10/lstm_21/TensorArrayV2Stack/TensorListStack/element_shape�
8sequential_10/lstm_21/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_10/lstm_21/while:output:3Osequential_10/lstm_21/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype02:
8sequential_10/lstm_21/TensorArrayV2Stack/TensorListStack�
+sequential_10/lstm_21/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2-
+sequential_10/lstm_21/strided_slice_3/stack�
-sequential_10/lstm_21/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_10/lstm_21/strided_slice_3/stack_1�
-sequential_10/lstm_21/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_10/lstm_21/strided_slice_3/stack_2�
%sequential_10/lstm_21/strided_slice_3StridedSliceAsequential_10/lstm_21/TensorArrayV2Stack/TensorListStack:tensor:04sequential_10/lstm_21/strided_slice_3/stack:output:06sequential_10/lstm_21/strided_slice_3/stack_1:output:06sequential_10/lstm_21/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2'
%sequential_10/lstm_21/strided_slice_3�
&sequential_10/lstm_21/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_10/lstm_21/transpose_1/perm�
!sequential_10/lstm_21/transpose_1	TransposeAsequential_10/lstm_21/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_10/lstm_21/transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� 2#
!sequential_10/lstm_21/transpose_1�
sequential_10/lstm_21/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_10/lstm_21/runtime�
!sequential_10/dropout_10/IdentityIdentity.sequential_10/lstm_21/strided_slice_3:output:0*
T0*'
_output_shapes
:��������� 2#
!sequential_10/dropout_10/Identity�
,sequential_10/dense_10/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_10_matmul_readvariableop_resource*
_output_shapes

: *
dtype02.
,sequential_10/dense_10/MatMul/ReadVariableOp�
sequential_10/dense_10/MatMulMatMul*sequential_10/dropout_10/Identity:output:04sequential_10/dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
sequential_10/dense_10/MatMul�
-sequential_10/dense_10/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_10/dense_10/BiasAdd/ReadVariableOp�
sequential_10/dense_10/BiasAddBiasAdd'sequential_10/dense_10/MatMul:product:05sequential_10/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2 
sequential_10/dense_10/BiasAdd�
IdentityIdentity'sequential_10/dense_10/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp.^sequential_10/dense_10/BiasAdd/ReadVariableOp-^sequential_10/dense_10/MatMul/ReadVariableOp:^sequential_10/lstm_20/lstm_cell_40/BiasAdd/ReadVariableOp9^sequential_10/lstm_20/lstm_cell_40/MatMul/ReadVariableOp;^sequential_10/lstm_20/lstm_cell_40/MatMul_1/ReadVariableOp^sequential_10/lstm_20/while:^sequential_10/lstm_21/lstm_cell_41/BiasAdd/ReadVariableOp9^sequential_10/lstm_21/lstm_cell_41/MatMul/ReadVariableOp;^sequential_10/lstm_21/lstm_cell_41/MatMul_1/ReadVariableOp^sequential_10/lstm_21/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2^
-sequential_10/dense_10/BiasAdd/ReadVariableOp-sequential_10/dense_10/BiasAdd/ReadVariableOp2\
,sequential_10/dense_10/MatMul/ReadVariableOp,sequential_10/dense_10/MatMul/ReadVariableOp2v
9sequential_10/lstm_20/lstm_cell_40/BiasAdd/ReadVariableOp9sequential_10/lstm_20/lstm_cell_40/BiasAdd/ReadVariableOp2t
8sequential_10/lstm_20/lstm_cell_40/MatMul/ReadVariableOp8sequential_10/lstm_20/lstm_cell_40/MatMul/ReadVariableOp2x
:sequential_10/lstm_20/lstm_cell_40/MatMul_1/ReadVariableOp:sequential_10/lstm_20/lstm_cell_40/MatMul_1/ReadVariableOp2:
sequential_10/lstm_20/whilesequential_10/lstm_20/while2v
9sequential_10/lstm_21/lstm_cell_41/BiasAdd/ReadVariableOp9sequential_10/lstm_21/lstm_cell_41/BiasAdd/ReadVariableOp2t
8sequential_10/lstm_21/lstm_cell_41/MatMul/ReadVariableOp8sequential_10/lstm_21/lstm_cell_41/MatMul/ReadVariableOp2x
:sequential_10/lstm_21/lstm_cell_41/MatMul_1/ReadVariableOp:sequential_10/lstm_21/lstm_cell_41/MatMul_1/ReadVariableOp2:
sequential_10/lstm_21/whilesequential_10/lstm_21/while:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_20_input
�

�
lstm_20_while_cond_355506,
(lstm_20_while_lstm_20_while_loop_counter2
.lstm_20_while_lstm_20_while_maximum_iterations
lstm_20_while_placeholder
lstm_20_while_placeholder_1
lstm_20_while_placeholder_2
lstm_20_while_placeholder_3.
*lstm_20_while_less_lstm_20_strided_slice_1D
@lstm_20_while_lstm_20_while_cond_355506___redundant_placeholder0D
@lstm_20_while_lstm_20_while_cond_355506___redundant_placeholder1D
@lstm_20_while_lstm_20_while_cond_355506___redundant_placeholder2D
@lstm_20_while_lstm_20_while_cond_355506___redundant_placeholder3
lstm_20_while_identity
�
lstm_20/while/LessLesslstm_20_while_placeholder*lstm_20_while_less_lstm_20_strided_slice_1*
T0*
_output_shapes
: 2
lstm_20/while/Lessu
lstm_20/while/IdentityIdentitylstm_20/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_20/while/Identity"9
lstm_20_while_identitylstm_20/while/Identity:output:0*(
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
�
d
F__inference_dropout_10_layer_call_and_return_conditional_losses_357368

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
(__inference_lstm_21_layer_call_fn_356716
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
C__inference_lstm_21_layer_call_and_return_conditional_losses_3540172
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
�

�
D__inference_dense_10_layer_call_and_return_conditional_losses_354829

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
�[
�
C__inference_lstm_20_layer_call_and_return_conditional_losses_355225

inputs>
+lstm_cell_40_matmul_readvariableop_resource:	�@
-lstm_cell_40_matmul_1_readvariableop_resource:	@�;
,lstm_cell_40_biasadd_readvariableop_resource:	�
identity��#lstm_cell_40/BiasAdd/ReadVariableOp�"lstm_cell_40/MatMul/ReadVariableOp�$lstm_cell_40/MatMul_1/ReadVariableOp�whileD
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
"lstm_cell_40/MatMul/ReadVariableOpReadVariableOp+lstm_cell_40_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"lstm_cell_40/MatMul/ReadVariableOp�
lstm_cell_40/MatMulMatMulstrided_slice_2:output:0*lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_40/MatMul�
$lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype02&
$lstm_cell_40/MatMul_1/ReadVariableOp�
lstm_cell_40/MatMul_1MatMulzeros:output:0,lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_40/MatMul_1�
lstm_cell_40/addAddV2lstm_cell_40/MatMul:product:0lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_40/add�
#lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_40/BiasAdd/ReadVariableOp�
lstm_cell_40/BiasAddBiasAddlstm_cell_40/add:z:0+lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_40/BiasAdd~
lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_40/split/split_dim�
lstm_cell_40/splitSplit%lstm_cell_40/split/split_dim:output:0lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
lstm_cell_40/split�
lstm_cell_40/SigmoidSigmoidlstm_cell_40/split:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/Sigmoid�
lstm_cell_40/Sigmoid_1Sigmoidlstm_cell_40/split:output:1*
T0*'
_output_shapes
:���������@2
lstm_cell_40/Sigmoid_1�
lstm_cell_40/mulMullstm_cell_40/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/mul}
lstm_cell_40/ReluRelulstm_cell_40/split:output:2*
T0*'
_output_shapes
:���������@2
lstm_cell_40/Relu�
lstm_cell_40/mul_1Mullstm_cell_40/Sigmoid:y:0lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/mul_1�
lstm_cell_40/add_1AddV2lstm_cell_40/mul:z:0lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/add_1�
lstm_cell_40/Sigmoid_2Sigmoidlstm_cell_40/split:output:3*
T0*'
_output_shapes
:���������@2
lstm_cell_40/Sigmoid_2|
lstm_cell_40/Relu_1Relulstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/Relu_1�
lstm_cell_40/mul_2Mullstm_cell_40/Sigmoid_2:y:0!lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/mul_2�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_40_matmul_readvariableop_resource-lstm_cell_40_matmul_1_readvariableop_resource,lstm_cell_40_biasadd_readvariableop_resource*
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
while_body_355141*
condR
while_cond_355140*K
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
NoOpNoOp$^lstm_cell_40/BiasAdd/ReadVariableOp#^lstm_cell_40/MatMul/ReadVariableOp%^lstm_cell_40/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2J
#lstm_cell_40/BiasAdd/ReadVariableOp#lstm_cell_40/BiasAdd/ReadVariableOp2H
"lstm_cell_40/MatMul/ReadVariableOp"lstm_cell_40/MatMul/ReadVariableOp2L
$lstm_cell_40/MatMul_1/ReadVariableOp$lstm_cell_40/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�[
�
C__inference_lstm_21_layer_call_and_return_conditional_losses_357202

inputs>
+lstm_cell_41_matmul_readvariableop_resource:	@�@
-lstm_cell_41_matmul_1_readvariableop_resource:	 �;
,lstm_cell_41_biasadd_readvariableop_resource:	�
identity��#lstm_cell_41/BiasAdd/ReadVariableOp�"lstm_cell_41/MatMul/ReadVariableOp�$lstm_cell_41/MatMul_1/ReadVariableOp�whileD
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
"lstm_cell_41/MatMul/ReadVariableOpReadVariableOp+lstm_cell_41_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype02$
"lstm_cell_41/MatMul/ReadVariableOp�
lstm_cell_41/MatMulMatMulstrided_slice_2:output:0*lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_41/MatMul�
$lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_41_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02&
$lstm_cell_41/MatMul_1/ReadVariableOp�
lstm_cell_41/MatMul_1MatMulzeros:output:0,lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_41/MatMul_1�
lstm_cell_41/addAddV2lstm_cell_41/MatMul:product:0lstm_cell_41/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_41/add�
#lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_41_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_41/BiasAdd/ReadVariableOp�
lstm_cell_41/BiasAddBiasAddlstm_cell_41/add:z:0+lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_41/BiasAdd~
lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_41/split/split_dim�
lstm_cell_41/splitSplit%lstm_cell_41/split/split_dim:output:0lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
lstm_cell_41/split�
lstm_cell_41/SigmoidSigmoidlstm_cell_41/split:output:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/Sigmoid�
lstm_cell_41/Sigmoid_1Sigmoidlstm_cell_41/split:output:1*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/Sigmoid_1�
lstm_cell_41/mulMullstm_cell_41/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/mul}
lstm_cell_41/ReluRelulstm_cell_41/split:output:2*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/Relu�
lstm_cell_41/mul_1Mullstm_cell_41/Sigmoid:y:0lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/mul_1�
lstm_cell_41/add_1AddV2lstm_cell_41/mul:z:0lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/add_1�
lstm_cell_41/Sigmoid_2Sigmoidlstm_cell_41/split:output:3*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/Sigmoid_2|
lstm_cell_41/Relu_1Relulstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/Relu_1�
lstm_cell_41/mul_2Mullstm_cell_41/Sigmoid_2:y:0!lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/mul_2�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_41_matmul_readvariableop_resource-lstm_cell_41_matmul_1_readvariableop_resource,lstm_cell_41_biasadd_readvariableop_resource*
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
while_body_357118*
condR
while_cond_357117*K
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
NoOpNoOp$^lstm_cell_41/BiasAdd/ReadVariableOp#^lstm_cell_41/MatMul/ReadVariableOp%^lstm_cell_41/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������@: : : 2J
#lstm_cell_41/BiasAdd/ReadVariableOp#lstm_cell_41/BiasAdd/ReadVariableOp2H
"lstm_cell_41/MatMul/ReadVariableOp"lstm_cell_41/MatMul/ReadVariableOp2L
$lstm_cell_41/MatMul_1/ReadVariableOp$lstm_cell_41/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
��
�
I__inference_sequential_10_layer_call_and_return_conditional_losses_356057

inputsF
3lstm_20_lstm_cell_40_matmul_readvariableop_resource:	�H
5lstm_20_lstm_cell_40_matmul_1_readvariableop_resource:	@�C
4lstm_20_lstm_cell_40_biasadd_readvariableop_resource:	�F
3lstm_21_lstm_cell_41_matmul_readvariableop_resource:	@�H
5lstm_21_lstm_cell_41_matmul_1_readvariableop_resource:	 �C
4lstm_21_lstm_cell_41_biasadd_readvariableop_resource:	�9
'dense_10_matmul_readvariableop_resource: 6
(dense_10_biasadd_readvariableop_resource:
identity��dense_10/BiasAdd/ReadVariableOp�dense_10/MatMul/ReadVariableOp�+lstm_20/lstm_cell_40/BiasAdd/ReadVariableOp�*lstm_20/lstm_cell_40/MatMul/ReadVariableOp�,lstm_20/lstm_cell_40/MatMul_1/ReadVariableOp�lstm_20/while�+lstm_21/lstm_cell_41/BiasAdd/ReadVariableOp�*lstm_21/lstm_cell_41/MatMul/ReadVariableOp�,lstm_21/lstm_cell_41/MatMul_1/ReadVariableOp�lstm_21/whileT
lstm_20/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_20/Shape�
lstm_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_20/strided_slice/stack�
lstm_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_20/strided_slice/stack_1�
lstm_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_20/strided_slice/stack_2�
lstm_20/strided_sliceStridedSlicelstm_20/Shape:output:0$lstm_20/strided_slice/stack:output:0&lstm_20/strided_slice/stack_1:output:0&lstm_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_20/strided_slicel
lstm_20/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_20/zeros/mul/y�
lstm_20/zeros/mulMullstm_20/strided_slice:output:0lstm_20/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_20/zeros/mulo
lstm_20/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_20/zeros/Less/y�
lstm_20/zeros/LessLesslstm_20/zeros/mul:z:0lstm_20/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_20/zeros/Lessr
lstm_20/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_20/zeros/packed/1�
lstm_20/zeros/packedPacklstm_20/strided_slice:output:0lstm_20/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_20/zeros/packedo
lstm_20/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_20/zeros/Const�
lstm_20/zerosFilllstm_20/zeros/packed:output:0lstm_20/zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
lstm_20/zerosp
lstm_20/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_20/zeros_1/mul/y�
lstm_20/zeros_1/mulMullstm_20/strided_slice:output:0lstm_20/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_20/zeros_1/muls
lstm_20/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_20/zeros_1/Less/y�
lstm_20/zeros_1/LessLesslstm_20/zeros_1/mul:z:0lstm_20/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_20/zeros_1/Lessv
lstm_20/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_20/zeros_1/packed/1�
lstm_20/zeros_1/packedPacklstm_20/strided_slice:output:0!lstm_20/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_20/zeros_1/packeds
lstm_20/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_20/zeros_1/Const�
lstm_20/zeros_1Filllstm_20/zeros_1/packed:output:0lstm_20/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@2
lstm_20/zeros_1�
lstm_20/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_20/transpose/perm�
lstm_20/transpose	Transposeinputslstm_20/transpose/perm:output:0*
T0*+
_output_shapes
:���������2
lstm_20/transposeg
lstm_20/Shape_1Shapelstm_20/transpose:y:0*
T0*
_output_shapes
:2
lstm_20/Shape_1�
lstm_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_20/strided_slice_1/stack�
lstm_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_20/strided_slice_1/stack_1�
lstm_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_20/strided_slice_1/stack_2�
lstm_20/strided_slice_1StridedSlicelstm_20/Shape_1:output:0&lstm_20/strided_slice_1/stack:output:0(lstm_20/strided_slice_1/stack_1:output:0(lstm_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_20/strided_slice_1�
#lstm_20/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2%
#lstm_20/TensorArrayV2/element_shape�
lstm_20/TensorArrayV2TensorListReserve,lstm_20/TensorArrayV2/element_shape:output:0 lstm_20/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_20/TensorArrayV2�
=lstm_20/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2?
=lstm_20/TensorArrayUnstack/TensorListFromTensor/element_shape�
/lstm_20/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_20/transpose:y:0Flstm_20/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_20/TensorArrayUnstack/TensorListFromTensor�
lstm_20/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_20/strided_slice_2/stack�
lstm_20/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_20/strided_slice_2/stack_1�
lstm_20/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_20/strided_slice_2/stack_2�
lstm_20/strided_slice_2StridedSlicelstm_20/transpose:y:0&lstm_20/strided_slice_2/stack:output:0(lstm_20/strided_slice_2/stack_1:output:0(lstm_20/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
lstm_20/strided_slice_2�
*lstm_20/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp3lstm_20_lstm_cell_40_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02,
*lstm_20/lstm_cell_40/MatMul/ReadVariableOp�
lstm_20/lstm_cell_40/MatMulMatMul lstm_20/strided_slice_2:output:02lstm_20/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_20/lstm_cell_40/MatMul�
,lstm_20/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp5lstm_20_lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype02.
,lstm_20/lstm_cell_40/MatMul_1/ReadVariableOp�
lstm_20/lstm_cell_40/MatMul_1MatMullstm_20/zeros:output:04lstm_20/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_20/lstm_cell_40/MatMul_1�
lstm_20/lstm_cell_40/addAddV2%lstm_20/lstm_cell_40/MatMul:product:0'lstm_20/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_20/lstm_cell_40/add�
+lstm_20/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp4lstm_20_lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02-
+lstm_20/lstm_cell_40/BiasAdd/ReadVariableOp�
lstm_20/lstm_cell_40/BiasAddBiasAddlstm_20/lstm_cell_40/add:z:03lstm_20/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_20/lstm_cell_40/BiasAdd�
$lstm_20/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_20/lstm_cell_40/split/split_dim�
lstm_20/lstm_cell_40/splitSplit-lstm_20/lstm_cell_40/split/split_dim:output:0%lstm_20/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
lstm_20/lstm_cell_40/split�
lstm_20/lstm_cell_40/SigmoidSigmoid#lstm_20/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:���������@2
lstm_20/lstm_cell_40/Sigmoid�
lstm_20/lstm_cell_40/Sigmoid_1Sigmoid#lstm_20/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:���������@2 
lstm_20/lstm_cell_40/Sigmoid_1�
lstm_20/lstm_cell_40/mulMul"lstm_20/lstm_cell_40/Sigmoid_1:y:0lstm_20/zeros_1:output:0*
T0*'
_output_shapes
:���������@2
lstm_20/lstm_cell_40/mul�
lstm_20/lstm_cell_40/ReluRelu#lstm_20/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:���������@2
lstm_20/lstm_cell_40/Relu�
lstm_20/lstm_cell_40/mul_1Mul lstm_20/lstm_cell_40/Sigmoid:y:0'lstm_20/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:���������@2
lstm_20/lstm_cell_40/mul_1�
lstm_20/lstm_cell_40/add_1AddV2lstm_20/lstm_cell_40/mul:z:0lstm_20/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_20/lstm_cell_40/add_1�
lstm_20/lstm_cell_40/Sigmoid_2Sigmoid#lstm_20/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:���������@2 
lstm_20/lstm_cell_40/Sigmoid_2�
lstm_20/lstm_cell_40/Relu_1Relulstm_20/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_20/lstm_cell_40/Relu_1�
lstm_20/lstm_cell_40/mul_2Mul"lstm_20/lstm_cell_40/Sigmoid_2:y:0)lstm_20/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
lstm_20/lstm_cell_40/mul_2�
%lstm_20/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2'
%lstm_20/TensorArrayV2_1/element_shape�
lstm_20/TensorArrayV2_1TensorListReserve.lstm_20/TensorArrayV2_1/element_shape:output:0 lstm_20/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_20/TensorArrayV2_1^
lstm_20/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_20/time�
 lstm_20/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2"
 lstm_20/while/maximum_iterationsz
lstm_20/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_20/while/loop_counter�
lstm_20/whileWhile#lstm_20/while/loop_counter:output:0)lstm_20/while/maximum_iterations:output:0lstm_20/time:output:0 lstm_20/TensorArrayV2_1:handle:0lstm_20/zeros:output:0lstm_20/zeros_1:output:0 lstm_20/strided_slice_1:output:0?lstm_20/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_20_lstm_cell_40_matmul_readvariableop_resource5lstm_20_lstm_cell_40_matmul_1_readvariableop_resource4lstm_20_lstm_cell_40_biasadd_readvariableop_resource*
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
lstm_20_while_body_355812*%
condR
lstm_20_while_cond_355811*K
output_shapes:
8: : : : :���������@:���������@: : : : : *
parallel_iterations 2
lstm_20/while�
8lstm_20/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2:
8lstm_20/TensorArrayV2Stack/TensorListStack/element_shape�
*lstm_20/TensorArrayV2Stack/TensorListStackTensorListStacklstm_20/while:output:3Alstm_20/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype02,
*lstm_20/TensorArrayV2Stack/TensorListStack�
lstm_20/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
lstm_20/strided_slice_3/stack�
lstm_20/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_20/strided_slice_3/stack_1�
lstm_20/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_20/strided_slice_3/stack_2�
lstm_20/strided_slice_3StridedSlice3lstm_20/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_20/strided_slice_3/stack:output:0(lstm_20/strided_slice_3/stack_1:output:0(lstm_20/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
lstm_20/strided_slice_3�
lstm_20/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_20/transpose_1/perm�
lstm_20/transpose_1	Transpose3lstm_20/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_20/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@2
lstm_20/transpose_1v
lstm_20/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_20/runtimee
lstm_21/ShapeShapelstm_20/transpose_1:y:0*
T0*
_output_shapes
:2
lstm_21/Shape�
lstm_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_21/strided_slice/stack�
lstm_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_21/strided_slice/stack_1�
lstm_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_21/strided_slice/stack_2�
lstm_21/strided_sliceStridedSlicelstm_21/Shape:output:0$lstm_21/strided_slice/stack:output:0&lstm_21/strided_slice/stack_1:output:0&lstm_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_21/strided_slicel
lstm_21/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_21/zeros/mul/y�
lstm_21/zeros/mulMullstm_21/strided_slice:output:0lstm_21/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_21/zeros/mulo
lstm_21/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_21/zeros/Less/y�
lstm_21/zeros/LessLesslstm_21/zeros/mul:z:0lstm_21/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_21/zeros/Lessr
lstm_21/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_21/zeros/packed/1�
lstm_21/zeros/packedPacklstm_21/strided_slice:output:0lstm_21/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_21/zeros/packedo
lstm_21/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_21/zeros/Const�
lstm_21/zerosFilllstm_21/zeros/packed:output:0lstm_21/zeros/Const:output:0*
T0*'
_output_shapes
:��������� 2
lstm_21/zerosp
lstm_21/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_21/zeros_1/mul/y�
lstm_21/zeros_1/mulMullstm_21/strided_slice:output:0lstm_21/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_21/zeros_1/muls
lstm_21/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_21/zeros_1/Less/y�
lstm_21/zeros_1/LessLesslstm_21/zeros_1/mul:z:0lstm_21/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_21/zeros_1/Lessv
lstm_21/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_21/zeros_1/packed/1�
lstm_21/zeros_1/packedPacklstm_21/strided_slice:output:0!lstm_21/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_21/zeros_1/packeds
lstm_21/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_21/zeros_1/Const�
lstm_21/zeros_1Filllstm_21/zeros_1/packed:output:0lstm_21/zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� 2
lstm_21/zeros_1�
lstm_21/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_21/transpose/perm�
lstm_21/transpose	Transposelstm_20/transpose_1:y:0lstm_21/transpose/perm:output:0*
T0*+
_output_shapes
:���������@2
lstm_21/transposeg
lstm_21/Shape_1Shapelstm_21/transpose:y:0*
T0*
_output_shapes
:2
lstm_21/Shape_1�
lstm_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_21/strided_slice_1/stack�
lstm_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_21/strided_slice_1/stack_1�
lstm_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_21/strided_slice_1/stack_2�
lstm_21/strided_slice_1StridedSlicelstm_21/Shape_1:output:0&lstm_21/strided_slice_1/stack:output:0(lstm_21/strided_slice_1/stack_1:output:0(lstm_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_21/strided_slice_1�
#lstm_21/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2%
#lstm_21/TensorArrayV2/element_shape�
lstm_21/TensorArrayV2TensorListReserve,lstm_21/TensorArrayV2/element_shape:output:0 lstm_21/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_21/TensorArrayV2�
=lstm_21/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2?
=lstm_21/TensorArrayUnstack/TensorListFromTensor/element_shape�
/lstm_21/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_21/transpose:y:0Flstm_21/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_21/TensorArrayUnstack/TensorListFromTensor�
lstm_21/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_21/strided_slice_2/stack�
lstm_21/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_21/strided_slice_2/stack_1�
lstm_21/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_21/strided_slice_2/stack_2�
lstm_21/strided_slice_2StridedSlicelstm_21/transpose:y:0&lstm_21/strided_slice_2/stack:output:0(lstm_21/strided_slice_2/stack_1:output:0(lstm_21/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
lstm_21/strided_slice_2�
*lstm_21/lstm_cell_41/MatMul/ReadVariableOpReadVariableOp3lstm_21_lstm_cell_41_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype02,
*lstm_21/lstm_cell_41/MatMul/ReadVariableOp�
lstm_21/lstm_cell_41/MatMulMatMul lstm_21/strided_slice_2:output:02lstm_21/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_21/lstm_cell_41/MatMul�
,lstm_21/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp5lstm_21_lstm_cell_41_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02.
,lstm_21/lstm_cell_41/MatMul_1/ReadVariableOp�
lstm_21/lstm_cell_41/MatMul_1MatMullstm_21/zeros:output:04lstm_21/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_21/lstm_cell_41/MatMul_1�
lstm_21/lstm_cell_41/addAddV2%lstm_21/lstm_cell_41/MatMul:product:0'lstm_21/lstm_cell_41/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_21/lstm_cell_41/add�
+lstm_21/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp4lstm_21_lstm_cell_41_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02-
+lstm_21/lstm_cell_41/BiasAdd/ReadVariableOp�
lstm_21/lstm_cell_41/BiasAddBiasAddlstm_21/lstm_cell_41/add:z:03lstm_21/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_21/lstm_cell_41/BiasAdd�
$lstm_21/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_21/lstm_cell_41/split/split_dim�
lstm_21/lstm_cell_41/splitSplit-lstm_21/lstm_cell_41/split/split_dim:output:0%lstm_21/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
lstm_21/lstm_cell_41/split�
lstm_21/lstm_cell_41/SigmoidSigmoid#lstm_21/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:��������� 2
lstm_21/lstm_cell_41/Sigmoid�
lstm_21/lstm_cell_41/Sigmoid_1Sigmoid#lstm_21/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:��������� 2 
lstm_21/lstm_cell_41/Sigmoid_1�
lstm_21/lstm_cell_41/mulMul"lstm_21/lstm_cell_41/Sigmoid_1:y:0lstm_21/zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
lstm_21/lstm_cell_41/mul�
lstm_21/lstm_cell_41/ReluRelu#lstm_21/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:��������� 2
lstm_21/lstm_cell_41/Relu�
lstm_21/lstm_cell_41/mul_1Mul lstm_21/lstm_cell_41/Sigmoid:y:0'lstm_21/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:��������� 2
lstm_21/lstm_cell_41/mul_1�
lstm_21/lstm_cell_41/add_1AddV2lstm_21/lstm_cell_41/mul:z:0lstm_21/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
lstm_21/lstm_cell_41/add_1�
lstm_21/lstm_cell_41/Sigmoid_2Sigmoid#lstm_21/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:��������� 2 
lstm_21/lstm_cell_41/Sigmoid_2�
lstm_21/lstm_cell_41/Relu_1Relulstm_21/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:��������� 2
lstm_21/lstm_cell_41/Relu_1�
lstm_21/lstm_cell_41/mul_2Mul"lstm_21/lstm_cell_41/Sigmoid_2:y:0)lstm_21/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2
lstm_21/lstm_cell_41/mul_2�
%lstm_21/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2'
%lstm_21/TensorArrayV2_1/element_shape�
lstm_21/TensorArrayV2_1TensorListReserve.lstm_21/TensorArrayV2_1/element_shape:output:0 lstm_21/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_21/TensorArrayV2_1^
lstm_21/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_21/time�
 lstm_21/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2"
 lstm_21/while/maximum_iterationsz
lstm_21/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_21/while/loop_counter�
lstm_21/whileWhile#lstm_21/while/loop_counter:output:0)lstm_21/while/maximum_iterations:output:0lstm_21/time:output:0 lstm_21/TensorArrayV2_1:handle:0lstm_21/zeros:output:0lstm_21/zeros_1:output:0 lstm_21/strided_slice_1:output:0?lstm_21/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_21_lstm_cell_41_matmul_readvariableop_resource5lstm_21_lstm_cell_41_matmul_1_readvariableop_resource4lstm_21_lstm_cell_41_biasadd_readvariableop_resource*
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
lstm_21_while_body_355959*%
condR
lstm_21_while_cond_355958*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations 2
lstm_21/while�
8lstm_21/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2:
8lstm_21/TensorArrayV2Stack/TensorListStack/element_shape�
*lstm_21/TensorArrayV2Stack/TensorListStackTensorListStacklstm_21/while:output:3Alstm_21/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype02,
*lstm_21/TensorArrayV2Stack/TensorListStack�
lstm_21/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
lstm_21/strided_slice_3/stack�
lstm_21/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_21/strided_slice_3/stack_1�
lstm_21/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_21/strided_slice_3/stack_2�
lstm_21/strided_slice_3StridedSlice3lstm_21/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_21/strided_slice_3/stack:output:0(lstm_21/strided_slice_3/stack_1:output:0(lstm_21/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
lstm_21/strided_slice_3�
lstm_21/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_21/transpose_1/perm�
lstm_21/transpose_1	Transpose3lstm_21/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_21/transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� 2
lstm_21/transpose_1v
lstm_21/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_21/runtimey
dropout_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
dropout_10/dropout/Const�
dropout_10/dropout/MulMul lstm_21/strided_slice_3:output:0!dropout_10/dropout/Const:output:0*
T0*'
_output_shapes
:��������� 2
dropout_10/dropout/Mul�
dropout_10/dropout/ShapeShape lstm_21/strided_slice_3:output:0*
T0*
_output_shapes
:2
dropout_10/dropout/Shape�
/dropout_10/dropout/random_uniform/RandomUniformRandomUniform!dropout_10/dropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype021
/dropout_10/dropout/random_uniform/RandomUniform�
!dropout_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>2#
!dropout_10/dropout/GreaterEqual/y�
dropout_10/dropout/GreaterEqualGreaterEqual8dropout_10/dropout/random_uniform/RandomUniform:output:0*dropout_10/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� 2!
dropout_10/dropout/GreaterEqual�
dropout_10/dropout/CastCast#dropout_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� 2
dropout_10/dropout/Cast�
dropout_10/dropout/Mul_1Muldropout_10/dropout/Mul:z:0dropout_10/dropout/Cast:y:0*
T0*'
_output_shapes
:��������� 2
dropout_10/dropout/Mul_1�
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_10/MatMul/ReadVariableOp�
dense_10/MatMulMatMuldropout_10/dropout/Mul_1:z:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_10/MatMul�
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_10/BiasAdd/ReadVariableOp�
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_10/BiasAddt
IdentityIdentitydense_10/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp,^lstm_20/lstm_cell_40/BiasAdd/ReadVariableOp+^lstm_20/lstm_cell_40/MatMul/ReadVariableOp-^lstm_20/lstm_cell_40/MatMul_1/ReadVariableOp^lstm_20/while,^lstm_21/lstm_cell_41/BiasAdd/ReadVariableOp+^lstm_21/lstm_cell_41/MatMul/ReadVariableOp-^lstm_21/lstm_cell_41/MatMul_1/ReadVariableOp^lstm_21/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2Z
+lstm_20/lstm_cell_40/BiasAdd/ReadVariableOp+lstm_20/lstm_cell_40/BiasAdd/ReadVariableOp2X
*lstm_20/lstm_cell_40/MatMul/ReadVariableOp*lstm_20/lstm_cell_40/MatMul/ReadVariableOp2\
,lstm_20/lstm_cell_40/MatMul_1/ReadVariableOp,lstm_20/lstm_cell_40/MatMul_1/ReadVariableOp2
lstm_20/whilelstm_20/while2Z
+lstm_21/lstm_cell_41/BiasAdd/ReadVariableOp+lstm_21/lstm_cell_41/BiasAdd/ReadVariableOp2X
*lstm_21/lstm_cell_41/MatMul/ReadVariableOp*lstm_21/lstm_cell_41/MatMul/ReadVariableOp2\
,lstm_21/lstm_cell_41/MatMul_1/ReadVariableOp,lstm_21/lstm_cell_41/MatMul_1/ReadVariableOp2
lstm_21/whilelstm_21/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
(__inference_lstm_21_layer_call_fn_356727
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
C__inference_lstm_21_layer_call_and_return_conditional_losses_3542272
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
�
�
I__inference_sequential_10_layer_call_and_return_conditional_losses_355281

inputs!
lstm_20_355260:	�!
lstm_20_355262:	@�
lstm_20_355264:	�!
lstm_21_355267:	@�!
lstm_21_355269:	 �
lstm_21_355271:	�!
dense_10_355275: 
dense_10_355277:
identity�� dense_10/StatefulPartitionedCall�"dropout_10/StatefulPartitionedCall�lstm_20/StatefulPartitionedCall�lstm_21/StatefulPartitionedCall�
lstm_20/StatefulPartitionedCallStatefulPartitionedCallinputslstm_20_355260lstm_20_355262lstm_20_355264*
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
C__inference_lstm_20_layer_call_and_return_conditional_losses_3552252!
lstm_20/StatefulPartitionedCall�
lstm_21/StatefulPartitionedCallStatefulPartitionedCall(lstm_20/StatefulPartitionedCall:output:0lstm_21_355267lstm_21_355269lstm_21_355271*
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
C__inference_lstm_21_layer_call_and_return_conditional_losses_3550522!
lstm_21/StatefulPartitionedCall�
"dropout_10/StatefulPartitionedCallStatefulPartitionedCall(lstm_21/StatefulPartitionedCall:output:0*
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
F__inference_dropout_10_layer_call_and_return_conditional_losses_3548852$
"dropout_10/StatefulPartitionedCall�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall+dropout_10/StatefulPartitionedCall:output:0dense_10_355275dense_10_355277*
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
D__inference_dense_10_layer_call_and_return_conditional_losses_3548292"
 dense_10/StatefulPartitionedCall�
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp!^dense_10/StatefulPartitionedCall#^dropout_10/StatefulPartitionedCall ^lstm_20/StatefulPartitionedCall ^lstm_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2H
"dropout_10/StatefulPartitionedCall"dropout_10/StatefulPartitionedCall2B
lstm_20/StatefulPartitionedCalllstm_20/StatefulPartitionedCall2B
lstm_21/StatefulPartitionedCalllstm_21/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_353304

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
�
�
H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_357595

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
�^
�
'sequential_10_lstm_20_while_body_352991H
Dsequential_10_lstm_20_while_sequential_10_lstm_20_while_loop_counterN
Jsequential_10_lstm_20_while_sequential_10_lstm_20_while_maximum_iterations+
'sequential_10_lstm_20_while_placeholder-
)sequential_10_lstm_20_while_placeholder_1-
)sequential_10_lstm_20_while_placeholder_2-
)sequential_10_lstm_20_while_placeholder_3G
Csequential_10_lstm_20_while_sequential_10_lstm_20_strided_slice_1_0�
sequential_10_lstm_20_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_20_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_10_lstm_20_while_lstm_cell_40_matmul_readvariableop_resource_0:	�^
Ksequential_10_lstm_20_while_lstm_cell_40_matmul_1_readvariableop_resource_0:	@�Y
Jsequential_10_lstm_20_while_lstm_cell_40_biasadd_readvariableop_resource_0:	�(
$sequential_10_lstm_20_while_identity*
&sequential_10_lstm_20_while_identity_1*
&sequential_10_lstm_20_while_identity_2*
&sequential_10_lstm_20_while_identity_3*
&sequential_10_lstm_20_while_identity_4*
&sequential_10_lstm_20_while_identity_5E
Asequential_10_lstm_20_while_sequential_10_lstm_20_strided_slice_1�
}sequential_10_lstm_20_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_20_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_10_lstm_20_while_lstm_cell_40_matmul_readvariableop_resource:	�\
Isequential_10_lstm_20_while_lstm_cell_40_matmul_1_readvariableop_resource:	@�W
Hsequential_10_lstm_20_while_lstm_cell_40_biasadd_readvariableop_resource:	���?sequential_10/lstm_20/while/lstm_cell_40/BiasAdd/ReadVariableOp�>sequential_10/lstm_20/while/lstm_cell_40/MatMul/ReadVariableOp�@sequential_10/lstm_20/while/lstm_cell_40/MatMul_1/ReadVariableOp�
Msequential_10/lstm_20/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2O
Msequential_10/lstm_20/while/TensorArrayV2Read/TensorListGetItem/element_shape�
?sequential_10/lstm_20/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_10_lstm_20_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_20_tensorarrayunstack_tensorlistfromtensor_0'sequential_10_lstm_20_while_placeholderVsequential_10/lstm_20/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02A
?sequential_10/lstm_20/while/TensorArrayV2Read/TensorListGetItem�
>sequential_10/lstm_20/while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOpIsequential_10_lstm_20_while_lstm_cell_40_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02@
>sequential_10/lstm_20/while/lstm_cell_40/MatMul/ReadVariableOp�
/sequential_10/lstm_20/while/lstm_cell_40/MatMulMatMulFsequential_10/lstm_20/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_10/lstm_20/while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������21
/sequential_10/lstm_20/while/lstm_cell_40/MatMul�
@sequential_10/lstm_20/while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOpKsequential_10_lstm_20_while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype02B
@sequential_10/lstm_20/while/lstm_cell_40/MatMul_1/ReadVariableOp�
1sequential_10/lstm_20/while/lstm_cell_40/MatMul_1MatMul)sequential_10_lstm_20_while_placeholder_2Hsequential_10/lstm_20/while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������23
1sequential_10/lstm_20/while/lstm_cell_40/MatMul_1�
,sequential_10/lstm_20/while/lstm_cell_40/addAddV29sequential_10/lstm_20/while/lstm_cell_40/MatMul:product:0;sequential_10/lstm_20/while/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:����������2.
,sequential_10/lstm_20/while/lstm_cell_40/add�
?sequential_10/lstm_20/while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOpJsequential_10_lstm_20_while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02A
?sequential_10/lstm_20/while/lstm_cell_40/BiasAdd/ReadVariableOp�
0sequential_10/lstm_20/while/lstm_cell_40/BiasAddBiasAdd0sequential_10/lstm_20/while/lstm_cell_40/add:z:0Gsequential_10/lstm_20/while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������22
0sequential_10/lstm_20/while/lstm_cell_40/BiasAdd�
8sequential_10/lstm_20/while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_10/lstm_20/while/lstm_cell_40/split/split_dim�
.sequential_10/lstm_20/while/lstm_cell_40/splitSplitAsequential_10/lstm_20/while/lstm_cell_40/split/split_dim:output:09sequential_10/lstm_20/while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split20
.sequential_10/lstm_20/while/lstm_cell_40/split�
0sequential_10/lstm_20/while/lstm_cell_40/SigmoidSigmoid7sequential_10/lstm_20/while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:���������@22
0sequential_10/lstm_20/while/lstm_cell_40/Sigmoid�
2sequential_10/lstm_20/while/lstm_cell_40/Sigmoid_1Sigmoid7sequential_10/lstm_20/while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:���������@24
2sequential_10/lstm_20/while/lstm_cell_40/Sigmoid_1�
,sequential_10/lstm_20/while/lstm_cell_40/mulMul6sequential_10/lstm_20/while/lstm_cell_40/Sigmoid_1:y:0)sequential_10_lstm_20_while_placeholder_3*
T0*'
_output_shapes
:���������@2.
,sequential_10/lstm_20/while/lstm_cell_40/mul�
-sequential_10/lstm_20/while/lstm_cell_40/ReluRelu7sequential_10/lstm_20/while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:���������@2/
-sequential_10/lstm_20/while/lstm_cell_40/Relu�
.sequential_10/lstm_20/while/lstm_cell_40/mul_1Mul4sequential_10/lstm_20/while/lstm_cell_40/Sigmoid:y:0;sequential_10/lstm_20/while/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:���������@20
.sequential_10/lstm_20/while/lstm_cell_40/mul_1�
.sequential_10/lstm_20/while/lstm_cell_40/add_1AddV20sequential_10/lstm_20/while/lstm_cell_40/mul:z:02sequential_10/lstm_20/while/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:���������@20
.sequential_10/lstm_20/while/lstm_cell_40/add_1�
2sequential_10/lstm_20/while/lstm_cell_40/Sigmoid_2Sigmoid7sequential_10/lstm_20/while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:���������@24
2sequential_10/lstm_20/while/lstm_cell_40/Sigmoid_2�
/sequential_10/lstm_20/while/lstm_cell_40/Relu_1Relu2sequential_10/lstm_20/while/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:���������@21
/sequential_10/lstm_20/while/lstm_cell_40/Relu_1�
.sequential_10/lstm_20/while/lstm_cell_40/mul_2Mul6sequential_10/lstm_20/while/lstm_cell_40/Sigmoid_2:y:0=sequential_10/lstm_20/while/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:���������@20
.sequential_10/lstm_20/while/lstm_cell_40/mul_2�
@sequential_10/lstm_20/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_10_lstm_20_while_placeholder_1'sequential_10_lstm_20_while_placeholder2sequential_10/lstm_20/while/lstm_cell_40/mul_2:z:0*
_output_shapes
: *
element_dtype02B
@sequential_10/lstm_20/while/TensorArrayV2Write/TensorListSetItem�
!sequential_10/lstm_20/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_10/lstm_20/while/add/y�
sequential_10/lstm_20/while/addAddV2'sequential_10_lstm_20_while_placeholder*sequential_10/lstm_20/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_10/lstm_20/while/add�
#sequential_10/lstm_20/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_10/lstm_20/while/add_1/y�
!sequential_10/lstm_20/while/add_1AddV2Dsequential_10_lstm_20_while_sequential_10_lstm_20_while_loop_counter,sequential_10/lstm_20/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_10/lstm_20/while/add_1�
$sequential_10/lstm_20/while/IdentityIdentity%sequential_10/lstm_20/while/add_1:z:0!^sequential_10/lstm_20/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_10/lstm_20/while/Identity�
&sequential_10/lstm_20/while/Identity_1IdentityJsequential_10_lstm_20_while_sequential_10_lstm_20_while_maximum_iterations!^sequential_10/lstm_20/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_10/lstm_20/while/Identity_1�
&sequential_10/lstm_20/while/Identity_2Identity#sequential_10/lstm_20/while/add:z:0!^sequential_10/lstm_20/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_10/lstm_20/while/Identity_2�
&sequential_10/lstm_20/while/Identity_3IdentityPsequential_10/lstm_20/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_10/lstm_20/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_10/lstm_20/while/Identity_3�
&sequential_10/lstm_20/while/Identity_4Identity2sequential_10/lstm_20/while/lstm_cell_40/mul_2:z:0!^sequential_10/lstm_20/while/NoOp*
T0*'
_output_shapes
:���������@2(
&sequential_10/lstm_20/while/Identity_4�
&sequential_10/lstm_20/while/Identity_5Identity2sequential_10/lstm_20/while/lstm_cell_40/add_1:z:0!^sequential_10/lstm_20/while/NoOp*
T0*'
_output_shapes
:���������@2(
&sequential_10/lstm_20/while/Identity_5�
 sequential_10/lstm_20/while/NoOpNoOp@^sequential_10/lstm_20/while/lstm_cell_40/BiasAdd/ReadVariableOp?^sequential_10/lstm_20/while/lstm_cell_40/MatMul/ReadVariableOpA^sequential_10/lstm_20/while/lstm_cell_40/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2"
 sequential_10/lstm_20/while/NoOp"U
$sequential_10_lstm_20_while_identity-sequential_10/lstm_20/while/Identity:output:0"Y
&sequential_10_lstm_20_while_identity_1/sequential_10/lstm_20/while/Identity_1:output:0"Y
&sequential_10_lstm_20_while_identity_2/sequential_10/lstm_20/while/Identity_2:output:0"Y
&sequential_10_lstm_20_while_identity_3/sequential_10/lstm_20/while/Identity_3:output:0"Y
&sequential_10_lstm_20_while_identity_4/sequential_10/lstm_20/while/Identity_4:output:0"Y
&sequential_10_lstm_20_while_identity_5/sequential_10/lstm_20/while/Identity_5:output:0"�
Hsequential_10_lstm_20_while_lstm_cell_40_biasadd_readvariableop_resourceJsequential_10_lstm_20_while_lstm_cell_40_biasadd_readvariableop_resource_0"�
Isequential_10_lstm_20_while_lstm_cell_40_matmul_1_readvariableop_resourceKsequential_10_lstm_20_while_lstm_cell_40_matmul_1_readvariableop_resource_0"�
Gsequential_10_lstm_20_while_lstm_cell_40_matmul_readvariableop_resourceIsequential_10_lstm_20_while_lstm_cell_40_matmul_readvariableop_resource_0"�
Asequential_10_lstm_20_while_sequential_10_lstm_20_strided_slice_1Csequential_10_lstm_20_while_sequential_10_lstm_20_strided_slice_1_0"�
}sequential_10_lstm_20_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_20_tensorarrayunstack_tensorlistfromtensorsequential_10_lstm_20_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_20_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2�
?sequential_10/lstm_20/while/lstm_cell_40/BiasAdd/ReadVariableOp?sequential_10/lstm_20/while/lstm_cell_40/BiasAdd/ReadVariableOp2�
>sequential_10/lstm_20/while/lstm_cell_40/MatMul/ReadVariableOp>sequential_10/lstm_20/while/lstm_cell_40/MatMul/ReadVariableOp2�
@sequential_10/lstm_20/while/lstm_cell_40/MatMul_1/ReadVariableOp@sequential_10/lstm_20/while/lstm_cell_40/MatMul_1/ReadVariableOp: 
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
F__inference_dropout_10_layer_call_and_return_conditional_losses_357380

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
�
�
-__inference_lstm_cell_40_layer_call_fn_357433

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
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_3534502
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
�[
�
C__inference_lstm_21_layer_call_and_return_conditional_losses_357353

inputs>
+lstm_cell_41_matmul_readvariableop_resource:	@�@
-lstm_cell_41_matmul_1_readvariableop_resource:	 �;
,lstm_cell_41_biasadd_readvariableop_resource:	�
identity��#lstm_cell_41/BiasAdd/ReadVariableOp�"lstm_cell_41/MatMul/ReadVariableOp�$lstm_cell_41/MatMul_1/ReadVariableOp�whileD
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
"lstm_cell_41/MatMul/ReadVariableOpReadVariableOp+lstm_cell_41_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype02$
"lstm_cell_41/MatMul/ReadVariableOp�
lstm_cell_41/MatMulMatMulstrided_slice_2:output:0*lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_41/MatMul�
$lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_41_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02&
$lstm_cell_41/MatMul_1/ReadVariableOp�
lstm_cell_41/MatMul_1MatMulzeros:output:0,lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_41/MatMul_1�
lstm_cell_41/addAddV2lstm_cell_41/MatMul:product:0lstm_cell_41/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_41/add�
#lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_41_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_41/BiasAdd/ReadVariableOp�
lstm_cell_41/BiasAddBiasAddlstm_cell_41/add:z:0+lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_41/BiasAdd~
lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_41/split/split_dim�
lstm_cell_41/splitSplit%lstm_cell_41/split/split_dim:output:0lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
lstm_cell_41/split�
lstm_cell_41/SigmoidSigmoidlstm_cell_41/split:output:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/Sigmoid�
lstm_cell_41/Sigmoid_1Sigmoidlstm_cell_41/split:output:1*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/Sigmoid_1�
lstm_cell_41/mulMullstm_cell_41/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/mul}
lstm_cell_41/ReluRelulstm_cell_41/split:output:2*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/Relu�
lstm_cell_41/mul_1Mullstm_cell_41/Sigmoid:y:0lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/mul_1�
lstm_cell_41/add_1AddV2lstm_cell_41/mul:z:0lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/add_1�
lstm_cell_41/Sigmoid_2Sigmoidlstm_cell_41/split:output:3*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/Sigmoid_2|
lstm_cell_41/Relu_1Relulstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/Relu_1�
lstm_cell_41/mul_2Mullstm_cell_41/Sigmoid_2:y:0!lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/mul_2�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_41_matmul_readvariableop_resource-lstm_cell_41_matmul_1_readvariableop_resource,lstm_cell_41_biasadd_readvariableop_resource*
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
while_body_357269*
condR
while_cond_357268*K
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
NoOpNoOp$^lstm_cell_41/BiasAdd/ReadVariableOp#^lstm_cell_41/MatMul/ReadVariableOp%^lstm_cell_41/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������@: : : 2J
#lstm_cell_41/BiasAdd/ReadVariableOp#lstm_cell_41/BiasAdd/ReadVariableOp2H
"lstm_cell_41/MatMul/ReadVariableOp"lstm_cell_41/MatMul/ReadVariableOp2L
$lstm_cell_41/MatMul_1/ReadVariableOp$lstm_cell_41/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�J
�

lstm_21_while_body_355959,
(lstm_21_while_lstm_21_while_loop_counter2
.lstm_21_while_lstm_21_while_maximum_iterations
lstm_21_while_placeholder
lstm_21_while_placeholder_1
lstm_21_while_placeholder_2
lstm_21_while_placeholder_3+
'lstm_21_while_lstm_21_strided_slice_1_0g
clstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_21_while_lstm_cell_41_matmul_readvariableop_resource_0:	@�P
=lstm_21_while_lstm_cell_41_matmul_1_readvariableop_resource_0:	 �K
<lstm_21_while_lstm_cell_41_biasadd_readvariableop_resource_0:	�
lstm_21_while_identity
lstm_21_while_identity_1
lstm_21_while_identity_2
lstm_21_while_identity_3
lstm_21_while_identity_4
lstm_21_while_identity_5)
%lstm_21_while_lstm_21_strided_slice_1e
alstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensorL
9lstm_21_while_lstm_cell_41_matmul_readvariableop_resource:	@�N
;lstm_21_while_lstm_cell_41_matmul_1_readvariableop_resource:	 �I
:lstm_21_while_lstm_cell_41_biasadd_readvariableop_resource:	���1lstm_21/while/lstm_cell_41/BiasAdd/ReadVariableOp�0lstm_21/while/lstm_cell_41/MatMul/ReadVariableOp�2lstm_21/while/lstm_cell_41/MatMul_1/ReadVariableOp�
?lstm_21/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2A
?lstm_21/while/TensorArrayV2Read/TensorListGetItem/element_shape�
1lstm_21/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensor_0lstm_21_while_placeholderHlstm_21/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype023
1lstm_21/while/TensorArrayV2Read/TensorListGetItem�
0lstm_21/while/lstm_cell_41/MatMul/ReadVariableOpReadVariableOp;lstm_21_while_lstm_cell_41_matmul_readvariableop_resource_0*
_output_shapes
:	@�*
dtype022
0lstm_21/while/lstm_cell_41/MatMul/ReadVariableOp�
!lstm_21/while/lstm_cell_41/MatMulMatMul8lstm_21/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_21/while/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2#
!lstm_21/while/lstm_cell_41/MatMul�
2lstm_21/while/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp=lstm_21_while_lstm_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype024
2lstm_21/while/lstm_cell_41/MatMul_1/ReadVariableOp�
#lstm_21/while/lstm_cell_41/MatMul_1MatMullstm_21_while_placeholder_2:lstm_21/while/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2%
#lstm_21/while/lstm_cell_41/MatMul_1�
lstm_21/while/lstm_cell_41/addAddV2+lstm_21/while/lstm_cell_41/MatMul:product:0-lstm_21/while/lstm_cell_41/MatMul_1:product:0*
T0*(
_output_shapes
:����������2 
lstm_21/while/lstm_cell_41/add�
1lstm_21/while/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp<lstm_21_while_lstm_cell_41_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype023
1lstm_21/while/lstm_cell_41/BiasAdd/ReadVariableOp�
"lstm_21/while/lstm_cell_41/BiasAddBiasAdd"lstm_21/while/lstm_cell_41/add:z:09lstm_21/while/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2$
"lstm_21/while/lstm_cell_41/BiasAdd�
*lstm_21/while/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_21/while/lstm_cell_41/split/split_dim�
 lstm_21/while/lstm_cell_41/splitSplit3lstm_21/while/lstm_cell_41/split/split_dim:output:0+lstm_21/while/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2"
 lstm_21/while/lstm_cell_41/split�
"lstm_21/while/lstm_cell_41/SigmoidSigmoid)lstm_21/while/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:��������� 2$
"lstm_21/while/lstm_cell_41/Sigmoid�
$lstm_21/while/lstm_cell_41/Sigmoid_1Sigmoid)lstm_21/while/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:��������� 2&
$lstm_21/while/lstm_cell_41/Sigmoid_1�
lstm_21/while/lstm_cell_41/mulMul(lstm_21/while/lstm_cell_41/Sigmoid_1:y:0lstm_21_while_placeholder_3*
T0*'
_output_shapes
:��������� 2 
lstm_21/while/lstm_cell_41/mul�
lstm_21/while/lstm_cell_41/ReluRelu)lstm_21/while/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:��������� 2!
lstm_21/while/lstm_cell_41/Relu�
 lstm_21/while/lstm_cell_41/mul_1Mul&lstm_21/while/lstm_cell_41/Sigmoid:y:0-lstm_21/while/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:��������� 2"
 lstm_21/while/lstm_cell_41/mul_1�
 lstm_21/while/lstm_cell_41/add_1AddV2"lstm_21/while/lstm_cell_41/mul:z:0$lstm_21/while/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:��������� 2"
 lstm_21/while/lstm_cell_41/add_1�
$lstm_21/while/lstm_cell_41/Sigmoid_2Sigmoid)lstm_21/while/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:��������� 2&
$lstm_21/while/lstm_cell_41/Sigmoid_2�
!lstm_21/while/lstm_cell_41/Relu_1Relu$lstm_21/while/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:��������� 2#
!lstm_21/while/lstm_cell_41/Relu_1�
 lstm_21/while/lstm_cell_41/mul_2Mul(lstm_21/while/lstm_cell_41/Sigmoid_2:y:0/lstm_21/while/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2"
 lstm_21/while/lstm_cell_41/mul_2�
2lstm_21/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_21_while_placeholder_1lstm_21_while_placeholder$lstm_21/while/lstm_cell_41/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_21/while/TensorArrayV2Write/TensorListSetIteml
lstm_21/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_21/while/add/y�
lstm_21/while/addAddV2lstm_21_while_placeholderlstm_21/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_21/while/addp
lstm_21/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_21/while/add_1/y�
lstm_21/while/add_1AddV2(lstm_21_while_lstm_21_while_loop_counterlstm_21/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_21/while/add_1�
lstm_21/while/IdentityIdentitylstm_21/while/add_1:z:0^lstm_21/while/NoOp*
T0*
_output_shapes
: 2
lstm_21/while/Identity�
lstm_21/while/Identity_1Identity.lstm_21_while_lstm_21_while_maximum_iterations^lstm_21/while/NoOp*
T0*
_output_shapes
: 2
lstm_21/while/Identity_1�
lstm_21/while/Identity_2Identitylstm_21/while/add:z:0^lstm_21/while/NoOp*
T0*
_output_shapes
: 2
lstm_21/while/Identity_2�
lstm_21/while/Identity_3IdentityBlstm_21/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_21/while/NoOp*
T0*
_output_shapes
: 2
lstm_21/while/Identity_3�
lstm_21/while/Identity_4Identity$lstm_21/while/lstm_cell_41/mul_2:z:0^lstm_21/while/NoOp*
T0*'
_output_shapes
:��������� 2
lstm_21/while/Identity_4�
lstm_21/while/Identity_5Identity$lstm_21/while/lstm_cell_41/add_1:z:0^lstm_21/while/NoOp*
T0*'
_output_shapes
:��������� 2
lstm_21/while/Identity_5�
lstm_21/while/NoOpNoOp2^lstm_21/while/lstm_cell_41/BiasAdd/ReadVariableOp1^lstm_21/while/lstm_cell_41/MatMul/ReadVariableOp3^lstm_21/while/lstm_cell_41/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_21/while/NoOp"9
lstm_21_while_identitylstm_21/while/Identity:output:0"=
lstm_21_while_identity_1!lstm_21/while/Identity_1:output:0"=
lstm_21_while_identity_2!lstm_21/while/Identity_2:output:0"=
lstm_21_while_identity_3!lstm_21/while/Identity_3:output:0"=
lstm_21_while_identity_4!lstm_21/while/Identity_4:output:0"=
lstm_21_while_identity_5!lstm_21/while/Identity_5:output:0"P
%lstm_21_while_lstm_21_strided_slice_1'lstm_21_while_lstm_21_strided_slice_1_0"z
:lstm_21_while_lstm_cell_41_biasadd_readvariableop_resource<lstm_21_while_lstm_cell_41_biasadd_readvariableop_resource_0"|
;lstm_21_while_lstm_cell_41_matmul_1_readvariableop_resource=lstm_21_while_lstm_cell_41_matmul_1_readvariableop_resource_0"x
9lstm_21_while_lstm_cell_41_matmul_readvariableop_resource;lstm_21_while_lstm_cell_41_matmul_readvariableop_resource_0"�
alstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensorclstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2f
1lstm_21/while/lstm_cell_41/BiasAdd/ReadVariableOp1lstm_21/while/lstm_cell_41/BiasAdd/ReadVariableOp2d
0lstm_21/while/lstm_cell_41/MatMul/ReadVariableOp0lstm_21/while/lstm_cell_41/MatMul/ReadVariableOp2h
2lstm_21/while/lstm_cell_41/MatMul_1/ReadVariableOp2lstm_21/while/lstm_cell_41/MatMul_1/ReadVariableOp: 
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
�[
�
C__inference_lstm_21_layer_call_and_return_conditional_losses_355052

inputs>
+lstm_cell_41_matmul_readvariableop_resource:	@�@
-lstm_cell_41_matmul_1_readvariableop_resource:	 �;
,lstm_cell_41_biasadd_readvariableop_resource:	�
identity��#lstm_cell_41/BiasAdd/ReadVariableOp�"lstm_cell_41/MatMul/ReadVariableOp�$lstm_cell_41/MatMul_1/ReadVariableOp�whileD
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
"lstm_cell_41/MatMul/ReadVariableOpReadVariableOp+lstm_cell_41_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype02$
"lstm_cell_41/MatMul/ReadVariableOp�
lstm_cell_41/MatMulMatMulstrided_slice_2:output:0*lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_41/MatMul�
$lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_41_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02&
$lstm_cell_41/MatMul_1/ReadVariableOp�
lstm_cell_41/MatMul_1MatMulzeros:output:0,lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_41/MatMul_1�
lstm_cell_41/addAddV2lstm_cell_41/MatMul:product:0lstm_cell_41/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_41/add�
#lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_41_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_41/BiasAdd/ReadVariableOp�
lstm_cell_41/BiasAddBiasAddlstm_cell_41/add:z:0+lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_41/BiasAdd~
lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_41/split/split_dim�
lstm_cell_41/splitSplit%lstm_cell_41/split/split_dim:output:0lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
lstm_cell_41/split�
lstm_cell_41/SigmoidSigmoidlstm_cell_41/split:output:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/Sigmoid�
lstm_cell_41/Sigmoid_1Sigmoidlstm_cell_41/split:output:1*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/Sigmoid_1�
lstm_cell_41/mulMullstm_cell_41/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/mul}
lstm_cell_41/ReluRelulstm_cell_41/split:output:2*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/Relu�
lstm_cell_41/mul_1Mullstm_cell_41/Sigmoid:y:0lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/mul_1�
lstm_cell_41/add_1AddV2lstm_cell_41/mul:z:0lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/add_1�
lstm_cell_41/Sigmoid_2Sigmoidlstm_cell_41/split:output:3*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/Sigmoid_2|
lstm_cell_41/Relu_1Relulstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/Relu_1�
lstm_cell_41/mul_2Mullstm_cell_41/Sigmoid_2:y:0!lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/mul_2�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_41_matmul_readvariableop_resource-lstm_cell_41_matmul_1_readvariableop_resource,lstm_cell_41_biasadd_readvariableop_resource*
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
while_body_354968*
condR
while_cond_354967*K
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
NoOpNoOp$^lstm_cell_41/BiasAdd/ReadVariableOp#^lstm_cell_41/MatMul/ReadVariableOp%^lstm_cell_41/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������@: : : 2J
#lstm_cell_41/BiasAdd/ReadVariableOp#lstm_cell_41/BiasAdd/ReadVariableOp2H
"lstm_cell_41/MatMul/ReadVariableOp"lstm_cell_41/MatMul/ReadVariableOp2L
$lstm_cell_41/MatMul_1/ReadVariableOp$lstm_cell_41/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�J
�

lstm_20_while_body_355507,
(lstm_20_while_lstm_20_while_loop_counter2
.lstm_20_while_lstm_20_while_maximum_iterations
lstm_20_while_placeholder
lstm_20_while_placeholder_1
lstm_20_while_placeholder_2
lstm_20_while_placeholder_3+
'lstm_20_while_lstm_20_strided_slice_1_0g
clstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_20_while_lstm_cell_40_matmul_readvariableop_resource_0:	�P
=lstm_20_while_lstm_cell_40_matmul_1_readvariableop_resource_0:	@�K
<lstm_20_while_lstm_cell_40_biasadd_readvariableop_resource_0:	�
lstm_20_while_identity
lstm_20_while_identity_1
lstm_20_while_identity_2
lstm_20_while_identity_3
lstm_20_while_identity_4
lstm_20_while_identity_5)
%lstm_20_while_lstm_20_strided_slice_1e
alstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensorL
9lstm_20_while_lstm_cell_40_matmul_readvariableop_resource:	�N
;lstm_20_while_lstm_cell_40_matmul_1_readvariableop_resource:	@�I
:lstm_20_while_lstm_cell_40_biasadd_readvariableop_resource:	���1lstm_20/while/lstm_cell_40/BiasAdd/ReadVariableOp�0lstm_20/while/lstm_cell_40/MatMul/ReadVariableOp�2lstm_20/while/lstm_cell_40/MatMul_1/ReadVariableOp�
?lstm_20/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2A
?lstm_20/while/TensorArrayV2Read/TensorListGetItem/element_shape�
1lstm_20/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensor_0lstm_20_while_placeholderHlstm_20/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype023
1lstm_20/while/TensorArrayV2Read/TensorListGetItem�
0lstm_20/while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp;lstm_20_while_lstm_cell_40_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype022
0lstm_20/while/lstm_cell_40/MatMul/ReadVariableOp�
!lstm_20/while/lstm_cell_40/MatMulMatMul8lstm_20/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_20/while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2#
!lstm_20/while/lstm_cell_40/MatMul�
2lstm_20/while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp=lstm_20_while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype024
2lstm_20/while/lstm_cell_40/MatMul_1/ReadVariableOp�
#lstm_20/while/lstm_cell_40/MatMul_1MatMullstm_20_while_placeholder_2:lstm_20/while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2%
#lstm_20/while/lstm_cell_40/MatMul_1�
lstm_20/while/lstm_cell_40/addAddV2+lstm_20/while/lstm_cell_40/MatMul:product:0-lstm_20/while/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:����������2 
lstm_20/while/lstm_cell_40/add�
1lstm_20/while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp<lstm_20_while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype023
1lstm_20/while/lstm_cell_40/BiasAdd/ReadVariableOp�
"lstm_20/while/lstm_cell_40/BiasAddBiasAdd"lstm_20/while/lstm_cell_40/add:z:09lstm_20/while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2$
"lstm_20/while/lstm_cell_40/BiasAdd�
*lstm_20/while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_20/while/lstm_cell_40/split/split_dim�
 lstm_20/while/lstm_cell_40/splitSplit3lstm_20/while/lstm_cell_40/split/split_dim:output:0+lstm_20/while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2"
 lstm_20/while/lstm_cell_40/split�
"lstm_20/while/lstm_cell_40/SigmoidSigmoid)lstm_20/while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:���������@2$
"lstm_20/while/lstm_cell_40/Sigmoid�
$lstm_20/while/lstm_cell_40/Sigmoid_1Sigmoid)lstm_20/while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:���������@2&
$lstm_20/while/lstm_cell_40/Sigmoid_1�
lstm_20/while/lstm_cell_40/mulMul(lstm_20/while/lstm_cell_40/Sigmoid_1:y:0lstm_20_while_placeholder_3*
T0*'
_output_shapes
:���������@2 
lstm_20/while/lstm_cell_40/mul�
lstm_20/while/lstm_cell_40/ReluRelu)lstm_20/while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:���������@2!
lstm_20/while/lstm_cell_40/Relu�
 lstm_20/while/lstm_cell_40/mul_1Mul&lstm_20/while/lstm_cell_40/Sigmoid:y:0-lstm_20/while/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:���������@2"
 lstm_20/while/lstm_cell_40/mul_1�
 lstm_20/while/lstm_cell_40/add_1AddV2"lstm_20/while/lstm_cell_40/mul:z:0$lstm_20/while/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:���������@2"
 lstm_20/while/lstm_cell_40/add_1�
$lstm_20/while/lstm_cell_40/Sigmoid_2Sigmoid)lstm_20/while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:���������@2&
$lstm_20/while/lstm_cell_40/Sigmoid_2�
!lstm_20/while/lstm_cell_40/Relu_1Relu$lstm_20/while/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:���������@2#
!lstm_20/while/lstm_cell_40/Relu_1�
 lstm_20/while/lstm_cell_40/mul_2Mul(lstm_20/while/lstm_cell_40/Sigmoid_2:y:0/lstm_20/while/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2"
 lstm_20/while/lstm_cell_40/mul_2�
2lstm_20/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_20_while_placeholder_1lstm_20_while_placeholder$lstm_20/while/lstm_cell_40/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_20/while/TensorArrayV2Write/TensorListSetIteml
lstm_20/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_20/while/add/y�
lstm_20/while/addAddV2lstm_20_while_placeholderlstm_20/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_20/while/addp
lstm_20/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_20/while/add_1/y�
lstm_20/while/add_1AddV2(lstm_20_while_lstm_20_while_loop_counterlstm_20/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_20/while/add_1�
lstm_20/while/IdentityIdentitylstm_20/while/add_1:z:0^lstm_20/while/NoOp*
T0*
_output_shapes
: 2
lstm_20/while/Identity�
lstm_20/while/Identity_1Identity.lstm_20_while_lstm_20_while_maximum_iterations^lstm_20/while/NoOp*
T0*
_output_shapes
: 2
lstm_20/while/Identity_1�
lstm_20/while/Identity_2Identitylstm_20/while/add:z:0^lstm_20/while/NoOp*
T0*
_output_shapes
: 2
lstm_20/while/Identity_2�
lstm_20/while/Identity_3IdentityBlstm_20/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_20/while/NoOp*
T0*
_output_shapes
: 2
lstm_20/while/Identity_3�
lstm_20/while/Identity_4Identity$lstm_20/while/lstm_cell_40/mul_2:z:0^lstm_20/while/NoOp*
T0*'
_output_shapes
:���������@2
lstm_20/while/Identity_4�
lstm_20/while/Identity_5Identity$lstm_20/while/lstm_cell_40/add_1:z:0^lstm_20/while/NoOp*
T0*'
_output_shapes
:���������@2
lstm_20/while/Identity_5�
lstm_20/while/NoOpNoOp2^lstm_20/while/lstm_cell_40/BiasAdd/ReadVariableOp1^lstm_20/while/lstm_cell_40/MatMul/ReadVariableOp3^lstm_20/while/lstm_cell_40/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_20/while/NoOp"9
lstm_20_while_identitylstm_20/while/Identity:output:0"=
lstm_20_while_identity_1!lstm_20/while/Identity_1:output:0"=
lstm_20_while_identity_2!lstm_20/while/Identity_2:output:0"=
lstm_20_while_identity_3!lstm_20/while/Identity_3:output:0"=
lstm_20_while_identity_4!lstm_20/while/Identity_4:output:0"=
lstm_20_while_identity_5!lstm_20/while/Identity_5:output:0"P
%lstm_20_while_lstm_20_strided_slice_1'lstm_20_while_lstm_20_strided_slice_1_0"z
:lstm_20_while_lstm_cell_40_biasadd_readvariableop_resource<lstm_20_while_lstm_cell_40_biasadd_readvariableop_resource_0"|
;lstm_20_while_lstm_cell_40_matmul_1_readvariableop_resource=lstm_20_while_lstm_cell_40_matmul_1_readvariableop_resource_0"x
9lstm_20_while_lstm_cell_40_matmul_readvariableop_resource;lstm_20_while_lstm_cell_40_matmul_readvariableop_resource_0"�
alstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensorclstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2f
1lstm_20/while/lstm_cell_40/BiasAdd/ReadVariableOp1lstm_20/while/lstm_cell_40/BiasAdd/ReadVariableOp2d
0lstm_20/while/lstm_cell_40/MatMul/ReadVariableOp0lstm_20/while/lstm_cell_40/MatMul/ReadVariableOp2h
2lstm_20/while/lstm_cell_40/MatMul_1/ReadVariableOp2lstm_20/while/lstm_cell_40/MatMul_1/ReadVariableOp: 
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
�
'sequential_10_lstm_21_while_cond_353137H
Dsequential_10_lstm_21_while_sequential_10_lstm_21_while_loop_counterN
Jsequential_10_lstm_21_while_sequential_10_lstm_21_while_maximum_iterations+
'sequential_10_lstm_21_while_placeholder-
)sequential_10_lstm_21_while_placeholder_1-
)sequential_10_lstm_21_while_placeholder_2-
)sequential_10_lstm_21_while_placeholder_3J
Fsequential_10_lstm_21_while_less_sequential_10_lstm_21_strided_slice_1`
\sequential_10_lstm_21_while_sequential_10_lstm_21_while_cond_353137___redundant_placeholder0`
\sequential_10_lstm_21_while_sequential_10_lstm_21_while_cond_353137___redundant_placeholder1`
\sequential_10_lstm_21_while_sequential_10_lstm_21_while_cond_353137___redundant_placeholder2`
\sequential_10_lstm_21_while_sequential_10_lstm_21_while_cond_353137___redundant_placeholder3(
$sequential_10_lstm_21_while_identity
�
 sequential_10/lstm_21/while/LessLess'sequential_10_lstm_21_while_placeholderFsequential_10_lstm_21_while_less_sequential_10_lstm_21_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_10/lstm_21/while/Less�
$sequential_10/lstm_21/while/IdentityIdentity$sequential_10/lstm_21/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_10/lstm_21/while/Identity"U
$sequential_10_lstm_21_while_identity-sequential_10/lstm_21/while/Identity:output:0*(
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
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_357497

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
while_body_356470
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_40_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_40_matmul_1_readvariableop_resource_0:	@�C
4while_lstm_cell_40_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_40_matmul_readvariableop_resource:	�F
3while_lstm_cell_40_matmul_1_readvariableop_resource:	@�A
2while_lstm_cell_40_biasadd_readvariableop_resource:	���)while/lstm_cell_40/BiasAdd/ReadVariableOp�(while/lstm_cell_40/MatMul/ReadVariableOp�*while/lstm_cell_40/MatMul_1/ReadVariableOp�
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
(while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_40_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02*
(while/lstm_cell_40/MatMul/ReadVariableOp�
while/lstm_cell_40/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_40/MatMul�
*while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype02,
*while/lstm_cell_40/MatMul_1/ReadVariableOp�
while/lstm_cell_40/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_40/MatMul_1�
while/lstm_cell_40/addAddV2#while/lstm_cell_40/MatMul:product:0%while/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_40/add�
)while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_40/BiasAdd/ReadVariableOp�
while/lstm_cell_40/BiasAddBiasAddwhile/lstm_cell_40/add:z:01while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_40/BiasAdd�
"while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_40/split/split_dim�
while/lstm_cell_40/splitSplit+while/lstm_cell_40/split/split_dim:output:0#while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
while/lstm_cell_40/split�
while/lstm_cell_40/SigmoidSigmoid!while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/Sigmoid�
while/lstm_cell_40/Sigmoid_1Sigmoid!while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/Sigmoid_1�
while/lstm_cell_40/mulMul while/lstm_cell_40/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/mul�
while/lstm_cell_40/ReluRelu!while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/Relu�
while/lstm_cell_40/mul_1Mulwhile/lstm_cell_40/Sigmoid:y:0%while/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/mul_1�
while/lstm_cell_40/add_1AddV2while/lstm_cell_40/mul:z:0while/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/add_1�
while/lstm_cell_40/Sigmoid_2Sigmoid!while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/Sigmoid_2�
while/lstm_cell_40/Relu_1Reluwhile/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/Relu_1�
while/lstm_cell_40/mul_2Mul while/lstm_cell_40/Sigmoid_2:y:0'while/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_40/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_40/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������@2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_40/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������@2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_40_biasadd_readvariableop_resource4while_lstm_cell_40_biasadd_readvariableop_resource_0"l
3while_lstm_cell_40_matmul_1_readvariableop_resource5while_lstm_cell_40_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_40_matmul_readvariableop_resource3while_lstm_cell_40_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2V
)while/lstm_cell_40/BiasAdd/ReadVariableOp)while/lstm_cell_40/BiasAdd/ReadVariableOp2T
(while/lstm_cell_40/MatMul/ReadVariableOp(while/lstm_cell_40/MatMul/ReadVariableOp2X
*while/lstm_cell_40/MatMul_1/ReadVariableOp*while/lstm_cell_40/MatMul_1/ReadVariableOp: 
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
�
�
(__inference_lstm_20_layer_call_fn_356090

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
C__inference_lstm_20_layer_call_and_return_conditional_losses_3546462
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
while_cond_355140
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_355140___redundant_placeholder04
0while_while_cond_355140___redundant_placeholder14
0while_while_cond_355140___redundant_placeholder24
0while_while_cond_355140___redundant_placeholder3
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
while_cond_356318
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_356318___redundant_placeholder04
0while_while_cond_356318___redundant_placeholder14
0while_while_cond_356318___redundant_placeholder24
0while_while_cond_356318___redundant_placeholder3
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
�F
�
C__inference_lstm_21_layer_call_and_return_conditional_losses_354017

inputs&
lstm_cell_41_353935:	@�&
lstm_cell_41_353937:	 �"
lstm_cell_41_353939:	�
identity��$lstm_cell_41/StatefulPartitionedCall�whileD
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
$lstm_cell_41/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_41_353935lstm_cell_41_353937lstm_cell_41_353939*
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
H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_3539342&
$lstm_cell_41/StatefulPartitionedCall�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_41_353935lstm_cell_41_353937lstm_cell_41_353939*
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
while_body_353948*
condR
while_cond_353947*K
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
NoOpNoOp%^lstm_cell_41/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������@: : : 2L
$lstm_cell_41/StatefulPartitionedCall$lstm_cell_41/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������@
 
_user_specified_nameinputs
�
�
while_cond_357117
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_357117___redundant_placeholder04
0while_while_cond_357117___redundant_placeholder14
0while_while_cond_357117___redundant_placeholder24
0while_while_cond_357117___redundant_placeholder3
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
�
�
I__inference_sequential_10_layer_call_and_return_conditional_losses_355369
lstm_20_input!
lstm_20_355348:	�!
lstm_20_355350:	@�
lstm_20_355352:	�!
lstm_21_355355:	@�!
lstm_21_355357:	 �
lstm_21_355359:	�!
dense_10_355363: 
dense_10_355365:
identity�� dense_10/StatefulPartitionedCall�"dropout_10/StatefulPartitionedCall�lstm_20/StatefulPartitionedCall�lstm_21/StatefulPartitionedCall�
lstm_20/StatefulPartitionedCallStatefulPartitionedCalllstm_20_inputlstm_20_355348lstm_20_355350lstm_20_355352*
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
C__inference_lstm_20_layer_call_and_return_conditional_losses_3552252!
lstm_20/StatefulPartitionedCall�
lstm_21/StatefulPartitionedCallStatefulPartitionedCall(lstm_20/StatefulPartitionedCall:output:0lstm_21_355355lstm_21_355357lstm_21_355359*
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
C__inference_lstm_21_layer_call_and_return_conditional_losses_3550522!
lstm_21/StatefulPartitionedCall�
"dropout_10/StatefulPartitionedCallStatefulPartitionedCall(lstm_21/StatefulPartitionedCall:output:0*
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
F__inference_dropout_10_layer_call_and_return_conditional_losses_3548852$
"dropout_10/StatefulPartitionedCall�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall+dropout_10/StatefulPartitionedCall:output:0dense_10_355363dense_10_355365*
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
D__inference_dense_10_layer_call_and_return_conditional_losses_3548292"
 dense_10/StatefulPartitionedCall�
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp!^dense_10/StatefulPartitionedCall#^dropout_10/StatefulPartitionedCall ^lstm_20/StatefulPartitionedCall ^lstm_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2H
"dropout_10/StatefulPartitionedCall"dropout_10/StatefulPartitionedCall2B
lstm_20/StatefulPartitionedCalllstm_20/StatefulPartitionedCall2B
lstm_21/StatefulPartitionedCalllstm_21/StatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_20_input
�?
�
while_body_356816
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_41_matmul_readvariableop_resource_0:	@�H
5while_lstm_cell_41_matmul_1_readvariableop_resource_0:	 �C
4while_lstm_cell_41_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_41_matmul_readvariableop_resource:	@�F
3while_lstm_cell_41_matmul_1_readvariableop_resource:	 �A
2while_lstm_cell_41_biasadd_readvariableop_resource:	���)while/lstm_cell_41/BiasAdd/ReadVariableOp�(while/lstm_cell_41/MatMul/ReadVariableOp�*while/lstm_cell_41/MatMul_1/ReadVariableOp�
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
(while/lstm_cell_41/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_41_matmul_readvariableop_resource_0*
_output_shapes
:	@�*
dtype02*
(while/lstm_cell_41/MatMul/ReadVariableOp�
while/lstm_cell_41/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_41/MatMul�
*while/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02,
*while/lstm_cell_41/MatMul_1/ReadVariableOp�
while/lstm_cell_41/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_41/MatMul_1�
while/lstm_cell_41/addAddV2#while/lstm_cell_41/MatMul:product:0%while/lstm_cell_41/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_41/add�
)while/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_41_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_41/BiasAdd/ReadVariableOp�
while/lstm_cell_41/BiasAddBiasAddwhile/lstm_cell_41/add:z:01while/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_41/BiasAdd�
"while/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_41/split/split_dim�
while/lstm_cell_41/splitSplit+while/lstm_cell_41/split/split_dim:output:0#while/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
while/lstm_cell_41/split�
while/lstm_cell_41/SigmoidSigmoid!while/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/Sigmoid�
while/lstm_cell_41/Sigmoid_1Sigmoid!while/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/Sigmoid_1�
while/lstm_cell_41/mulMul while/lstm_cell_41/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/mul�
while/lstm_cell_41/ReluRelu!while/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/Relu�
while/lstm_cell_41/mul_1Mulwhile/lstm_cell_41/Sigmoid:y:0%while/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/mul_1�
while/lstm_cell_41/add_1AddV2while/lstm_cell_41/mul:z:0while/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/add_1�
while/lstm_cell_41/Sigmoid_2Sigmoid!while/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/Sigmoid_2�
while/lstm_cell_41/Relu_1Reluwhile/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/Relu_1�
while/lstm_cell_41/mul_2Mul while/lstm_cell_41/Sigmoid_2:y:0'while/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_41/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_41/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:��������� 2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_41/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:��������� 2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_41/BiasAdd/ReadVariableOp)^while/lstm_cell_41/MatMul/ReadVariableOp+^while/lstm_cell_41/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_41_biasadd_readvariableop_resource4while_lstm_cell_41_biasadd_readvariableop_resource_0"l
3while_lstm_cell_41_matmul_1_readvariableop_resource5while_lstm_cell_41_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_41_matmul_readvariableop_resource3while_lstm_cell_41_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2V
)while/lstm_cell_41/BiasAdd/ReadVariableOp)while/lstm_cell_41/BiasAdd/ReadVariableOp2T
(while/lstm_cell_41/MatMul/ReadVariableOp(while/lstm_cell_41/MatMul/ReadVariableOp2X
*while/lstm_cell_41/MatMul_1/ReadVariableOp*while/lstm_cell_41/MatMul_1/ReadVariableOp: 
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
while_body_355141
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_40_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_40_matmul_1_readvariableop_resource_0:	@�C
4while_lstm_cell_40_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_40_matmul_readvariableop_resource:	�F
3while_lstm_cell_40_matmul_1_readvariableop_resource:	@�A
2while_lstm_cell_40_biasadd_readvariableop_resource:	���)while/lstm_cell_40/BiasAdd/ReadVariableOp�(while/lstm_cell_40/MatMul/ReadVariableOp�*while/lstm_cell_40/MatMul_1/ReadVariableOp�
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
(while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_40_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02*
(while/lstm_cell_40/MatMul/ReadVariableOp�
while/lstm_cell_40/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_40/MatMul�
*while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype02,
*while/lstm_cell_40/MatMul_1/ReadVariableOp�
while/lstm_cell_40/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_40/MatMul_1�
while/lstm_cell_40/addAddV2#while/lstm_cell_40/MatMul:product:0%while/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_40/add�
)while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_40/BiasAdd/ReadVariableOp�
while/lstm_cell_40/BiasAddBiasAddwhile/lstm_cell_40/add:z:01while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_40/BiasAdd�
"while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_40/split/split_dim�
while/lstm_cell_40/splitSplit+while/lstm_cell_40/split/split_dim:output:0#while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
while/lstm_cell_40/split�
while/lstm_cell_40/SigmoidSigmoid!while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/Sigmoid�
while/lstm_cell_40/Sigmoid_1Sigmoid!while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/Sigmoid_1�
while/lstm_cell_40/mulMul while/lstm_cell_40/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/mul�
while/lstm_cell_40/ReluRelu!while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/Relu�
while/lstm_cell_40/mul_1Mulwhile/lstm_cell_40/Sigmoid:y:0%while/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/mul_1�
while/lstm_cell_40/add_1AddV2while/lstm_cell_40/mul:z:0while/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/add_1�
while/lstm_cell_40/Sigmoid_2Sigmoid!while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/Sigmoid_2�
while/lstm_cell_40/Relu_1Reluwhile/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/Relu_1�
while/lstm_cell_40/mul_2Mul while/lstm_cell_40/Sigmoid_2:y:0'while/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_40/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_40/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������@2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_40/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������@2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_40_biasadd_readvariableop_resource4while_lstm_cell_40_biasadd_readvariableop_resource_0"l
3while_lstm_cell_40_matmul_1_readvariableop_resource5while_lstm_cell_40_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_40_matmul_readvariableop_resource3while_lstm_cell_40_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2V
)while/lstm_cell_40/BiasAdd/ReadVariableOp)while/lstm_cell_40/BiasAdd/ReadVariableOp2T
(while/lstm_cell_40/MatMul/ReadVariableOp(while/lstm_cell_40/MatMul/ReadVariableOp2X
*while/lstm_cell_40/MatMul_1/ReadVariableOp*while/lstm_cell_40/MatMul_1/ReadVariableOp: 
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
while_body_356621
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_40_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_40_matmul_1_readvariableop_resource_0:	@�C
4while_lstm_cell_40_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_40_matmul_readvariableop_resource:	�F
3while_lstm_cell_40_matmul_1_readvariableop_resource:	@�A
2while_lstm_cell_40_biasadd_readvariableop_resource:	���)while/lstm_cell_40/BiasAdd/ReadVariableOp�(while/lstm_cell_40/MatMul/ReadVariableOp�*while/lstm_cell_40/MatMul_1/ReadVariableOp�
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
(while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_40_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02*
(while/lstm_cell_40/MatMul/ReadVariableOp�
while/lstm_cell_40/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_40/MatMul�
*while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype02,
*while/lstm_cell_40/MatMul_1/ReadVariableOp�
while/lstm_cell_40/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_40/MatMul_1�
while/lstm_cell_40/addAddV2#while/lstm_cell_40/MatMul:product:0%while/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_40/add�
)while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_40/BiasAdd/ReadVariableOp�
while/lstm_cell_40/BiasAddBiasAddwhile/lstm_cell_40/add:z:01while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_40/BiasAdd�
"while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_40/split/split_dim�
while/lstm_cell_40/splitSplit+while/lstm_cell_40/split/split_dim:output:0#while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
while/lstm_cell_40/split�
while/lstm_cell_40/SigmoidSigmoid!while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/Sigmoid�
while/lstm_cell_40/Sigmoid_1Sigmoid!while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/Sigmoid_1�
while/lstm_cell_40/mulMul while/lstm_cell_40/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/mul�
while/lstm_cell_40/ReluRelu!while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/Relu�
while/lstm_cell_40/mul_1Mulwhile/lstm_cell_40/Sigmoid:y:0%while/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/mul_1�
while/lstm_cell_40/add_1AddV2while/lstm_cell_40/mul:z:0while/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/add_1�
while/lstm_cell_40/Sigmoid_2Sigmoid!while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/Sigmoid_2�
while/lstm_cell_40/Relu_1Reluwhile/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/Relu_1�
while/lstm_cell_40/mul_2Mul while/lstm_cell_40/Sigmoid_2:y:0'while/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_40/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_40/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������@2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_40/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������@2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_40_biasadd_readvariableop_resource4while_lstm_cell_40_biasadd_readvariableop_resource_0"l
3while_lstm_cell_40_matmul_1_readvariableop_resource5while_lstm_cell_40_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_40_matmul_readvariableop_resource3while_lstm_cell_40_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2V
)while/lstm_cell_40/BiasAdd/ReadVariableOp)while/lstm_cell_40/BiasAdd/ReadVariableOp2T
(while/lstm_cell_40/MatMul/ReadVariableOp(while/lstm_cell_40/MatMul/ReadVariableOp2X
*while/lstm_cell_40/MatMul_1/ReadVariableOp*while/lstm_cell_40/MatMul_1/ReadVariableOp: 
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
while_body_354562
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_40_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_40_matmul_1_readvariableop_resource_0:	@�C
4while_lstm_cell_40_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_40_matmul_readvariableop_resource:	�F
3while_lstm_cell_40_matmul_1_readvariableop_resource:	@�A
2while_lstm_cell_40_biasadd_readvariableop_resource:	���)while/lstm_cell_40/BiasAdd/ReadVariableOp�(while/lstm_cell_40/MatMul/ReadVariableOp�*while/lstm_cell_40/MatMul_1/ReadVariableOp�
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
(while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_40_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02*
(while/lstm_cell_40/MatMul/ReadVariableOp�
while/lstm_cell_40/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_40/MatMul�
*while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype02,
*while/lstm_cell_40/MatMul_1/ReadVariableOp�
while/lstm_cell_40/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_40/MatMul_1�
while/lstm_cell_40/addAddV2#while/lstm_cell_40/MatMul:product:0%while/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_40/add�
)while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_40/BiasAdd/ReadVariableOp�
while/lstm_cell_40/BiasAddBiasAddwhile/lstm_cell_40/add:z:01while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_40/BiasAdd�
"while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_40/split/split_dim�
while/lstm_cell_40/splitSplit+while/lstm_cell_40/split/split_dim:output:0#while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
while/lstm_cell_40/split�
while/lstm_cell_40/SigmoidSigmoid!while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/Sigmoid�
while/lstm_cell_40/Sigmoid_1Sigmoid!while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/Sigmoid_1�
while/lstm_cell_40/mulMul while/lstm_cell_40/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/mul�
while/lstm_cell_40/ReluRelu!while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/Relu�
while/lstm_cell_40/mul_1Mulwhile/lstm_cell_40/Sigmoid:y:0%while/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/mul_1�
while/lstm_cell_40/add_1AddV2while/lstm_cell_40/mul:z:0while/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/add_1�
while/lstm_cell_40/Sigmoid_2Sigmoid!while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/Sigmoid_2�
while/lstm_cell_40/Relu_1Reluwhile/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/Relu_1�
while/lstm_cell_40/mul_2Mul while/lstm_cell_40/Sigmoid_2:y:0'while/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_40/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_40/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������@2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_40/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������@2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_40_biasadd_readvariableop_resource4while_lstm_cell_40_biasadd_readvariableop_resource_0"l
3while_lstm_cell_40_matmul_1_readvariableop_resource5while_lstm_cell_40_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_40_matmul_readvariableop_resource3while_lstm_cell_40_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2V
)while/lstm_cell_40/BiasAdd/ReadVariableOp)while/lstm_cell_40/BiasAdd/ReadVariableOp2T
(while/lstm_cell_40/MatMul/ReadVariableOp(while/lstm_cell_40/MatMul/ReadVariableOp2X
*while/lstm_cell_40/MatMul_1/ReadVariableOp*while/lstm_cell_40/MatMul_1/ReadVariableOp: 
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
while_body_357269
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_41_matmul_readvariableop_resource_0:	@�H
5while_lstm_cell_41_matmul_1_readvariableop_resource_0:	 �C
4while_lstm_cell_41_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_41_matmul_readvariableop_resource:	@�F
3while_lstm_cell_41_matmul_1_readvariableop_resource:	 �A
2while_lstm_cell_41_biasadd_readvariableop_resource:	���)while/lstm_cell_41/BiasAdd/ReadVariableOp�(while/lstm_cell_41/MatMul/ReadVariableOp�*while/lstm_cell_41/MatMul_1/ReadVariableOp�
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
(while/lstm_cell_41/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_41_matmul_readvariableop_resource_0*
_output_shapes
:	@�*
dtype02*
(while/lstm_cell_41/MatMul/ReadVariableOp�
while/lstm_cell_41/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_41/MatMul�
*while/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02,
*while/lstm_cell_41/MatMul_1/ReadVariableOp�
while/lstm_cell_41/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_41/MatMul_1�
while/lstm_cell_41/addAddV2#while/lstm_cell_41/MatMul:product:0%while/lstm_cell_41/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_41/add�
)while/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_41_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_41/BiasAdd/ReadVariableOp�
while/lstm_cell_41/BiasAddBiasAddwhile/lstm_cell_41/add:z:01while/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_41/BiasAdd�
"while/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_41/split/split_dim�
while/lstm_cell_41/splitSplit+while/lstm_cell_41/split/split_dim:output:0#while/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
while/lstm_cell_41/split�
while/lstm_cell_41/SigmoidSigmoid!while/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/Sigmoid�
while/lstm_cell_41/Sigmoid_1Sigmoid!while/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/Sigmoid_1�
while/lstm_cell_41/mulMul while/lstm_cell_41/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/mul�
while/lstm_cell_41/ReluRelu!while/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/Relu�
while/lstm_cell_41/mul_1Mulwhile/lstm_cell_41/Sigmoid:y:0%while/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/mul_1�
while/lstm_cell_41/add_1AddV2while/lstm_cell_41/mul:z:0while/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/add_1�
while/lstm_cell_41/Sigmoid_2Sigmoid!while/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/Sigmoid_2�
while/lstm_cell_41/Relu_1Reluwhile/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/Relu_1�
while/lstm_cell_41/mul_2Mul while/lstm_cell_41/Sigmoid_2:y:0'while/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_41/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_41/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:��������� 2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_41/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:��������� 2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_41/BiasAdd/ReadVariableOp)^while/lstm_cell_41/MatMul/ReadVariableOp+^while/lstm_cell_41/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_41_biasadd_readvariableop_resource4while_lstm_cell_41_biasadd_readvariableop_resource_0"l
3while_lstm_cell_41_matmul_1_readvariableop_resource5while_lstm_cell_41_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_41_matmul_readvariableop_resource3while_lstm_cell_41_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2V
)while/lstm_cell_41/BiasAdd/ReadVariableOp)while/lstm_cell_41/BiasAdd/ReadVariableOp2T
(while/lstm_cell_41/MatMul/ReadVariableOp(while/lstm_cell_41/MatMul/ReadVariableOp2X
*while/lstm_cell_41/MatMul_1/ReadVariableOp*while/lstm_cell_41/MatMul_1/ReadVariableOp: 
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
while_cond_353947
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_353947___redundant_placeholder04
0while_while_cond_353947___redundant_placeholder14
0while_while_cond_353947___redundant_placeholder24
0while_while_cond_353947___redundant_placeholder3
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
while_cond_353527
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_353527___redundant_placeholder04
0while_while_cond_353527___redundant_placeholder14
0while_while_cond_353527___redundant_placeholder24
0while_while_cond_353527___redundant_placeholder3
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
�F
�
C__inference_lstm_21_layer_call_and_return_conditional_losses_354227

inputs&
lstm_cell_41_354145:	@�&
lstm_cell_41_354147:	 �"
lstm_cell_41_354149:	�
identity��$lstm_cell_41/StatefulPartitionedCall�whileD
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
$lstm_cell_41/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_41_354145lstm_cell_41_354147lstm_cell_41_354149*
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
H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_3540802&
$lstm_cell_41/StatefulPartitionedCall�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_41_354145lstm_cell_41_354147lstm_cell_41_354149*
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
while_body_354158*
condR
while_cond_354157*K
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
NoOpNoOp%^lstm_cell_41/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������@: : : 2L
$lstm_cell_41/StatefulPartitionedCall$lstm_cell_41/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������@
 
_user_specified_nameinputs
�
�
(__inference_lstm_20_layer_call_fn_356068
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
C__inference_lstm_20_layer_call_and_return_conditional_losses_3533872
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
�?
�
while_body_356168
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_40_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_40_matmul_1_readvariableop_resource_0:	@�C
4while_lstm_cell_40_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_40_matmul_readvariableop_resource:	�F
3while_lstm_cell_40_matmul_1_readvariableop_resource:	@�A
2while_lstm_cell_40_biasadd_readvariableop_resource:	���)while/lstm_cell_40/BiasAdd/ReadVariableOp�(while/lstm_cell_40/MatMul/ReadVariableOp�*while/lstm_cell_40/MatMul_1/ReadVariableOp�
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
(while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_40_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02*
(while/lstm_cell_40/MatMul/ReadVariableOp�
while/lstm_cell_40/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_40/MatMul�
*while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype02,
*while/lstm_cell_40/MatMul_1/ReadVariableOp�
while/lstm_cell_40/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_40/MatMul_1�
while/lstm_cell_40/addAddV2#while/lstm_cell_40/MatMul:product:0%while/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_40/add�
)while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_40/BiasAdd/ReadVariableOp�
while/lstm_cell_40/BiasAddBiasAddwhile/lstm_cell_40/add:z:01while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_40/BiasAdd�
"while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_40/split/split_dim�
while/lstm_cell_40/splitSplit+while/lstm_cell_40/split/split_dim:output:0#while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
while/lstm_cell_40/split�
while/lstm_cell_40/SigmoidSigmoid!while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/Sigmoid�
while/lstm_cell_40/Sigmoid_1Sigmoid!while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/Sigmoid_1�
while/lstm_cell_40/mulMul while/lstm_cell_40/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/mul�
while/lstm_cell_40/ReluRelu!while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/Relu�
while/lstm_cell_40/mul_1Mulwhile/lstm_cell_40/Sigmoid:y:0%while/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/mul_1�
while/lstm_cell_40/add_1AddV2while/lstm_cell_40/mul:z:0while/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/add_1�
while/lstm_cell_40/Sigmoid_2Sigmoid!while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/Sigmoid_2�
while/lstm_cell_40/Relu_1Reluwhile/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/Relu_1�
while/lstm_cell_40/mul_2Mul while/lstm_cell_40/Sigmoid_2:y:0'while/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_40/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_40/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������@2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_40/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������@2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_40_biasadd_readvariableop_resource4while_lstm_cell_40_biasadd_readvariableop_resource_0"l
3while_lstm_cell_40_matmul_1_readvariableop_resource5while_lstm_cell_40_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_40_matmul_readvariableop_resource3while_lstm_cell_40_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2V
)while/lstm_cell_40/BiasAdd/ReadVariableOp)while/lstm_cell_40/BiasAdd/ReadVariableOp2T
(while/lstm_cell_40/MatMul/ReadVariableOp(while/lstm_cell_40/MatMul/ReadVariableOp2X
*while/lstm_cell_40/MatMul_1/ReadVariableOp*while/lstm_cell_40/MatMul_1/ReadVariableOp: 
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
�%
�
while_body_353528
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_40_353552_0:	�.
while_lstm_cell_40_353554_0:	@�*
while_lstm_cell_40_353556_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_40_353552:	�,
while_lstm_cell_40_353554:	@�(
while_lstm_cell_40_353556:	���*while/lstm_cell_40/StatefulPartitionedCall�
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
*while/lstm_cell_40/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_40_353552_0while_lstm_cell_40_353554_0while_lstm_cell_40_353556_0*
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
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_3534502,
*while/lstm_cell_40/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_40/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_40/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������@2
while/Identity_4�
while/Identity_5Identity3while/lstm_cell_40/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������@2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_40/StatefulPartitionedCall*"
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
while_lstm_cell_40_353552while_lstm_cell_40_353552_0"8
while_lstm_cell_40_353554while_lstm_cell_40_353554_0"8
while_lstm_cell_40_353556while_lstm_cell_40_353556_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2X
*while/lstm_cell_40/StatefulPartitionedCall*while/lstm_cell_40/StatefulPartitionedCall: 
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
.__inference_sequential_10_layer_call_fn_355419

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
I__inference_sequential_10_layer_call_and_return_conditional_losses_3548362
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
while_body_354968
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_41_matmul_readvariableop_resource_0:	@�H
5while_lstm_cell_41_matmul_1_readvariableop_resource_0:	 �C
4while_lstm_cell_41_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_41_matmul_readvariableop_resource:	@�F
3while_lstm_cell_41_matmul_1_readvariableop_resource:	 �A
2while_lstm_cell_41_biasadd_readvariableop_resource:	���)while/lstm_cell_41/BiasAdd/ReadVariableOp�(while/lstm_cell_41/MatMul/ReadVariableOp�*while/lstm_cell_41/MatMul_1/ReadVariableOp�
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
(while/lstm_cell_41/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_41_matmul_readvariableop_resource_0*
_output_shapes
:	@�*
dtype02*
(while/lstm_cell_41/MatMul/ReadVariableOp�
while/lstm_cell_41/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_41/MatMul�
*while/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02,
*while/lstm_cell_41/MatMul_1/ReadVariableOp�
while/lstm_cell_41/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_41/MatMul_1�
while/lstm_cell_41/addAddV2#while/lstm_cell_41/MatMul:product:0%while/lstm_cell_41/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_41/add�
)while/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_41_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_41/BiasAdd/ReadVariableOp�
while/lstm_cell_41/BiasAddBiasAddwhile/lstm_cell_41/add:z:01while/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_41/BiasAdd�
"while/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_41/split/split_dim�
while/lstm_cell_41/splitSplit+while/lstm_cell_41/split/split_dim:output:0#while/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
while/lstm_cell_41/split�
while/lstm_cell_41/SigmoidSigmoid!while/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/Sigmoid�
while/lstm_cell_41/Sigmoid_1Sigmoid!while/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/Sigmoid_1�
while/lstm_cell_41/mulMul while/lstm_cell_41/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/mul�
while/lstm_cell_41/ReluRelu!while/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/Relu�
while/lstm_cell_41/mul_1Mulwhile/lstm_cell_41/Sigmoid:y:0%while/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/mul_1�
while/lstm_cell_41/add_1AddV2while/lstm_cell_41/mul:z:0while/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/add_1�
while/lstm_cell_41/Sigmoid_2Sigmoid!while/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/Sigmoid_2�
while/lstm_cell_41/Relu_1Reluwhile/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/Relu_1�
while/lstm_cell_41/mul_2Mul while/lstm_cell_41/Sigmoid_2:y:0'while/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_41/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_41/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:��������� 2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_41/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:��������� 2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_41/BiasAdd/ReadVariableOp)^while/lstm_cell_41/MatMul/ReadVariableOp+^while/lstm_cell_41/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_41_biasadd_readvariableop_resource4while_lstm_cell_41_biasadd_readvariableop_resource_0"l
3while_lstm_cell_41_matmul_1_readvariableop_resource5while_lstm_cell_41_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_41_matmul_readvariableop_resource3while_lstm_cell_41_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2V
)while/lstm_cell_41/BiasAdd/ReadVariableOp)while/lstm_cell_41/BiasAdd/ReadVariableOp2T
(while/lstm_cell_41/MatMul/ReadVariableOp(while/lstm_cell_41/MatMul/ReadVariableOp2X
*while/lstm_cell_41/MatMul_1/ReadVariableOp*while/lstm_cell_41/MatMul_1/ReadVariableOp: 
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
(__inference_lstm_21_layer_call_fn_356749

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
C__inference_lstm_21_layer_call_and_return_conditional_losses_3550522
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
�^
�
'sequential_10_lstm_21_while_body_353138H
Dsequential_10_lstm_21_while_sequential_10_lstm_21_while_loop_counterN
Jsequential_10_lstm_21_while_sequential_10_lstm_21_while_maximum_iterations+
'sequential_10_lstm_21_while_placeholder-
)sequential_10_lstm_21_while_placeholder_1-
)sequential_10_lstm_21_while_placeholder_2-
)sequential_10_lstm_21_while_placeholder_3G
Csequential_10_lstm_21_while_sequential_10_lstm_21_strided_slice_1_0�
sequential_10_lstm_21_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_21_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_10_lstm_21_while_lstm_cell_41_matmul_readvariableop_resource_0:	@�^
Ksequential_10_lstm_21_while_lstm_cell_41_matmul_1_readvariableop_resource_0:	 �Y
Jsequential_10_lstm_21_while_lstm_cell_41_biasadd_readvariableop_resource_0:	�(
$sequential_10_lstm_21_while_identity*
&sequential_10_lstm_21_while_identity_1*
&sequential_10_lstm_21_while_identity_2*
&sequential_10_lstm_21_while_identity_3*
&sequential_10_lstm_21_while_identity_4*
&sequential_10_lstm_21_while_identity_5E
Asequential_10_lstm_21_while_sequential_10_lstm_21_strided_slice_1�
}sequential_10_lstm_21_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_21_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_10_lstm_21_while_lstm_cell_41_matmul_readvariableop_resource:	@�\
Isequential_10_lstm_21_while_lstm_cell_41_matmul_1_readvariableop_resource:	 �W
Hsequential_10_lstm_21_while_lstm_cell_41_biasadd_readvariableop_resource:	���?sequential_10/lstm_21/while/lstm_cell_41/BiasAdd/ReadVariableOp�>sequential_10/lstm_21/while/lstm_cell_41/MatMul/ReadVariableOp�@sequential_10/lstm_21/while/lstm_cell_41/MatMul_1/ReadVariableOp�
Msequential_10/lstm_21/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2O
Msequential_10/lstm_21/while/TensorArrayV2Read/TensorListGetItem/element_shape�
?sequential_10/lstm_21/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_10_lstm_21_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_21_tensorarrayunstack_tensorlistfromtensor_0'sequential_10_lstm_21_while_placeholderVsequential_10/lstm_21/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype02A
?sequential_10/lstm_21/while/TensorArrayV2Read/TensorListGetItem�
>sequential_10/lstm_21/while/lstm_cell_41/MatMul/ReadVariableOpReadVariableOpIsequential_10_lstm_21_while_lstm_cell_41_matmul_readvariableop_resource_0*
_output_shapes
:	@�*
dtype02@
>sequential_10/lstm_21/while/lstm_cell_41/MatMul/ReadVariableOp�
/sequential_10/lstm_21/while/lstm_cell_41/MatMulMatMulFsequential_10/lstm_21/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_10/lstm_21/while/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������21
/sequential_10/lstm_21/while/lstm_cell_41/MatMul�
@sequential_10/lstm_21/while/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOpKsequential_10_lstm_21_while_lstm_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02B
@sequential_10/lstm_21/while/lstm_cell_41/MatMul_1/ReadVariableOp�
1sequential_10/lstm_21/while/lstm_cell_41/MatMul_1MatMul)sequential_10_lstm_21_while_placeholder_2Hsequential_10/lstm_21/while/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������23
1sequential_10/lstm_21/while/lstm_cell_41/MatMul_1�
,sequential_10/lstm_21/while/lstm_cell_41/addAddV29sequential_10/lstm_21/while/lstm_cell_41/MatMul:product:0;sequential_10/lstm_21/while/lstm_cell_41/MatMul_1:product:0*
T0*(
_output_shapes
:����������2.
,sequential_10/lstm_21/while/lstm_cell_41/add�
?sequential_10/lstm_21/while/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOpJsequential_10_lstm_21_while_lstm_cell_41_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02A
?sequential_10/lstm_21/while/lstm_cell_41/BiasAdd/ReadVariableOp�
0sequential_10/lstm_21/while/lstm_cell_41/BiasAddBiasAdd0sequential_10/lstm_21/while/lstm_cell_41/add:z:0Gsequential_10/lstm_21/while/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������22
0sequential_10/lstm_21/while/lstm_cell_41/BiasAdd�
8sequential_10/lstm_21/while/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_10/lstm_21/while/lstm_cell_41/split/split_dim�
.sequential_10/lstm_21/while/lstm_cell_41/splitSplitAsequential_10/lstm_21/while/lstm_cell_41/split/split_dim:output:09sequential_10/lstm_21/while/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split20
.sequential_10/lstm_21/while/lstm_cell_41/split�
0sequential_10/lstm_21/while/lstm_cell_41/SigmoidSigmoid7sequential_10/lstm_21/while/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:��������� 22
0sequential_10/lstm_21/while/lstm_cell_41/Sigmoid�
2sequential_10/lstm_21/while/lstm_cell_41/Sigmoid_1Sigmoid7sequential_10/lstm_21/while/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:��������� 24
2sequential_10/lstm_21/while/lstm_cell_41/Sigmoid_1�
,sequential_10/lstm_21/while/lstm_cell_41/mulMul6sequential_10/lstm_21/while/lstm_cell_41/Sigmoid_1:y:0)sequential_10_lstm_21_while_placeholder_3*
T0*'
_output_shapes
:��������� 2.
,sequential_10/lstm_21/while/lstm_cell_41/mul�
-sequential_10/lstm_21/while/lstm_cell_41/ReluRelu7sequential_10/lstm_21/while/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:��������� 2/
-sequential_10/lstm_21/while/lstm_cell_41/Relu�
.sequential_10/lstm_21/while/lstm_cell_41/mul_1Mul4sequential_10/lstm_21/while/lstm_cell_41/Sigmoid:y:0;sequential_10/lstm_21/while/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:��������� 20
.sequential_10/lstm_21/while/lstm_cell_41/mul_1�
.sequential_10/lstm_21/while/lstm_cell_41/add_1AddV20sequential_10/lstm_21/while/lstm_cell_41/mul:z:02sequential_10/lstm_21/while/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:��������� 20
.sequential_10/lstm_21/while/lstm_cell_41/add_1�
2sequential_10/lstm_21/while/lstm_cell_41/Sigmoid_2Sigmoid7sequential_10/lstm_21/while/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:��������� 24
2sequential_10/lstm_21/while/lstm_cell_41/Sigmoid_2�
/sequential_10/lstm_21/while/lstm_cell_41/Relu_1Relu2sequential_10/lstm_21/while/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:��������� 21
/sequential_10/lstm_21/while/lstm_cell_41/Relu_1�
.sequential_10/lstm_21/while/lstm_cell_41/mul_2Mul6sequential_10/lstm_21/while/lstm_cell_41/Sigmoid_2:y:0=sequential_10/lstm_21/while/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 20
.sequential_10/lstm_21/while/lstm_cell_41/mul_2�
@sequential_10/lstm_21/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_10_lstm_21_while_placeholder_1'sequential_10_lstm_21_while_placeholder2sequential_10/lstm_21/while/lstm_cell_41/mul_2:z:0*
_output_shapes
: *
element_dtype02B
@sequential_10/lstm_21/while/TensorArrayV2Write/TensorListSetItem�
!sequential_10/lstm_21/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_10/lstm_21/while/add/y�
sequential_10/lstm_21/while/addAddV2'sequential_10_lstm_21_while_placeholder*sequential_10/lstm_21/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_10/lstm_21/while/add�
#sequential_10/lstm_21/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_10/lstm_21/while/add_1/y�
!sequential_10/lstm_21/while/add_1AddV2Dsequential_10_lstm_21_while_sequential_10_lstm_21_while_loop_counter,sequential_10/lstm_21/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_10/lstm_21/while/add_1�
$sequential_10/lstm_21/while/IdentityIdentity%sequential_10/lstm_21/while/add_1:z:0!^sequential_10/lstm_21/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_10/lstm_21/while/Identity�
&sequential_10/lstm_21/while/Identity_1IdentityJsequential_10_lstm_21_while_sequential_10_lstm_21_while_maximum_iterations!^sequential_10/lstm_21/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_10/lstm_21/while/Identity_1�
&sequential_10/lstm_21/while/Identity_2Identity#sequential_10/lstm_21/while/add:z:0!^sequential_10/lstm_21/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_10/lstm_21/while/Identity_2�
&sequential_10/lstm_21/while/Identity_3IdentityPsequential_10/lstm_21/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_10/lstm_21/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_10/lstm_21/while/Identity_3�
&sequential_10/lstm_21/while/Identity_4Identity2sequential_10/lstm_21/while/lstm_cell_41/mul_2:z:0!^sequential_10/lstm_21/while/NoOp*
T0*'
_output_shapes
:��������� 2(
&sequential_10/lstm_21/while/Identity_4�
&sequential_10/lstm_21/while/Identity_5Identity2sequential_10/lstm_21/while/lstm_cell_41/add_1:z:0!^sequential_10/lstm_21/while/NoOp*
T0*'
_output_shapes
:��������� 2(
&sequential_10/lstm_21/while/Identity_5�
 sequential_10/lstm_21/while/NoOpNoOp@^sequential_10/lstm_21/while/lstm_cell_41/BiasAdd/ReadVariableOp?^sequential_10/lstm_21/while/lstm_cell_41/MatMul/ReadVariableOpA^sequential_10/lstm_21/while/lstm_cell_41/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2"
 sequential_10/lstm_21/while/NoOp"U
$sequential_10_lstm_21_while_identity-sequential_10/lstm_21/while/Identity:output:0"Y
&sequential_10_lstm_21_while_identity_1/sequential_10/lstm_21/while/Identity_1:output:0"Y
&sequential_10_lstm_21_while_identity_2/sequential_10/lstm_21/while/Identity_2:output:0"Y
&sequential_10_lstm_21_while_identity_3/sequential_10/lstm_21/while/Identity_3:output:0"Y
&sequential_10_lstm_21_while_identity_4/sequential_10/lstm_21/while/Identity_4:output:0"Y
&sequential_10_lstm_21_while_identity_5/sequential_10/lstm_21/while/Identity_5:output:0"�
Hsequential_10_lstm_21_while_lstm_cell_41_biasadd_readvariableop_resourceJsequential_10_lstm_21_while_lstm_cell_41_biasadd_readvariableop_resource_0"�
Isequential_10_lstm_21_while_lstm_cell_41_matmul_1_readvariableop_resourceKsequential_10_lstm_21_while_lstm_cell_41_matmul_1_readvariableop_resource_0"�
Gsequential_10_lstm_21_while_lstm_cell_41_matmul_readvariableop_resourceIsequential_10_lstm_21_while_lstm_cell_41_matmul_readvariableop_resource_0"�
Asequential_10_lstm_21_while_sequential_10_lstm_21_strided_slice_1Csequential_10_lstm_21_while_sequential_10_lstm_21_strided_slice_1_0"�
}sequential_10_lstm_21_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_21_tensorarrayunstack_tensorlistfromtensorsequential_10_lstm_21_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_21_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2�
?sequential_10/lstm_21/while/lstm_cell_41/BiasAdd/ReadVariableOp?sequential_10/lstm_21/while/lstm_cell_41/BiasAdd/ReadVariableOp2�
>sequential_10/lstm_21/while/lstm_cell_41/MatMul/ReadVariableOp>sequential_10/lstm_21/while/lstm_cell_41/MatMul/ReadVariableOp2�
@sequential_10/lstm_21/while/lstm_cell_41/MatMul_1/ReadVariableOp@sequential_10/lstm_21/while/lstm_cell_41/MatMul_1/ReadVariableOp: 
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
(__inference_lstm_21_layer_call_fn_356738

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
C__inference_lstm_21_layer_call_and_return_conditional_losses_3548042
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
��
�
I__inference_sequential_10_layer_call_and_return_conditional_losses_355745

inputsF
3lstm_20_lstm_cell_40_matmul_readvariableop_resource:	�H
5lstm_20_lstm_cell_40_matmul_1_readvariableop_resource:	@�C
4lstm_20_lstm_cell_40_biasadd_readvariableop_resource:	�F
3lstm_21_lstm_cell_41_matmul_readvariableop_resource:	@�H
5lstm_21_lstm_cell_41_matmul_1_readvariableop_resource:	 �C
4lstm_21_lstm_cell_41_biasadd_readvariableop_resource:	�9
'dense_10_matmul_readvariableop_resource: 6
(dense_10_biasadd_readvariableop_resource:
identity��dense_10/BiasAdd/ReadVariableOp�dense_10/MatMul/ReadVariableOp�+lstm_20/lstm_cell_40/BiasAdd/ReadVariableOp�*lstm_20/lstm_cell_40/MatMul/ReadVariableOp�,lstm_20/lstm_cell_40/MatMul_1/ReadVariableOp�lstm_20/while�+lstm_21/lstm_cell_41/BiasAdd/ReadVariableOp�*lstm_21/lstm_cell_41/MatMul/ReadVariableOp�,lstm_21/lstm_cell_41/MatMul_1/ReadVariableOp�lstm_21/whileT
lstm_20/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_20/Shape�
lstm_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_20/strided_slice/stack�
lstm_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_20/strided_slice/stack_1�
lstm_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_20/strided_slice/stack_2�
lstm_20/strided_sliceStridedSlicelstm_20/Shape:output:0$lstm_20/strided_slice/stack:output:0&lstm_20/strided_slice/stack_1:output:0&lstm_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_20/strided_slicel
lstm_20/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_20/zeros/mul/y�
lstm_20/zeros/mulMullstm_20/strided_slice:output:0lstm_20/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_20/zeros/mulo
lstm_20/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_20/zeros/Less/y�
lstm_20/zeros/LessLesslstm_20/zeros/mul:z:0lstm_20/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_20/zeros/Lessr
lstm_20/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_20/zeros/packed/1�
lstm_20/zeros/packedPacklstm_20/strided_slice:output:0lstm_20/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_20/zeros/packedo
lstm_20/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_20/zeros/Const�
lstm_20/zerosFilllstm_20/zeros/packed:output:0lstm_20/zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
lstm_20/zerosp
lstm_20/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_20/zeros_1/mul/y�
lstm_20/zeros_1/mulMullstm_20/strided_slice:output:0lstm_20/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_20/zeros_1/muls
lstm_20/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_20/zeros_1/Less/y�
lstm_20/zeros_1/LessLesslstm_20/zeros_1/mul:z:0lstm_20/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_20/zeros_1/Lessv
lstm_20/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_20/zeros_1/packed/1�
lstm_20/zeros_1/packedPacklstm_20/strided_slice:output:0!lstm_20/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_20/zeros_1/packeds
lstm_20/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_20/zeros_1/Const�
lstm_20/zeros_1Filllstm_20/zeros_1/packed:output:0lstm_20/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������@2
lstm_20/zeros_1�
lstm_20/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_20/transpose/perm�
lstm_20/transpose	Transposeinputslstm_20/transpose/perm:output:0*
T0*+
_output_shapes
:���������2
lstm_20/transposeg
lstm_20/Shape_1Shapelstm_20/transpose:y:0*
T0*
_output_shapes
:2
lstm_20/Shape_1�
lstm_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_20/strided_slice_1/stack�
lstm_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_20/strided_slice_1/stack_1�
lstm_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_20/strided_slice_1/stack_2�
lstm_20/strided_slice_1StridedSlicelstm_20/Shape_1:output:0&lstm_20/strided_slice_1/stack:output:0(lstm_20/strided_slice_1/stack_1:output:0(lstm_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_20/strided_slice_1�
#lstm_20/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2%
#lstm_20/TensorArrayV2/element_shape�
lstm_20/TensorArrayV2TensorListReserve,lstm_20/TensorArrayV2/element_shape:output:0 lstm_20/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_20/TensorArrayV2�
=lstm_20/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2?
=lstm_20/TensorArrayUnstack/TensorListFromTensor/element_shape�
/lstm_20/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_20/transpose:y:0Flstm_20/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_20/TensorArrayUnstack/TensorListFromTensor�
lstm_20/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_20/strided_slice_2/stack�
lstm_20/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_20/strided_slice_2/stack_1�
lstm_20/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_20/strided_slice_2/stack_2�
lstm_20/strided_slice_2StridedSlicelstm_20/transpose:y:0&lstm_20/strided_slice_2/stack:output:0(lstm_20/strided_slice_2/stack_1:output:0(lstm_20/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
lstm_20/strided_slice_2�
*lstm_20/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp3lstm_20_lstm_cell_40_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02,
*lstm_20/lstm_cell_40/MatMul/ReadVariableOp�
lstm_20/lstm_cell_40/MatMulMatMul lstm_20/strided_slice_2:output:02lstm_20/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_20/lstm_cell_40/MatMul�
,lstm_20/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp5lstm_20_lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype02.
,lstm_20/lstm_cell_40/MatMul_1/ReadVariableOp�
lstm_20/lstm_cell_40/MatMul_1MatMullstm_20/zeros:output:04lstm_20/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_20/lstm_cell_40/MatMul_1�
lstm_20/lstm_cell_40/addAddV2%lstm_20/lstm_cell_40/MatMul:product:0'lstm_20/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_20/lstm_cell_40/add�
+lstm_20/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp4lstm_20_lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02-
+lstm_20/lstm_cell_40/BiasAdd/ReadVariableOp�
lstm_20/lstm_cell_40/BiasAddBiasAddlstm_20/lstm_cell_40/add:z:03lstm_20/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_20/lstm_cell_40/BiasAdd�
$lstm_20/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_20/lstm_cell_40/split/split_dim�
lstm_20/lstm_cell_40/splitSplit-lstm_20/lstm_cell_40/split/split_dim:output:0%lstm_20/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
lstm_20/lstm_cell_40/split�
lstm_20/lstm_cell_40/SigmoidSigmoid#lstm_20/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:���������@2
lstm_20/lstm_cell_40/Sigmoid�
lstm_20/lstm_cell_40/Sigmoid_1Sigmoid#lstm_20/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:���������@2 
lstm_20/lstm_cell_40/Sigmoid_1�
lstm_20/lstm_cell_40/mulMul"lstm_20/lstm_cell_40/Sigmoid_1:y:0lstm_20/zeros_1:output:0*
T0*'
_output_shapes
:���������@2
lstm_20/lstm_cell_40/mul�
lstm_20/lstm_cell_40/ReluRelu#lstm_20/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:���������@2
lstm_20/lstm_cell_40/Relu�
lstm_20/lstm_cell_40/mul_1Mul lstm_20/lstm_cell_40/Sigmoid:y:0'lstm_20/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:���������@2
lstm_20/lstm_cell_40/mul_1�
lstm_20/lstm_cell_40/add_1AddV2lstm_20/lstm_cell_40/mul:z:0lstm_20/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_20/lstm_cell_40/add_1�
lstm_20/lstm_cell_40/Sigmoid_2Sigmoid#lstm_20/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:���������@2 
lstm_20/lstm_cell_40/Sigmoid_2�
lstm_20/lstm_cell_40/Relu_1Relulstm_20/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_20/lstm_cell_40/Relu_1�
lstm_20/lstm_cell_40/mul_2Mul"lstm_20/lstm_cell_40/Sigmoid_2:y:0)lstm_20/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
lstm_20/lstm_cell_40/mul_2�
%lstm_20/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2'
%lstm_20/TensorArrayV2_1/element_shape�
lstm_20/TensorArrayV2_1TensorListReserve.lstm_20/TensorArrayV2_1/element_shape:output:0 lstm_20/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_20/TensorArrayV2_1^
lstm_20/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_20/time�
 lstm_20/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2"
 lstm_20/while/maximum_iterationsz
lstm_20/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_20/while/loop_counter�
lstm_20/whileWhile#lstm_20/while/loop_counter:output:0)lstm_20/while/maximum_iterations:output:0lstm_20/time:output:0 lstm_20/TensorArrayV2_1:handle:0lstm_20/zeros:output:0lstm_20/zeros_1:output:0 lstm_20/strided_slice_1:output:0?lstm_20/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_20_lstm_cell_40_matmul_readvariableop_resource5lstm_20_lstm_cell_40_matmul_1_readvariableop_resource4lstm_20_lstm_cell_40_biasadd_readvariableop_resource*
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
lstm_20_while_body_355507*%
condR
lstm_20_while_cond_355506*K
output_shapes:
8: : : : :���������@:���������@: : : : : *
parallel_iterations 2
lstm_20/while�
8lstm_20/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2:
8lstm_20/TensorArrayV2Stack/TensorListStack/element_shape�
*lstm_20/TensorArrayV2Stack/TensorListStackTensorListStacklstm_20/while:output:3Alstm_20/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype02,
*lstm_20/TensorArrayV2Stack/TensorListStack�
lstm_20/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
lstm_20/strided_slice_3/stack�
lstm_20/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_20/strided_slice_3/stack_1�
lstm_20/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_20/strided_slice_3/stack_2�
lstm_20/strided_slice_3StridedSlice3lstm_20/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_20/strided_slice_3/stack:output:0(lstm_20/strided_slice_3/stack_1:output:0(lstm_20/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
lstm_20/strided_slice_3�
lstm_20/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_20/transpose_1/perm�
lstm_20/transpose_1	Transpose3lstm_20/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_20/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@2
lstm_20/transpose_1v
lstm_20/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_20/runtimee
lstm_21/ShapeShapelstm_20/transpose_1:y:0*
T0*
_output_shapes
:2
lstm_21/Shape�
lstm_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_21/strided_slice/stack�
lstm_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_21/strided_slice/stack_1�
lstm_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_21/strided_slice/stack_2�
lstm_21/strided_sliceStridedSlicelstm_21/Shape:output:0$lstm_21/strided_slice/stack:output:0&lstm_21/strided_slice/stack_1:output:0&lstm_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_21/strided_slicel
lstm_21/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_21/zeros/mul/y�
lstm_21/zeros/mulMullstm_21/strided_slice:output:0lstm_21/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_21/zeros/mulo
lstm_21/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_21/zeros/Less/y�
lstm_21/zeros/LessLesslstm_21/zeros/mul:z:0lstm_21/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_21/zeros/Lessr
lstm_21/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_21/zeros/packed/1�
lstm_21/zeros/packedPacklstm_21/strided_slice:output:0lstm_21/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_21/zeros/packedo
lstm_21/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_21/zeros/Const�
lstm_21/zerosFilllstm_21/zeros/packed:output:0lstm_21/zeros/Const:output:0*
T0*'
_output_shapes
:��������� 2
lstm_21/zerosp
lstm_21/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_21/zeros_1/mul/y�
lstm_21/zeros_1/mulMullstm_21/strided_slice:output:0lstm_21/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_21/zeros_1/muls
lstm_21/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
lstm_21/zeros_1/Less/y�
lstm_21/zeros_1/LessLesslstm_21/zeros_1/mul:z:0lstm_21/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_21/zeros_1/Lessv
lstm_21/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_21/zeros_1/packed/1�
lstm_21/zeros_1/packedPacklstm_21/strided_slice:output:0!lstm_21/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_21/zeros_1/packeds
lstm_21/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_21/zeros_1/Const�
lstm_21/zeros_1Filllstm_21/zeros_1/packed:output:0lstm_21/zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� 2
lstm_21/zeros_1�
lstm_21/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_21/transpose/perm�
lstm_21/transpose	Transposelstm_20/transpose_1:y:0lstm_21/transpose/perm:output:0*
T0*+
_output_shapes
:���������@2
lstm_21/transposeg
lstm_21/Shape_1Shapelstm_21/transpose:y:0*
T0*
_output_shapes
:2
lstm_21/Shape_1�
lstm_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_21/strided_slice_1/stack�
lstm_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_21/strided_slice_1/stack_1�
lstm_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_21/strided_slice_1/stack_2�
lstm_21/strided_slice_1StridedSlicelstm_21/Shape_1:output:0&lstm_21/strided_slice_1/stack:output:0(lstm_21/strided_slice_1/stack_1:output:0(lstm_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_21/strided_slice_1�
#lstm_21/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2%
#lstm_21/TensorArrayV2/element_shape�
lstm_21/TensorArrayV2TensorListReserve,lstm_21/TensorArrayV2/element_shape:output:0 lstm_21/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_21/TensorArrayV2�
=lstm_21/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2?
=lstm_21/TensorArrayUnstack/TensorListFromTensor/element_shape�
/lstm_21/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_21/transpose:y:0Flstm_21/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_21/TensorArrayUnstack/TensorListFromTensor�
lstm_21/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_21/strided_slice_2/stack�
lstm_21/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_21/strided_slice_2/stack_1�
lstm_21/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_21/strided_slice_2/stack_2�
lstm_21/strided_slice_2StridedSlicelstm_21/transpose:y:0&lstm_21/strided_slice_2/stack:output:0(lstm_21/strided_slice_2/stack_1:output:0(lstm_21/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
lstm_21/strided_slice_2�
*lstm_21/lstm_cell_41/MatMul/ReadVariableOpReadVariableOp3lstm_21_lstm_cell_41_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype02,
*lstm_21/lstm_cell_41/MatMul/ReadVariableOp�
lstm_21/lstm_cell_41/MatMulMatMul lstm_21/strided_slice_2:output:02lstm_21/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_21/lstm_cell_41/MatMul�
,lstm_21/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp5lstm_21_lstm_cell_41_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02.
,lstm_21/lstm_cell_41/MatMul_1/ReadVariableOp�
lstm_21/lstm_cell_41/MatMul_1MatMullstm_21/zeros:output:04lstm_21/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_21/lstm_cell_41/MatMul_1�
lstm_21/lstm_cell_41/addAddV2%lstm_21/lstm_cell_41/MatMul:product:0'lstm_21/lstm_cell_41/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_21/lstm_cell_41/add�
+lstm_21/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp4lstm_21_lstm_cell_41_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02-
+lstm_21/lstm_cell_41/BiasAdd/ReadVariableOp�
lstm_21/lstm_cell_41/BiasAddBiasAddlstm_21/lstm_cell_41/add:z:03lstm_21/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_21/lstm_cell_41/BiasAdd�
$lstm_21/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_21/lstm_cell_41/split/split_dim�
lstm_21/lstm_cell_41/splitSplit-lstm_21/lstm_cell_41/split/split_dim:output:0%lstm_21/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
lstm_21/lstm_cell_41/split�
lstm_21/lstm_cell_41/SigmoidSigmoid#lstm_21/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:��������� 2
lstm_21/lstm_cell_41/Sigmoid�
lstm_21/lstm_cell_41/Sigmoid_1Sigmoid#lstm_21/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:��������� 2 
lstm_21/lstm_cell_41/Sigmoid_1�
lstm_21/lstm_cell_41/mulMul"lstm_21/lstm_cell_41/Sigmoid_1:y:0lstm_21/zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
lstm_21/lstm_cell_41/mul�
lstm_21/lstm_cell_41/ReluRelu#lstm_21/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:��������� 2
lstm_21/lstm_cell_41/Relu�
lstm_21/lstm_cell_41/mul_1Mul lstm_21/lstm_cell_41/Sigmoid:y:0'lstm_21/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:��������� 2
lstm_21/lstm_cell_41/mul_1�
lstm_21/lstm_cell_41/add_1AddV2lstm_21/lstm_cell_41/mul:z:0lstm_21/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
lstm_21/lstm_cell_41/add_1�
lstm_21/lstm_cell_41/Sigmoid_2Sigmoid#lstm_21/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:��������� 2 
lstm_21/lstm_cell_41/Sigmoid_2�
lstm_21/lstm_cell_41/Relu_1Relulstm_21/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:��������� 2
lstm_21/lstm_cell_41/Relu_1�
lstm_21/lstm_cell_41/mul_2Mul"lstm_21/lstm_cell_41/Sigmoid_2:y:0)lstm_21/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2
lstm_21/lstm_cell_41/mul_2�
%lstm_21/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2'
%lstm_21/TensorArrayV2_1/element_shape�
lstm_21/TensorArrayV2_1TensorListReserve.lstm_21/TensorArrayV2_1/element_shape:output:0 lstm_21/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_21/TensorArrayV2_1^
lstm_21/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_21/time�
 lstm_21/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2"
 lstm_21/while/maximum_iterationsz
lstm_21/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_21/while/loop_counter�
lstm_21/whileWhile#lstm_21/while/loop_counter:output:0)lstm_21/while/maximum_iterations:output:0lstm_21/time:output:0 lstm_21/TensorArrayV2_1:handle:0lstm_21/zeros:output:0lstm_21/zeros_1:output:0 lstm_21/strided_slice_1:output:0?lstm_21/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_21_lstm_cell_41_matmul_readvariableop_resource5lstm_21_lstm_cell_41_matmul_1_readvariableop_resource4lstm_21_lstm_cell_41_biasadd_readvariableop_resource*
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
lstm_21_while_body_355654*%
condR
lstm_21_while_cond_355653*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations 2
lstm_21/while�
8lstm_21/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2:
8lstm_21/TensorArrayV2Stack/TensorListStack/element_shape�
*lstm_21/TensorArrayV2Stack/TensorListStackTensorListStacklstm_21/while:output:3Alstm_21/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype02,
*lstm_21/TensorArrayV2Stack/TensorListStack�
lstm_21/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
lstm_21/strided_slice_3/stack�
lstm_21/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_21/strided_slice_3/stack_1�
lstm_21/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_21/strided_slice_3/stack_2�
lstm_21/strided_slice_3StridedSlice3lstm_21/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_21/strided_slice_3/stack:output:0(lstm_21/strided_slice_3/stack_1:output:0(lstm_21/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
lstm_21/strided_slice_3�
lstm_21/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_21/transpose_1/perm�
lstm_21/transpose_1	Transpose3lstm_21/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_21/transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� 2
lstm_21/transpose_1v
lstm_21/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_21/runtime�
dropout_10/IdentityIdentity lstm_21/strided_slice_3:output:0*
T0*'
_output_shapes
:��������� 2
dropout_10/Identity�
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_10/MatMul/ReadVariableOp�
dense_10/MatMulMatMuldropout_10/Identity:output:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_10/MatMul�
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_10/BiasAdd/ReadVariableOp�
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_10/BiasAddt
IdentityIdentitydense_10/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp,^lstm_20/lstm_cell_40/BiasAdd/ReadVariableOp+^lstm_20/lstm_cell_40/MatMul/ReadVariableOp-^lstm_20/lstm_cell_40/MatMul_1/ReadVariableOp^lstm_20/while,^lstm_21/lstm_cell_41/BiasAdd/ReadVariableOp+^lstm_21/lstm_cell_41/MatMul/ReadVariableOp-^lstm_21/lstm_cell_41/MatMul_1/ReadVariableOp^lstm_21/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2Z
+lstm_20/lstm_cell_40/BiasAdd/ReadVariableOp+lstm_20/lstm_cell_40/BiasAdd/ReadVariableOp2X
*lstm_20/lstm_cell_40/MatMul/ReadVariableOp*lstm_20/lstm_cell_40/MatMul/ReadVariableOp2\
,lstm_20/lstm_cell_40/MatMul_1/ReadVariableOp,lstm_20/lstm_cell_40/MatMul_1/ReadVariableOp2
lstm_20/whilelstm_20/while2Z
+lstm_21/lstm_cell_41/BiasAdd/ReadVariableOp+lstm_21/lstm_cell_41/BiasAdd/ReadVariableOp2X
*lstm_21/lstm_cell_41/MatMul/ReadVariableOp*lstm_21/lstm_cell_41/MatMul/ReadVariableOp2\
,lstm_21/lstm_cell_41/MatMul_1/ReadVariableOp,lstm_21/lstm_cell_41/MatMul_1/ReadVariableOp2
lstm_21/whilelstm_21/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
(__inference_lstm_20_layer_call_fn_356101

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
C__inference_lstm_20_layer_call_and_return_conditional_losses_3552252
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
�J
�

lstm_20_while_body_355812,
(lstm_20_while_lstm_20_while_loop_counter2
.lstm_20_while_lstm_20_while_maximum_iterations
lstm_20_while_placeholder
lstm_20_while_placeholder_1
lstm_20_while_placeholder_2
lstm_20_while_placeholder_3+
'lstm_20_while_lstm_20_strided_slice_1_0g
clstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_20_while_lstm_cell_40_matmul_readvariableop_resource_0:	�P
=lstm_20_while_lstm_cell_40_matmul_1_readvariableop_resource_0:	@�K
<lstm_20_while_lstm_cell_40_biasadd_readvariableop_resource_0:	�
lstm_20_while_identity
lstm_20_while_identity_1
lstm_20_while_identity_2
lstm_20_while_identity_3
lstm_20_while_identity_4
lstm_20_while_identity_5)
%lstm_20_while_lstm_20_strided_slice_1e
alstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensorL
9lstm_20_while_lstm_cell_40_matmul_readvariableop_resource:	�N
;lstm_20_while_lstm_cell_40_matmul_1_readvariableop_resource:	@�I
:lstm_20_while_lstm_cell_40_biasadd_readvariableop_resource:	���1lstm_20/while/lstm_cell_40/BiasAdd/ReadVariableOp�0lstm_20/while/lstm_cell_40/MatMul/ReadVariableOp�2lstm_20/while/lstm_cell_40/MatMul_1/ReadVariableOp�
?lstm_20/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2A
?lstm_20/while/TensorArrayV2Read/TensorListGetItem/element_shape�
1lstm_20/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensor_0lstm_20_while_placeholderHlstm_20/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype023
1lstm_20/while/TensorArrayV2Read/TensorListGetItem�
0lstm_20/while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp;lstm_20_while_lstm_cell_40_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype022
0lstm_20/while/lstm_cell_40/MatMul/ReadVariableOp�
!lstm_20/while/lstm_cell_40/MatMulMatMul8lstm_20/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_20/while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2#
!lstm_20/while/lstm_cell_40/MatMul�
2lstm_20/while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp=lstm_20_while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype024
2lstm_20/while/lstm_cell_40/MatMul_1/ReadVariableOp�
#lstm_20/while/lstm_cell_40/MatMul_1MatMullstm_20_while_placeholder_2:lstm_20/while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2%
#lstm_20/while/lstm_cell_40/MatMul_1�
lstm_20/while/lstm_cell_40/addAddV2+lstm_20/while/lstm_cell_40/MatMul:product:0-lstm_20/while/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:����������2 
lstm_20/while/lstm_cell_40/add�
1lstm_20/while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp<lstm_20_while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype023
1lstm_20/while/lstm_cell_40/BiasAdd/ReadVariableOp�
"lstm_20/while/lstm_cell_40/BiasAddBiasAdd"lstm_20/while/lstm_cell_40/add:z:09lstm_20/while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2$
"lstm_20/while/lstm_cell_40/BiasAdd�
*lstm_20/while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_20/while/lstm_cell_40/split/split_dim�
 lstm_20/while/lstm_cell_40/splitSplit3lstm_20/while/lstm_cell_40/split/split_dim:output:0+lstm_20/while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2"
 lstm_20/while/lstm_cell_40/split�
"lstm_20/while/lstm_cell_40/SigmoidSigmoid)lstm_20/while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:���������@2$
"lstm_20/while/lstm_cell_40/Sigmoid�
$lstm_20/while/lstm_cell_40/Sigmoid_1Sigmoid)lstm_20/while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:���������@2&
$lstm_20/while/lstm_cell_40/Sigmoid_1�
lstm_20/while/lstm_cell_40/mulMul(lstm_20/while/lstm_cell_40/Sigmoid_1:y:0lstm_20_while_placeholder_3*
T0*'
_output_shapes
:���������@2 
lstm_20/while/lstm_cell_40/mul�
lstm_20/while/lstm_cell_40/ReluRelu)lstm_20/while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:���������@2!
lstm_20/while/lstm_cell_40/Relu�
 lstm_20/while/lstm_cell_40/mul_1Mul&lstm_20/while/lstm_cell_40/Sigmoid:y:0-lstm_20/while/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:���������@2"
 lstm_20/while/lstm_cell_40/mul_1�
 lstm_20/while/lstm_cell_40/add_1AddV2"lstm_20/while/lstm_cell_40/mul:z:0$lstm_20/while/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:���������@2"
 lstm_20/while/lstm_cell_40/add_1�
$lstm_20/while/lstm_cell_40/Sigmoid_2Sigmoid)lstm_20/while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:���������@2&
$lstm_20/while/lstm_cell_40/Sigmoid_2�
!lstm_20/while/lstm_cell_40/Relu_1Relu$lstm_20/while/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:���������@2#
!lstm_20/while/lstm_cell_40/Relu_1�
 lstm_20/while/lstm_cell_40/mul_2Mul(lstm_20/while/lstm_cell_40/Sigmoid_2:y:0/lstm_20/while/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2"
 lstm_20/while/lstm_cell_40/mul_2�
2lstm_20/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_20_while_placeholder_1lstm_20_while_placeholder$lstm_20/while/lstm_cell_40/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_20/while/TensorArrayV2Write/TensorListSetIteml
lstm_20/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_20/while/add/y�
lstm_20/while/addAddV2lstm_20_while_placeholderlstm_20/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_20/while/addp
lstm_20/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_20/while/add_1/y�
lstm_20/while/add_1AddV2(lstm_20_while_lstm_20_while_loop_counterlstm_20/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_20/while/add_1�
lstm_20/while/IdentityIdentitylstm_20/while/add_1:z:0^lstm_20/while/NoOp*
T0*
_output_shapes
: 2
lstm_20/while/Identity�
lstm_20/while/Identity_1Identity.lstm_20_while_lstm_20_while_maximum_iterations^lstm_20/while/NoOp*
T0*
_output_shapes
: 2
lstm_20/while/Identity_1�
lstm_20/while/Identity_2Identitylstm_20/while/add:z:0^lstm_20/while/NoOp*
T0*
_output_shapes
: 2
lstm_20/while/Identity_2�
lstm_20/while/Identity_3IdentityBlstm_20/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_20/while/NoOp*
T0*
_output_shapes
: 2
lstm_20/while/Identity_3�
lstm_20/while/Identity_4Identity$lstm_20/while/lstm_cell_40/mul_2:z:0^lstm_20/while/NoOp*
T0*'
_output_shapes
:���������@2
lstm_20/while/Identity_4�
lstm_20/while/Identity_5Identity$lstm_20/while/lstm_cell_40/add_1:z:0^lstm_20/while/NoOp*
T0*'
_output_shapes
:���������@2
lstm_20/while/Identity_5�
lstm_20/while/NoOpNoOp2^lstm_20/while/lstm_cell_40/BiasAdd/ReadVariableOp1^lstm_20/while/lstm_cell_40/MatMul/ReadVariableOp3^lstm_20/while/lstm_cell_40/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_20/while/NoOp"9
lstm_20_while_identitylstm_20/while/Identity:output:0"=
lstm_20_while_identity_1!lstm_20/while/Identity_1:output:0"=
lstm_20_while_identity_2!lstm_20/while/Identity_2:output:0"=
lstm_20_while_identity_3!lstm_20/while/Identity_3:output:0"=
lstm_20_while_identity_4!lstm_20/while/Identity_4:output:0"=
lstm_20_while_identity_5!lstm_20/while/Identity_5:output:0"P
%lstm_20_while_lstm_20_strided_slice_1'lstm_20_while_lstm_20_strided_slice_1_0"z
:lstm_20_while_lstm_cell_40_biasadd_readvariableop_resource<lstm_20_while_lstm_cell_40_biasadd_readvariableop_resource_0"|
;lstm_20_while_lstm_cell_40_matmul_1_readvariableop_resource=lstm_20_while_lstm_cell_40_matmul_1_readvariableop_resource_0"x
9lstm_20_while_lstm_cell_40_matmul_readvariableop_resource;lstm_20_while_lstm_cell_40_matmul_readvariableop_resource_0"�
alstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensorclstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2f
1lstm_20/while/lstm_cell_40/BiasAdd/ReadVariableOp1lstm_20/while/lstm_cell_40/BiasAdd/ReadVariableOp2d
0lstm_20/while/lstm_cell_40/MatMul/ReadVariableOp0lstm_20/while/lstm_cell_40/MatMul/ReadVariableOp2h
2lstm_20/while/lstm_cell_40/MatMul_1/ReadVariableOp2lstm_20/while/lstm_cell_40/MatMul_1/ReadVariableOp: 
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
�\
�
C__inference_lstm_21_layer_call_and_return_conditional_losses_357051
inputs_0>
+lstm_cell_41_matmul_readvariableop_resource:	@�@
-lstm_cell_41_matmul_1_readvariableop_resource:	 �;
,lstm_cell_41_biasadd_readvariableop_resource:	�
identity��#lstm_cell_41/BiasAdd/ReadVariableOp�"lstm_cell_41/MatMul/ReadVariableOp�$lstm_cell_41/MatMul_1/ReadVariableOp�whileF
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
"lstm_cell_41/MatMul/ReadVariableOpReadVariableOp+lstm_cell_41_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype02$
"lstm_cell_41/MatMul/ReadVariableOp�
lstm_cell_41/MatMulMatMulstrided_slice_2:output:0*lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_41/MatMul�
$lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_41_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02&
$lstm_cell_41/MatMul_1/ReadVariableOp�
lstm_cell_41/MatMul_1MatMulzeros:output:0,lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_41/MatMul_1�
lstm_cell_41/addAddV2lstm_cell_41/MatMul:product:0lstm_cell_41/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_41/add�
#lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_41_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_41/BiasAdd/ReadVariableOp�
lstm_cell_41/BiasAddBiasAddlstm_cell_41/add:z:0+lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_41/BiasAdd~
lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_41/split/split_dim�
lstm_cell_41/splitSplit%lstm_cell_41/split/split_dim:output:0lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
lstm_cell_41/split�
lstm_cell_41/SigmoidSigmoidlstm_cell_41/split:output:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/Sigmoid�
lstm_cell_41/Sigmoid_1Sigmoidlstm_cell_41/split:output:1*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/Sigmoid_1�
lstm_cell_41/mulMullstm_cell_41/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/mul}
lstm_cell_41/ReluRelulstm_cell_41/split:output:2*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/Relu�
lstm_cell_41/mul_1Mullstm_cell_41/Sigmoid:y:0lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/mul_1�
lstm_cell_41/add_1AddV2lstm_cell_41/mul:z:0lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/add_1�
lstm_cell_41/Sigmoid_2Sigmoidlstm_cell_41/split:output:3*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/Sigmoid_2|
lstm_cell_41/Relu_1Relulstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/Relu_1�
lstm_cell_41/mul_2Mullstm_cell_41/Sigmoid_2:y:0!lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/mul_2�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_41_matmul_readvariableop_resource-lstm_cell_41_matmul_1_readvariableop_resource,lstm_cell_41_biasadd_readvariableop_resource*
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
while_body_356967*
condR
while_cond_356966*K
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
NoOpNoOp$^lstm_cell_41/BiasAdd/ReadVariableOp#^lstm_cell_41/MatMul/ReadVariableOp%^lstm_cell_41/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������@: : : 2J
#lstm_cell_41/BiasAdd/ReadVariableOp#lstm_cell_41/BiasAdd/ReadVariableOp2H
"lstm_cell_41/MatMul/ReadVariableOp"lstm_cell_41/MatMul/ReadVariableOp2L
$lstm_cell_41/MatMul_1/ReadVariableOp$lstm_cell_41/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������@
"
_user_specified_name
inputs/0
�	
�
$__inference_signature_wrapper_355398
lstm_20_input
unknown:	�
	unknown_0:	@�
	unknown_1:	�
	unknown_2:	@�
	unknown_3:	 �
	unknown_4:	�
	unknown_5: 
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_20_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
!__inference__wrapped_model_3532292
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
_user_specified_namelstm_20_input
�
�
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_353450

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
C__inference_lstm_21_layer_call_and_return_conditional_losses_356900
inputs_0>
+lstm_cell_41_matmul_readvariableop_resource:	@�@
-lstm_cell_41_matmul_1_readvariableop_resource:	 �;
,lstm_cell_41_biasadd_readvariableop_resource:	�
identity��#lstm_cell_41/BiasAdd/ReadVariableOp�"lstm_cell_41/MatMul/ReadVariableOp�$lstm_cell_41/MatMul_1/ReadVariableOp�whileF
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
"lstm_cell_41/MatMul/ReadVariableOpReadVariableOp+lstm_cell_41_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype02$
"lstm_cell_41/MatMul/ReadVariableOp�
lstm_cell_41/MatMulMatMulstrided_slice_2:output:0*lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_41/MatMul�
$lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_41_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02&
$lstm_cell_41/MatMul_1/ReadVariableOp�
lstm_cell_41/MatMul_1MatMulzeros:output:0,lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_41/MatMul_1�
lstm_cell_41/addAddV2lstm_cell_41/MatMul:product:0lstm_cell_41/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_41/add�
#lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_41_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_41/BiasAdd/ReadVariableOp�
lstm_cell_41/BiasAddBiasAddlstm_cell_41/add:z:0+lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_41/BiasAdd~
lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_41/split/split_dim�
lstm_cell_41/splitSplit%lstm_cell_41/split/split_dim:output:0lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
lstm_cell_41/split�
lstm_cell_41/SigmoidSigmoidlstm_cell_41/split:output:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/Sigmoid�
lstm_cell_41/Sigmoid_1Sigmoidlstm_cell_41/split:output:1*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/Sigmoid_1�
lstm_cell_41/mulMullstm_cell_41/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/mul}
lstm_cell_41/ReluRelulstm_cell_41/split:output:2*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/Relu�
lstm_cell_41/mul_1Mullstm_cell_41/Sigmoid:y:0lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/mul_1�
lstm_cell_41/add_1AddV2lstm_cell_41/mul:z:0lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/add_1�
lstm_cell_41/Sigmoid_2Sigmoidlstm_cell_41/split:output:3*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/Sigmoid_2|
lstm_cell_41/Relu_1Relulstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/Relu_1�
lstm_cell_41/mul_2Mullstm_cell_41/Sigmoid_2:y:0!lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2
lstm_cell_41/mul_2�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_41_matmul_readvariableop_resource-lstm_cell_41_matmul_1_readvariableop_resource,lstm_cell_41_biasadd_readvariableop_resource*
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
while_body_356816*
condR
while_cond_356815*K
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
NoOpNoOp$^lstm_cell_41/BiasAdd/ReadVariableOp#^lstm_cell_41/MatMul/ReadVariableOp%^lstm_cell_41/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������@: : : 2J
#lstm_cell_41/BiasAdd/ReadVariableOp#lstm_cell_41/BiasAdd/ReadVariableOp2H
"lstm_cell_41/MatMul/ReadVariableOp"lstm_cell_41/MatMul/ReadVariableOp2L
$lstm_cell_41/MatMul_1/ReadVariableOp$lstm_cell_41/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������@
"
_user_specified_name
inputs/0
�
�
-__inference_lstm_cell_41_layer_call_fn_357514

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
H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_3539342
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
�I
�
__inference__traced_save_357711
file_prefix.
*savev2_dense_10_kernel_read_readvariableop,
(savev2_dense_10_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_20_lstm_cell_40_kernel_read_readvariableopD
@savev2_lstm_20_lstm_cell_40_recurrent_kernel_read_readvariableop8
4savev2_lstm_20_lstm_cell_40_bias_read_readvariableop:
6savev2_lstm_21_lstm_cell_41_kernel_read_readvariableopD
@savev2_lstm_21_lstm_cell_41_recurrent_kernel_read_readvariableop8
4savev2_lstm_21_lstm_cell_41_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_10_kernel_m_read_readvariableop3
/savev2_adam_dense_10_bias_m_read_readvariableopA
=savev2_adam_lstm_20_lstm_cell_40_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_20_lstm_cell_40_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_20_lstm_cell_40_bias_m_read_readvariableopA
=savev2_adam_lstm_21_lstm_cell_41_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_21_lstm_cell_41_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_21_lstm_cell_41_bias_m_read_readvariableop5
1savev2_adam_dense_10_kernel_v_read_readvariableop3
/savev2_adam_dense_10_bias_v_read_readvariableopA
=savev2_adam_lstm_20_lstm_cell_40_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_20_lstm_cell_40_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_20_lstm_cell_40_bias_v_read_readvariableopA
=savev2_adam_lstm_21_lstm_cell_41_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_21_lstm_cell_41_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_21_lstm_cell_41_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_10_kernel_read_readvariableop(savev2_dense_10_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_20_lstm_cell_40_kernel_read_readvariableop@savev2_lstm_20_lstm_cell_40_recurrent_kernel_read_readvariableop4savev2_lstm_20_lstm_cell_40_bias_read_readvariableop6savev2_lstm_21_lstm_cell_41_kernel_read_readvariableop@savev2_lstm_21_lstm_cell_41_recurrent_kernel_read_readvariableop4savev2_lstm_21_lstm_cell_41_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_10_kernel_m_read_readvariableop/savev2_adam_dense_10_bias_m_read_readvariableop=savev2_adam_lstm_20_lstm_cell_40_kernel_m_read_readvariableopGsavev2_adam_lstm_20_lstm_cell_40_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_20_lstm_cell_40_bias_m_read_readvariableop=savev2_adam_lstm_21_lstm_cell_41_kernel_m_read_readvariableopGsavev2_adam_lstm_21_lstm_cell_41_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_21_lstm_cell_41_bias_m_read_readvariableop1savev2_adam_dense_10_kernel_v_read_readvariableop/savev2_adam_dense_10_bias_v_read_readvariableop=savev2_adam_lstm_20_lstm_cell_40_kernel_v_read_readvariableopGsavev2_adam_lstm_20_lstm_cell_40_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_20_lstm_cell_40_bias_v_read_readvariableop=savev2_adam_lstm_21_lstm_cell_41_kernel_v_read_readvariableopGsavev2_adam_lstm_21_lstm_cell_41_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_21_lstm_cell_41_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
�
�
while_cond_354719
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_354719___redundant_placeholder04
0while_while_cond_354719___redundant_placeholder14
0while_while_cond_354719___redundant_placeholder24
0while_while_cond_354719___redundant_placeholder3
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
while_body_353318
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_40_353342_0:	�.
while_lstm_cell_40_353344_0:	@�*
while_lstm_cell_40_353346_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_40_353342:	�,
while_lstm_cell_40_353344:	@�(
while_lstm_cell_40_353346:	���*while/lstm_cell_40/StatefulPartitionedCall�
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
*while/lstm_cell_40/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_40_353342_0while_lstm_cell_40_353344_0while_lstm_cell_40_353346_0*
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
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_3533042,
*while/lstm_cell_40/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_40/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_40/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������@2
while/Identity_4�
while/Identity_5Identity3while/lstm_cell_40/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������@2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_40/StatefulPartitionedCall*"
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
while_lstm_cell_40_353342while_lstm_cell_40_353342_0"8
while_lstm_cell_40_353344while_lstm_cell_40_353344_0"8
while_lstm_cell_40_353346while_lstm_cell_40_353346_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2X
*while/lstm_cell_40/StatefulPartitionedCall*while/lstm_cell_40/StatefulPartitionedCall: 
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
�
�
I__inference_sequential_10_layer_call_and_return_conditional_losses_354836

inputs!
lstm_20_354647:	�!
lstm_20_354649:	@�
lstm_20_354651:	�!
lstm_21_354805:	@�!
lstm_21_354807:	 �
lstm_21_354809:	�!
dense_10_354830: 
dense_10_354832:
identity�� dense_10/StatefulPartitionedCall�lstm_20/StatefulPartitionedCall�lstm_21/StatefulPartitionedCall�
lstm_20/StatefulPartitionedCallStatefulPartitionedCallinputslstm_20_354647lstm_20_354649lstm_20_354651*
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
C__inference_lstm_20_layer_call_and_return_conditional_losses_3546462!
lstm_20/StatefulPartitionedCall�
lstm_21/StatefulPartitionedCallStatefulPartitionedCall(lstm_20/StatefulPartitionedCall:output:0lstm_21_354805lstm_21_354807lstm_21_354809*
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
C__inference_lstm_21_layer_call_and_return_conditional_losses_3548042!
lstm_21/StatefulPartitionedCall�
dropout_10/PartitionedCallPartitionedCall(lstm_21/StatefulPartitionedCall:output:0*
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
F__inference_dropout_10_layer_call_and_return_conditional_losses_3548172
dropout_10/PartitionedCall�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall#dropout_10/PartitionedCall:output:0dense_10_354830dense_10_354832*
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
D__inference_dense_10_layer_call_and_return_conditional_losses_3548292"
 dense_10/StatefulPartitionedCall�
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp!^dense_10/StatefulPartitionedCall ^lstm_20/StatefulPartitionedCall ^lstm_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2B
lstm_20/StatefulPartitionedCalllstm_20/StatefulPartitionedCall2B
lstm_21/StatefulPartitionedCalllstm_21/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_353317
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_353317___redundant_placeholder04
0while_while_cond_353317___redundant_placeholder14
0while_while_cond_353317___redundant_placeholder24
0while_while_cond_353317___redundant_placeholder3
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
�%
�
while_body_353948
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_41_353972_0:	@�.
while_lstm_cell_41_353974_0:	 �*
while_lstm_cell_41_353976_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_41_353972:	@�,
while_lstm_cell_41_353974:	 �(
while_lstm_cell_41_353976:	���*while/lstm_cell_41/StatefulPartitionedCall�
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
*while/lstm_cell_41/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_41_353972_0while_lstm_cell_41_353974_0while_lstm_cell_41_353976_0*
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
H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_3539342,
*while/lstm_cell_41/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_41/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_41/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:��������� 2
while/Identity_4�
while/Identity_5Identity3while/lstm_cell_41/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:��������� 2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_41/StatefulPartitionedCall*"
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
while_lstm_cell_41_353972while_lstm_cell_41_353972_0"8
while_lstm_cell_41_353974while_lstm_cell_41_353974_0"8
while_lstm_cell_41_353976while_lstm_cell_41_353976_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2X
*while/lstm_cell_41/StatefulPartitionedCall*while/lstm_cell_41/StatefulPartitionedCall: 
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
H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_354080

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
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_357465

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
while_cond_356620
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_356620___redundant_placeholder04
0while_while_cond_356620___redundant_placeholder14
0while_while_cond_356620___redundant_placeholder24
0while_while_cond_356620___redundant_placeholder3
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
�
d
+__inference_dropout_10_layer_call_fn_357363

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
F__inference_dropout_10_layer_call_and_return_conditional_losses_3548852
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
�[
�
C__inference_lstm_20_layer_call_and_return_conditional_losses_356554

inputs>
+lstm_cell_40_matmul_readvariableop_resource:	�@
-lstm_cell_40_matmul_1_readvariableop_resource:	@�;
,lstm_cell_40_biasadd_readvariableop_resource:	�
identity��#lstm_cell_40/BiasAdd/ReadVariableOp�"lstm_cell_40/MatMul/ReadVariableOp�$lstm_cell_40/MatMul_1/ReadVariableOp�whileD
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
"lstm_cell_40/MatMul/ReadVariableOpReadVariableOp+lstm_cell_40_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"lstm_cell_40/MatMul/ReadVariableOp�
lstm_cell_40/MatMulMatMulstrided_slice_2:output:0*lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_40/MatMul�
$lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype02&
$lstm_cell_40/MatMul_1/ReadVariableOp�
lstm_cell_40/MatMul_1MatMulzeros:output:0,lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_40/MatMul_1�
lstm_cell_40/addAddV2lstm_cell_40/MatMul:product:0lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_40/add�
#lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_40/BiasAdd/ReadVariableOp�
lstm_cell_40/BiasAddBiasAddlstm_cell_40/add:z:0+lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_40/BiasAdd~
lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_40/split/split_dim�
lstm_cell_40/splitSplit%lstm_cell_40/split/split_dim:output:0lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
lstm_cell_40/split�
lstm_cell_40/SigmoidSigmoidlstm_cell_40/split:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/Sigmoid�
lstm_cell_40/Sigmoid_1Sigmoidlstm_cell_40/split:output:1*
T0*'
_output_shapes
:���������@2
lstm_cell_40/Sigmoid_1�
lstm_cell_40/mulMullstm_cell_40/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/mul}
lstm_cell_40/ReluRelulstm_cell_40/split:output:2*
T0*'
_output_shapes
:���������@2
lstm_cell_40/Relu�
lstm_cell_40/mul_1Mullstm_cell_40/Sigmoid:y:0lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/mul_1�
lstm_cell_40/add_1AddV2lstm_cell_40/mul:z:0lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/add_1�
lstm_cell_40/Sigmoid_2Sigmoidlstm_cell_40/split:output:3*
T0*'
_output_shapes
:���������@2
lstm_cell_40/Sigmoid_2|
lstm_cell_40/Relu_1Relulstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/Relu_1�
lstm_cell_40/mul_2Mullstm_cell_40/Sigmoid_2:y:0!lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/mul_2�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_40_matmul_readvariableop_resource-lstm_cell_40_matmul_1_readvariableop_resource,lstm_cell_40_biasadd_readvariableop_resource*
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
while_body_356470*
condR
while_cond_356469*K
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
NoOpNoOp$^lstm_cell_40/BiasAdd/ReadVariableOp#^lstm_cell_40/MatMul/ReadVariableOp%^lstm_cell_40/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2J
#lstm_cell_40/BiasAdd/ReadVariableOp#lstm_cell_40/BiasAdd/ReadVariableOp2H
"lstm_cell_40/MatMul/ReadVariableOp"lstm_cell_40/MatMul/ReadVariableOp2L
$lstm_cell_40/MatMul_1/ReadVariableOp$lstm_cell_40/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
-__inference_lstm_cell_41_layer_call_fn_357531

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
H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_3540802
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
�

�
.__inference_sequential_10_layer_call_fn_354855
lstm_20_input
unknown:	�
	unknown_0:	@�
	unknown_1:	�
	unknown_2:	@�
	unknown_3:	 �
	unknown_4:	�
	unknown_5: 
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_20_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
I__inference_sequential_10_layer_call_and_return_conditional_losses_3548362
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
_user_specified_namelstm_20_input
�

�
lstm_21_while_cond_355958,
(lstm_21_while_lstm_21_while_loop_counter2
.lstm_21_while_lstm_21_while_maximum_iterations
lstm_21_while_placeholder
lstm_21_while_placeholder_1
lstm_21_while_placeholder_2
lstm_21_while_placeholder_3.
*lstm_21_while_less_lstm_21_strided_slice_1D
@lstm_21_while_lstm_21_while_cond_355958___redundant_placeholder0D
@lstm_21_while_lstm_21_while_cond_355958___redundant_placeholder1D
@lstm_21_while_lstm_21_while_cond_355958___redundant_placeholder2D
@lstm_21_while_lstm_21_while_cond_355958___redundant_placeholder3
lstm_21_while_identity
�
lstm_21/while/LessLesslstm_21_while_placeholder*lstm_21_while_less_lstm_21_strided_slice_1*
T0*
_output_shapes
: 2
lstm_21/while/Lessu
lstm_21/while/IdentityIdentitylstm_21/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_21/while/Identity"9
lstm_21_while_identitylstm_21/while/Identity:output:0*(
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
�
'sequential_10_lstm_20_while_cond_352990H
Dsequential_10_lstm_20_while_sequential_10_lstm_20_while_loop_counterN
Jsequential_10_lstm_20_while_sequential_10_lstm_20_while_maximum_iterations+
'sequential_10_lstm_20_while_placeholder-
)sequential_10_lstm_20_while_placeholder_1-
)sequential_10_lstm_20_while_placeholder_2-
)sequential_10_lstm_20_while_placeholder_3J
Fsequential_10_lstm_20_while_less_sequential_10_lstm_20_strided_slice_1`
\sequential_10_lstm_20_while_sequential_10_lstm_20_while_cond_352990___redundant_placeholder0`
\sequential_10_lstm_20_while_sequential_10_lstm_20_while_cond_352990___redundant_placeholder1`
\sequential_10_lstm_20_while_sequential_10_lstm_20_while_cond_352990___redundant_placeholder2`
\sequential_10_lstm_20_while_sequential_10_lstm_20_while_cond_352990___redundant_placeholder3(
$sequential_10_lstm_20_while_identity
�
 sequential_10/lstm_20/while/LessLess'sequential_10_lstm_20_while_placeholderFsequential_10_lstm_20_while_less_sequential_10_lstm_20_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_10/lstm_20/while/Less�
$sequential_10/lstm_20/while/IdentityIdentity$sequential_10/lstm_20/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_10/lstm_20/while/Identity"U
$sequential_10_lstm_20_while_identity-sequential_10/lstm_20/while/Identity:output:0*(
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
�?
�
while_body_356967
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_41_matmul_readvariableop_resource_0:	@�H
5while_lstm_cell_41_matmul_1_readvariableop_resource_0:	 �C
4while_lstm_cell_41_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_41_matmul_readvariableop_resource:	@�F
3while_lstm_cell_41_matmul_1_readvariableop_resource:	 �A
2while_lstm_cell_41_biasadd_readvariableop_resource:	���)while/lstm_cell_41/BiasAdd/ReadVariableOp�(while/lstm_cell_41/MatMul/ReadVariableOp�*while/lstm_cell_41/MatMul_1/ReadVariableOp�
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
(while/lstm_cell_41/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_41_matmul_readvariableop_resource_0*
_output_shapes
:	@�*
dtype02*
(while/lstm_cell_41/MatMul/ReadVariableOp�
while/lstm_cell_41/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_41/MatMul�
*while/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02,
*while/lstm_cell_41/MatMul_1/ReadVariableOp�
while/lstm_cell_41/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_41/MatMul_1�
while/lstm_cell_41/addAddV2#while/lstm_cell_41/MatMul:product:0%while/lstm_cell_41/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_41/add�
)while/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_41_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_41/BiasAdd/ReadVariableOp�
while/lstm_cell_41/BiasAddBiasAddwhile/lstm_cell_41/add:z:01while/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_41/BiasAdd�
"while/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_41/split/split_dim�
while/lstm_cell_41/splitSplit+while/lstm_cell_41/split/split_dim:output:0#while/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
while/lstm_cell_41/split�
while/lstm_cell_41/SigmoidSigmoid!while/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/Sigmoid�
while/lstm_cell_41/Sigmoid_1Sigmoid!while/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/Sigmoid_1�
while/lstm_cell_41/mulMul while/lstm_cell_41/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/mul�
while/lstm_cell_41/ReluRelu!while/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/Relu�
while/lstm_cell_41/mul_1Mulwhile/lstm_cell_41/Sigmoid:y:0%while/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/mul_1�
while/lstm_cell_41/add_1AddV2while/lstm_cell_41/mul:z:0while/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/add_1�
while/lstm_cell_41/Sigmoid_2Sigmoid!while/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/Sigmoid_2�
while/lstm_cell_41/Relu_1Reluwhile/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/Relu_1�
while/lstm_cell_41/mul_2Mul while/lstm_cell_41/Sigmoid_2:y:0'while/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_41/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_41/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:��������� 2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_41/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:��������� 2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_41/BiasAdd/ReadVariableOp)^while/lstm_cell_41/MatMul/ReadVariableOp+^while/lstm_cell_41/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_41_biasadd_readvariableop_resource4while_lstm_cell_41_biasadd_readvariableop_resource_0"l
3while_lstm_cell_41_matmul_1_readvariableop_resource5while_lstm_cell_41_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_41_matmul_readvariableop_resource3while_lstm_cell_41_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2V
)while/lstm_cell_41/BiasAdd/ReadVariableOp)while/lstm_cell_41/BiasAdd/ReadVariableOp2T
(while/lstm_cell_41/MatMul/ReadVariableOp(while/lstm_cell_41/MatMul/ReadVariableOp2X
*while/lstm_cell_41/MatMul_1/ReadVariableOp*while/lstm_cell_41/MatMul_1/ReadVariableOp: 
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
while_cond_356469
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_356469___redundant_placeholder04
0while_while_cond_356469___redundant_placeholder14
0while_while_cond_356469___redundant_placeholder24
0while_while_cond_356469___redundant_placeholder3
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
while_cond_357268
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_357268___redundant_placeholder04
0while_while_cond_357268___redundant_placeholder14
0while_while_cond_357268___redundant_placeholder24
0while_while_cond_357268___redundant_placeholder3
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
while_cond_356815
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_356815___redundant_placeholder04
0while_while_cond_356815___redundant_placeholder14
0while_while_cond_356815___redundant_placeholder24
0while_while_cond_356815___redundant_placeholder3
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
while_cond_354561
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_354561___redundant_placeholder04
0while_while_cond_354561___redundant_placeholder14
0while_while_cond_354561___redundant_placeholder24
0while_while_cond_354561___redundant_placeholder3
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

�
lstm_20_while_cond_355811,
(lstm_20_while_lstm_20_while_loop_counter2
.lstm_20_while_lstm_20_while_maximum_iterations
lstm_20_while_placeholder
lstm_20_while_placeholder_1
lstm_20_while_placeholder_2
lstm_20_while_placeholder_3.
*lstm_20_while_less_lstm_20_strided_slice_1D
@lstm_20_while_lstm_20_while_cond_355811___redundant_placeholder0D
@lstm_20_while_lstm_20_while_cond_355811___redundant_placeholder1D
@lstm_20_while_lstm_20_while_cond_355811___redundant_placeholder2D
@lstm_20_while_lstm_20_while_cond_355811___redundant_placeholder3
lstm_20_while_identity
�
lstm_20/while/LessLesslstm_20_while_placeholder*lstm_20_while_less_lstm_20_strided_slice_1*
T0*
_output_shapes
: 2
lstm_20/while/Lessu
lstm_20/while/IdentityIdentitylstm_20/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_20/while/Identity"9
lstm_20_while_identitylstm_20/while/Identity:output:0*(
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
�?
�
while_body_356319
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_40_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_40_matmul_1_readvariableop_resource_0:	@�C
4while_lstm_cell_40_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_40_matmul_readvariableop_resource:	�F
3while_lstm_cell_40_matmul_1_readvariableop_resource:	@�A
2while_lstm_cell_40_biasadd_readvariableop_resource:	���)while/lstm_cell_40/BiasAdd/ReadVariableOp�(while/lstm_cell_40/MatMul/ReadVariableOp�*while/lstm_cell_40/MatMul_1/ReadVariableOp�
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
(while/lstm_cell_40/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_40_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02*
(while/lstm_cell_40/MatMul/ReadVariableOp�
while/lstm_cell_40/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_40/MatMul�
*while/lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_40_matmul_1_readvariableop_resource_0*
_output_shapes
:	@�*
dtype02,
*while/lstm_cell_40/MatMul_1/ReadVariableOp�
while/lstm_cell_40/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_40/MatMul_1�
while/lstm_cell_40/addAddV2#while/lstm_cell_40/MatMul:product:0%while/lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_40/add�
)while/lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_40_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_40/BiasAdd/ReadVariableOp�
while/lstm_cell_40/BiasAddBiasAddwhile/lstm_cell_40/add:z:01while/lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_40/BiasAdd�
"while/lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_40/split/split_dim�
while/lstm_cell_40/splitSplit+while/lstm_cell_40/split/split_dim:output:0#while/lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
while/lstm_cell_40/split�
while/lstm_cell_40/SigmoidSigmoid!while/lstm_cell_40/split:output:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/Sigmoid�
while/lstm_cell_40/Sigmoid_1Sigmoid!while/lstm_cell_40/split:output:1*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/Sigmoid_1�
while/lstm_cell_40/mulMul while/lstm_cell_40/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/mul�
while/lstm_cell_40/ReluRelu!while/lstm_cell_40/split:output:2*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/Relu�
while/lstm_cell_40/mul_1Mulwhile/lstm_cell_40/Sigmoid:y:0%while/lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/mul_1�
while/lstm_cell_40/add_1AddV2while/lstm_cell_40/mul:z:0while/lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/add_1�
while/lstm_cell_40/Sigmoid_2Sigmoid!while/lstm_cell_40/split:output:3*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/Sigmoid_2�
while/lstm_cell_40/Relu_1Reluwhile/lstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/Relu_1�
while/lstm_cell_40/mul_2Mul while/lstm_cell_40/Sigmoid_2:y:0'while/lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
while/lstm_cell_40/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_40/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_40/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������@2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_40/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������@2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_40/BiasAdd/ReadVariableOp)^while/lstm_cell_40/MatMul/ReadVariableOp+^while/lstm_cell_40/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_40_biasadd_readvariableop_resource4while_lstm_cell_40_biasadd_readvariableop_resource_0"l
3while_lstm_cell_40_matmul_1_readvariableop_resource5while_lstm_cell_40_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_40_matmul_readvariableop_resource3while_lstm_cell_40_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������@:���������@: : : : : 2V
)while/lstm_cell_40/BiasAdd/ReadVariableOp)while/lstm_cell_40/BiasAdd/ReadVariableOp2T
(while/lstm_cell_40/MatMul/ReadVariableOp(while/lstm_cell_40/MatMul/ReadVariableOp2X
*while/lstm_cell_40/MatMul_1/ReadVariableOp*while/lstm_cell_40/MatMul_1/ReadVariableOp: 
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
C__inference_lstm_20_layer_call_and_return_conditional_losses_354646

inputs>
+lstm_cell_40_matmul_readvariableop_resource:	�@
-lstm_cell_40_matmul_1_readvariableop_resource:	@�;
,lstm_cell_40_biasadd_readvariableop_resource:	�
identity��#lstm_cell_40/BiasAdd/ReadVariableOp�"lstm_cell_40/MatMul/ReadVariableOp�$lstm_cell_40/MatMul_1/ReadVariableOp�whileD
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
"lstm_cell_40/MatMul/ReadVariableOpReadVariableOp+lstm_cell_40_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"lstm_cell_40/MatMul/ReadVariableOp�
lstm_cell_40/MatMulMatMulstrided_slice_2:output:0*lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_40/MatMul�
$lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype02&
$lstm_cell_40/MatMul_1/ReadVariableOp�
lstm_cell_40/MatMul_1MatMulzeros:output:0,lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_40/MatMul_1�
lstm_cell_40/addAddV2lstm_cell_40/MatMul:product:0lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_40/add�
#lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_40/BiasAdd/ReadVariableOp�
lstm_cell_40/BiasAddBiasAddlstm_cell_40/add:z:0+lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_40/BiasAdd~
lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_40/split/split_dim�
lstm_cell_40/splitSplit%lstm_cell_40/split/split_dim:output:0lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
lstm_cell_40/split�
lstm_cell_40/SigmoidSigmoidlstm_cell_40/split:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/Sigmoid�
lstm_cell_40/Sigmoid_1Sigmoidlstm_cell_40/split:output:1*
T0*'
_output_shapes
:���������@2
lstm_cell_40/Sigmoid_1�
lstm_cell_40/mulMullstm_cell_40/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/mul}
lstm_cell_40/ReluRelulstm_cell_40/split:output:2*
T0*'
_output_shapes
:���������@2
lstm_cell_40/Relu�
lstm_cell_40/mul_1Mullstm_cell_40/Sigmoid:y:0lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/mul_1�
lstm_cell_40/add_1AddV2lstm_cell_40/mul:z:0lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/add_1�
lstm_cell_40/Sigmoid_2Sigmoidlstm_cell_40/split:output:3*
T0*'
_output_shapes
:���������@2
lstm_cell_40/Sigmoid_2|
lstm_cell_40/Relu_1Relulstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/Relu_1�
lstm_cell_40/mul_2Mullstm_cell_40/Sigmoid_2:y:0!lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/mul_2�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_40_matmul_readvariableop_resource-lstm_cell_40_matmul_1_readvariableop_resource,lstm_cell_40_biasadd_readvariableop_resource*
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
while_body_354562*
condR
while_cond_354561*K
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
NoOpNoOp$^lstm_cell_40/BiasAdd/ReadVariableOp#^lstm_cell_40/MatMul/ReadVariableOp%^lstm_cell_40/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2J
#lstm_cell_40/BiasAdd/ReadVariableOp#lstm_cell_40/BiasAdd/ReadVariableOp2H
"lstm_cell_40/MatMul/ReadVariableOp"lstm_cell_40/MatMul/ReadVariableOp2L
$lstm_cell_40/MatMul_1/ReadVariableOp$lstm_cell_40/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_354157
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_354157___redundant_placeholder04
0while_while_cond_354157___redundant_placeholder14
0while_while_cond_354157___redundant_placeholder24
0while_while_cond_354157___redundant_placeholder3
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
�?
�
while_body_354720
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_41_matmul_readvariableop_resource_0:	@�H
5while_lstm_cell_41_matmul_1_readvariableop_resource_0:	 �C
4while_lstm_cell_41_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_41_matmul_readvariableop_resource:	@�F
3while_lstm_cell_41_matmul_1_readvariableop_resource:	 �A
2while_lstm_cell_41_biasadd_readvariableop_resource:	���)while/lstm_cell_41/BiasAdd/ReadVariableOp�(while/lstm_cell_41/MatMul/ReadVariableOp�*while/lstm_cell_41/MatMul_1/ReadVariableOp�
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
(while/lstm_cell_41/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_41_matmul_readvariableop_resource_0*
_output_shapes
:	@�*
dtype02*
(while/lstm_cell_41/MatMul/ReadVariableOp�
while/lstm_cell_41/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_41/MatMul�
*while/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02,
*while/lstm_cell_41/MatMul_1/ReadVariableOp�
while/lstm_cell_41/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_41/MatMul_1�
while/lstm_cell_41/addAddV2#while/lstm_cell_41/MatMul:product:0%while/lstm_cell_41/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_41/add�
)while/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_41_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_41/BiasAdd/ReadVariableOp�
while/lstm_cell_41/BiasAddBiasAddwhile/lstm_cell_41/add:z:01while/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_41/BiasAdd�
"while/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_41/split/split_dim�
while/lstm_cell_41/splitSplit+while/lstm_cell_41/split/split_dim:output:0#while/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
while/lstm_cell_41/split�
while/lstm_cell_41/SigmoidSigmoid!while/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/Sigmoid�
while/lstm_cell_41/Sigmoid_1Sigmoid!while/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/Sigmoid_1�
while/lstm_cell_41/mulMul while/lstm_cell_41/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/mul�
while/lstm_cell_41/ReluRelu!while/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/Relu�
while/lstm_cell_41/mul_1Mulwhile/lstm_cell_41/Sigmoid:y:0%while/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/mul_1�
while/lstm_cell_41/add_1AddV2while/lstm_cell_41/mul:z:0while/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/add_1�
while/lstm_cell_41/Sigmoid_2Sigmoid!while/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/Sigmoid_2�
while/lstm_cell_41/Relu_1Reluwhile/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/Relu_1�
while/lstm_cell_41/mul_2Mul while/lstm_cell_41/Sigmoid_2:y:0'while/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_41/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_41/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:��������� 2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_41/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:��������� 2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_41/BiasAdd/ReadVariableOp)^while/lstm_cell_41/MatMul/ReadVariableOp+^while/lstm_cell_41/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_41_biasadd_readvariableop_resource4while_lstm_cell_41_biasadd_readvariableop_resource_0"l
3while_lstm_cell_41_matmul_1_readvariableop_resource5while_lstm_cell_41_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_41_matmul_readvariableop_resource3while_lstm_cell_41_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2V
)while/lstm_cell_41/BiasAdd/ReadVariableOp)while/lstm_cell_41/BiasAdd/ReadVariableOp2T
(while/lstm_cell_41/MatMul/ReadVariableOp(while/lstm_cell_41/MatMul/ReadVariableOp2X
*while/lstm_cell_41/MatMul_1/ReadVariableOp*while/lstm_cell_41/MatMul_1/ReadVariableOp: 
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
�[
�
C__inference_lstm_20_layer_call_and_return_conditional_losses_356705

inputs>
+lstm_cell_40_matmul_readvariableop_resource:	�@
-lstm_cell_40_matmul_1_readvariableop_resource:	@�;
,lstm_cell_40_biasadd_readvariableop_resource:	�
identity��#lstm_cell_40/BiasAdd/ReadVariableOp�"lstm_cell_40/MatMul/ReadVariableOp�$lstm_cell_40/MatMul_1/ReadVariableOp�whileD
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
"lstm_cell_40/MatMul/ReadVariableOpReadVariableOp+lstm_cell_40_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"lstm_cell_40/MatMul/ReadVariableOp�
lstm_cell_40/MatMulMatMulstrided_slice_2:output:0*lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_40/MatMul�
$lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype02&
$lstm_cell_40/MatMul_1/ReadVariableOp�
lstm_cell_40/MatMul_1MatMulzeros:output:0,lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_40/MatMul_1�
lstm_cell_40/addAddV2lstm_cell_40/MatMul:product:0lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_40/add�
#lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_40/BiasAdd/ReadVariableOp�
lstm_cell_40/BiasAddBiasAddlstm_cell_40/add:z:0+lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_40/BiasAdd~
lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_40/split/split_dim�
lstm_cell_40/splitSplit%lstm_cell_40/split/split_dim:output:0lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
lstm_cell_40/split�
lstm_cell_40/SigmoidSigmoidlstm_cell_40/split:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/Sigmoid�
lstm_cell_40/Sigmoid_1Sigmoidlstm_cell_40/split:output:1*
T0*'
_output_shapes
:���������@2
lstm_cell_40/Sigmoid_1�
lstm_cell_40/mulMullstm_cell_40/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/mul}
lstm_cell_40/ReluRelulstm_cell_40/split:output:2*
T0*'
_output_shapes
:���������@2
lstm_cell_40/Relu�
lstm_cell_40/mul_1Mullstm_cell_40/Sigmoid:y:0lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/mul_1�
lstm_cell_40/add_1AddV2lstm_cell_40/mul:z:0lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/add_1�
lstm_cell_40/Sigmoid_2Sigmoidlstm_cell_40/split:output:3*
T0*'
_output_shapes
:���������@2
lstm_cell_40/Sigmoid_2|
lstm_cell_40/Relu_1Relulstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/Relu_1�
lstm_cell_40/mul_2Mullstm_cell_40/Sigmoid_2:y:0!lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/mul_2�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_40_matmul_readvariableop_resource-lstm_cell_40_matmul_1_readvariableop_resource,lstm_cell_40_biasadd_readvariableop_resource*
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
while_body_356621*
condR
while_cond_356620*K
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
NoOpNoOp$^lstm_cell_40/BiasAdd/ReadVariableOp#^lstm_cell_40/MatMul/ReadVariableOp%^lstm_cell_40/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2J
#lstm_cell_40/BiasAdd/ReadVariableOp#lstm_cell_40/BiasAdd/ReadVariableOp2H
"lstm_cell_40/MatMul/ReadVariableOp"lstm_cell_40/MatMul/ReadVariableOp2L
$lstm_cell_40/MatMul_1/ReadVariableOp$lstm_cell_40/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
"__inference__traced_restore_357814
file_prefix2
 assignvariableop_dense_10_kernel: .
 assignvariableop_1_dense_10_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: A
.assignvariableop_7_lstm_20_lstm_cell_40_kernel:	�K
8assignvariableop_8_lstm_20_lstm_cell_40_recurrent_kernel:	@�;
,assignvariableop_9_lstm_20_lstm_cell_40_bias:	�B
/assignvariableop_10_lstm_21_lstm_cell_41_kernel:	@�L
9assignvariableop_11_lstm_21_lstm_cell_41_recurrent_kernel:	 �<
-assignvariableop_12_lstm_21_lstm_cell_41_bias:	�#
assignvariableop_13_total: #
assignvariableop_14_count: <
*assignvariableop_15_adam_dense_10_kernel_m: 6
(assignvariableop_16_adam_dense_10_bias_m:I
6assignvariableop_17_adam_lstm_20_lstm_cell_40_kernel_m:	�S
@assignvariableop_18_adam_lstm_20_lstm_cell_40_recurrent_kernel_m:	@�C
4assignvariableop_19_adam_lstm_20_lstm_cell_40_bias_m:	�I
6assignvariableop_20_adam_lstm_21_lstm_cell_41_kernel_m:	@�S
@assignvariableop_21_adam_lstm_21_lstm_cell_41_recurrent_kernel_m:	 �C
4assignvariableop_22_adam_lstm_21_lstm_cell_41_bias_m:	�<
*assignvariableop_23_adam_dense_10_kernel_v: 6
(assignvariableop_24_adam_dense_10_bias_v:I
6assignvariableop_25_adam_lstm_20_lstm_cell_40_kernel_v:	�S
@assignvariableop_26_adam_lstm_20_lstm_cell_40_recurrent_kernel_v:	@�C
4assignvariableop_27_adam_lstm_20_lstm_cell_40_bias_v:	�I
6assignvariableop_28_adam_lstm_21_lstm_cell_41_kernel_v:	@�S
@assignvariableop_29_adam_lstm_21_lstm_cell_41_recurrent_kernel_v:	 �C
4assignvariableop_30_adam_lstm_21_lstm_cell_41_bias_v:	�
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
AssignVariableOpAssignVariableOp assignvariableop_dense_10_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_10_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp.assignvariableop_7_lstm_20_lstm_cell_40_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp8assignvariableop_8_lstm_20_lstm_cell_40_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp,assignvariableop_9_lstm_20_lstm_cell_40_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp/assignvariableop_10_lstm_21_lstm_cell_41_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp9assignvariableop_11_lstm_21_lstm_cell_41_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp-assignvariableop_12_lstm_21_lstm_cell_41_biasIdentity_12:output:0"/device:CPU:0*
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
AssignVariableOp_15AssignVariableOp*assignvariableop_15_adam_dense_10_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adam_dense_10_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp6assignvariableop_17_adam_lstm_20_lstm_cell_40_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp@assignvariableop_18_adam_lstm_20_lstm_cell_40_recurrent_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp4assignvariableop_19_adam_lstm_20_lstm_cell_40_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOp6assignvariableop_20_adam_lstm_21_lstm_cell_41_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOp@assignvariableop_21_adam_lstm_21_lstm_cell_41_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_lstm_21_lstm_cell_41_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_10_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_10_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_20_lstm_cell_40_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp@assignvariableop_26_adam_lstm_20_lstm_cell_40_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOp4assignvariableop_27_adam_lstm_20_lstm_cell_40_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_21_lstm_cell_41_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOp@assignvariableop_29_adam_lstm_21_lstm_cell_41_recurrent_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOp4assignvariableop_30_adam_lstm_21_lstm_cell_41_bias_vIdentity_30:output:0"/device:CPU:0*
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
�\
�
C__inference_lstm_20_layer_call_and_return_conditional_losses_356403
inputs_0>
+lstm_cell_40_matmul_readvariableop_resource:	�@
-lstm_cell_40_matmul_1_readvariableop_resource:	@�;
,lstm_cell_40_biasadd_readvariableop_resource:	�
identity��#lstm_cell_40/BiasAdd/ReadVariableOp�"lstm_cell_40/MatMul/ReadVariableOp�$lstm_cell_40/MatMul_1/ReadVariableOp�whileF
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
"lstm_cell_40/MatMul/ReadVariableOpReadVariableOp+lstm_cell_40_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"lstm_cell_40/MatMul/ReadVariableOp�
lstm_cell_40/MatMulMatMulstrided_slice_2:output:0*lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_40/MatMul�
$lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype02&
$lstm_cell_40/MatMul_1/ReadVariableOp�
lstm_cell_40/MatMul_1MatMulzeros:output:0,lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_40/MatMul_1�
lstm_cell_40/addAddV2lstm_cell_40/MatMul:product:0lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_40/add�
#lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_40/BiasAdd/ReadVariableOp�
lstm_cell_40/BiasAddBiasAddlstm_cell_40/add:z:0+lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_40/BiasAdd~
lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_40/split/split_dim�
lstm_cell_40/splitSplit%lstm_cell_40/split/split_dim:output:0lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
lstm_cell_40/split�
lstm_cell_40/SigmoidSigmoidlstm_cell_40/split:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/Sigmoid�
lstm_cell_40/Sigmoid_1Sigmoidlstm_cell_40/split:output:1*
T0*'
_output_shapes
:���������@2
lstm_cell_40/Sigmoid_1�
lstm_cell_40/mulMullstm_cell_40/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/mul}
lstm_cell_40/ReluRelulstm_cell_40/split:output:2*
T0*'
_output_shapes
:���������@2
lstm_cell_40/Relu�
lstm_cell_40/mul_1Mullstm_cell_40/Sigmoid:y:0lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/mul_1�
lstm_cell_40/add_1AddV2lstm_cell_40/mul:z:0lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/add_1�
lstm_cell_40/Sigmoid_2Sigmoidlstm_cell_40/split:output:3*
T0*'
_output_shapes
:���������@2
lstm_cell_40/Sigmoid_2|
lstm_cell_40/Relu_1Relulstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/Relu_1�
lstm_cell_40/mul_2Mullstm_cell_40/Sigmoid_2:y:0!lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/mul_2�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_40_matmul_readvariableop_resource-lstm_cell_40_matmul_1_readvariableop_resource,lstm_cell_40_biasadd_readvariableop_resource*
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
while_body_356319*
condR
while_cond_356318*K
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
NoOpNoOp$^lstm_cell_40/BiasAdd/ReadVariableOp#^lstm_cell_40/MatMul/ReadVariableOp%^lstm_cell_40/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2J
#lstm_cell_40/BiasAdd/ReadVariableOp#lstm_cell_40/BiasAdd/ReadVariableOp2H
"lstm_cell_40/MatMul/ReadVariableOp"lstm_cell_40/MatMul/ReadVariableOp2L
$lstm_cell_40/MatMul_1/ReadVariableOp$lstm_cell_40/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
)__inference_dense_10_layer_call_fn_357389

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
D__inference_dense_10_layer_call_and_return_conditional_losses_3548292
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
�F
�
C__inference_lstm_20_layer_call_and_return_conditional_losses_353387

inputs&
lstm_cell_40_353305:	�&
lstm_cell_40_353307:	@�"
lstm_cell_40_353309:	�
identity��$lstm_cell_40/StatefulPartitionedCall�whileD
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
$lstm_cell_40/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_40_353305lstm_cell_40_353307lstm_cell_40_353309*
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
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_3533042&
$lstm_cell_40/StatefulPartitionedCall�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_40_353305lstm_cell_40_353307lstm_cell_40_353309*
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
while_body_353318*
condR
while_cond_353317*K
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
NoOpNoOp%^lstm_cell_40/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_40/StatefulPartitionedCall$lstm_cell_40/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�

�
lstm_21_while_cond_355653,
(lstm_21_while_lstm_21_while_loop_counter2
.lstm_21_while_lstm_21_while_maximum_iterations
lstm_21_while_placeholder
lstm_21_while_placeholder_1
lstm_21_while_placeholder_2
lstm_21_while_placeholder_3.
*lstm_21_while_less_lstm_21_strided_slice_1D
@lstm_21_while_lstm_21_while_cond_355653___redundant_placeholder0D
@lstm_21_while_lstm_21_while_cond_355653___redundant_placeholder1D
@lstm_21_while_lstm_21_while_cond_355653___redundant_placeholder2D
@lstm_21_while_lstm_21_while_cond_355653___redundant_placeholder3
lstm_21_while_identity
�
lstm_21/while/LessLesslstm_21_while_placeholder*lstm_21_while_less_lstm_21_strided_slice_1*
T0*
_output_shapes
: 2
lstm_21/while/Lessu
lstm_21/while/IdentityIdentitylstm_21/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_21/while/Identity"9
lstm_21_while_identitylstm_21/while/Identity:output:0*(
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
e
F__inference_dropout_10_layer_call_and_return_conditional_losses_354885

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
�
�
while_cond_356167
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_356167___redundant_placeholder04
0while_while_cond_356167___redundant_placeholder14
0while_while_cond_356167___redundant_placeholder24
0while_while_cond_356167___redundant_placeholder3
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
while_cond_356966
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_356966___redundant_placeholder04
0while_while_cond_356966___redundant_placeholder14
0while_while_cond_356966___redundant_placeholder24
0while_while_cond_356966___redundant_placeholder3
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
while_cond_354967
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_354967___redundant_placeholder04
0while_while_cond_354967___redundant_placeholder14
0while_while_cond_354967___redundant_placeholder24
0while_while_cond_354967___redundant_placeholder3
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
�?
�
while_body_357118
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_41_matmul_readvariableop_resource_0:	@�H
5while_lstm_cell_41_matmul_1_readvariableop_resource_0:	 �C
4while_lstm_cell_41_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_41_matmul_readvariableop_resource:	@�F
3while_lstm_cell_41_matmul_1_readvariableop_resource:	 �A
2while_lstm_cell_41_biasadd_readvariableop_resource:	���)while/lstm_cell_41/BiasAdd/ReadVariableOp�(while/lstm_cell_41/MatMul/ReadVariableOp�*while/lstm_cell_41/MatMul_1/ReadVariableOp�
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
(while/lstm_cell_41/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_41_matmul_readvariableop_resource_0*
_output_shapes
:	@�*
dtype02*
(while/lstm_cell_41/MatMul/ReadVariableOp�
while/lstm_cell_41/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_41/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_41/MatMul�
*while/lstm_cell_41/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_41_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02,
*while/lstm_cell_41/MatMul_1/ReadVariableOp�
while/lstm_cell_41/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_41/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_41/MatMul_1�
while/lstm_cell_41/addAddV2#while/lstm_cell_41/MatMul:product:0%while/lstm_cell_41/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_41/add�
)while/lstm_cell_41/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_41_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_41/BiasAdd/ReadVariableOp�
while/lstm_cell_41/BiasAddBiasAddwhile/lstm_cell_41/add:z:01while/lstm_cell_41/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_41/BiasAdd�
"while/lstm_cell_41/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_41/split/split_dim�
while/lstm_cell_41/splitSplit+while/lstm_cell_41/split/split_dim:output:0#while/lstm_cell_41/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split2
while/lstm_cell_41/split�
while/lstm_cell_41/SigmoidSigmoid!while/lstm_cell_41/split:output:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/Sigmoid�
while/lstm_cell_41/Sigmoid_1Sigmoid!while/lstm_cell_41/split:output:1*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/Sigmoid_1�
while/lstm_cell_41/mulMul while/lstm_cell_41/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/mul�
while/lstm_cell_41/ReluRelu!while/lstm_cell_41/split:output:2*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/Relu�
while/lstm_cell_41/mul_1Mulwhile/lstm_cell_41/Sigmoid:y:0%while/lstm_cell_41/Relu:activations:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/mul_1�
while/lstm_cell_41/add_1AddV2while/lstm_cell_41/mul:z:0while/lstm_cell_41/mul_1:z:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/add_1�
while/lstm_cell_41/Sigmoid_2Sigmoid!while/lstm_cell_41/split:output:3*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/Sigmoid_2�
while/lstm_cell_41/Relu_1Reluwhile/lstm_cell_41/add_1:z:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/Relu_1�
while/lstm_cell_41/mul_2Mul while/lstm_cell_41/Sigmoid_2:y:0'while/lstm_cell_41/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 2
while/lstm_cell_41/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_41/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_41/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:��������� 2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_41/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:��������� 2
while/Identity_5�

while/NoOpNoOp*^while/lstm_cell_41/BiasAdd/ReadVariableOp)^while/lstm_cell_41/MatMul/ReadVariableOp+^while/lstm_cell_41/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_41_biasadd_readvariableop_resource4while_lstm_cell_41_biasadd_readvariableop_resource_0"l
3while_lstm_cell_41_matmul_1_readvariableop_resource5while_lstm_cell_41_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_41_matmul_readvariableop_resource3while_lstm_cell_41_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2V
)while/lstm_cell_41/BiasAdd/ReadVariableOp)while/lstm_cell_41/BiasAdd/ReadVariableOp2T
(while/lstm_cell_41/MatMul/ReadVariableOp(while/lstm_cell_41/MatMul/ReadVariableOp2X
*while/lstm_cell_41/MatMul_1/ReadVariableOp*while/lstm_cell_41/MatMul_1/ReadVariableOp: 
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
�\
�
C__inference_lstm_20_layer_call_and_return_conditional_losses_356252
inputs_0>
+lstm_cell_40_matmul_readvariableop_resource:	�@
-lstm_cell_40_matmul_1_readvariableop_resource:	@�;
,lstm_cell_40_biasadd_readvariableop_resource:	�
identity��#lstm_cell_40/BiasAdd/ReadVariableOp�"lstm_cell_40/MatMul/ReadVariableOp�$lstm_cell_40/MatMul_1/ReadVariableOp�whileF
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
"lstm_cell_40/MatMul/ReadVariableOpReadVariableOp+lstm_cell_40_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"lstm_cell_40/MatMul/ReadVariableOp�
lstm_cell_40/MatMulMatMulstrided_slice_2:output:0*lstm_cell_40/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_40/MatMul�
$lstm_cell_40/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_40_matmul_1_readvariableop_resource*
_output_shapes
:	@�*
dtype02&
$lstm_cell_40/MatMul_1/ReadVariableOp�
lstm_cell_40/MatMul_1MatMulzeros:output:0,lstm_cell_40/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_40/MatMul_1�
lstm_cell_40/addAddV2lstm_cell_40/MatMul:product:0lstm_cell_40/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_40/add�
#lstm_cell_40/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_40_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_40/BiasAdd/ReadVariableOp�
lstm_cell_40/BiasAddBiasAddlstm_cell_40/add:z:0+lstm_cell_40/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_40/BiasAdd~
lstm_cell_40/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_40/split/split_dim�
lstm_cell_40/splitSplit%lstm_cell_40/split/split_dim:output:0lstm_cell_40/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������@:���������@:���������@:���������@*
	num_split2
lstm_cell_40/split�
lstm_cell_40/SigmoidSigmoidlstm_cell_40/split:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/Sigmoid�
lstm_cell_40/Sigmoid_1Sigmoidlstm_cell_40/split:output:1*
T0*'
_output_shapes
:���������@2
lstm_cell_40/Sigmoid_1�
lstm_cell_40/mulMullstm_cell_40/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/mul}
lstm_cell_40/ReluRelulstm_cell_40/split:output:2*
T0*'
_output_shapes
:���������@2
lstm_cell_40/Relu�
lstm_cell_40/mul_1Mullstm_cell_40/Sigmoid:y:0lstm_cell_40/Relu:activations:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/mul_1�
lstm_cell_40/add_1AddV2lstm_cell_40/mul:z:0lstm_cell_40/mul_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/add_1�
lstm_cell_40/Sigmoid_2Sigmoidlstm_cell_40/split:output:3*
T0*'
_output_shapes
:���������@2
lstm_cell_40/Sigmoid_2|
lstm_cell_40/Relu_1Relulstm_cell_40/add_1:z:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/Relu_1�
lstm_cell_40/mul_2Mullstm_cell_40/Sigmoid_2:y:0!lstm_cell_40/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
lstm_cell_40/mul_2�
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_40_matmul_readvariableop_resource-lstm_cell_40_matmul_1_readvariableop_resource,lstm_cell_40_biasadd_readvariableop_resource*
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
while_body_356168*
condR
while_cond_356167*K
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
NoOpNoOp$^lstm_cell_40/BiasAdd/ReadVariableOp#^lstm_cell_40/MatMul/ReadVariableOp%^lstm_cell_40/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2J
#lstm_cell_40/BiasAdd/ReadVariableOp#lstm_cell_40/BiasAdd/ReadVariableOp2H
"lstm_cell_40/MatMul/ReadVariableOp"lstm_cell_40/MatMul/ReadVariableOp2L
$lstm_cell_40/MatMul_1/ReadVariableOp$lstm_cell_40/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
K
lstm_20_input:
serving_default_lstm_20_input:0���������<
dense_100
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
!: 2dense_10/kernel
:2dense_10/bias
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
.:,	�2lstm_20/lstm_cell_40/kernel
8:6	@�2%lstm_20/lstm_cell_40/recurrent_kernel
(:&�2lstm_20/lstm_cell_40/bias
.:,	@�2lstm_21/lstm_cell_41/kernel
8:6	 �2%lstm_21/lstm_cell_41/recurrent_kernel
(:&�2lstm_21/lstm_cell_41/bias
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
&:$ 2Adam/dense_10/kernel/m
 :2Adam/dense_10/bias/m
3:1	�2"Adam/lstm_20/lstm_cell_40/kernel/m
=:;	@�2,Adam/lstm_20/lstm_cell_40/recurrent_kernel/m
-:+�2 Adam/lstm_20/lstm_cell_40/bias/m
3:1	@�2"Adam/lstm_21/lstm_cell_41/kernel/m
=:;	 �2,Adam/lstm_21/lstm_cell_41/recurrent_kernel/m
-:+�2 Adam/lstm_21/lstm_cell_41/bias/m
&:$ 2Adam/dense_10/kernel/v
 :2Adam/dense_10/bias/v
3:1	�2"Adam/lstm_20/lstm_cell_40/kernel/v
=:;	@�2,Adam/lstm_20/lstm_cell_40/recurrent_kernel/v
-:+�2 Adam/lstm_20/lstm_cell_40/bias/v
3:1	@�2"Adam/lstm_21/lstm_cell_41/kernel/v
=:;	 �2,Adam/lstm_21/lstm_cell_41/recurrent_kernel/v
-:+�2 Adam/lstm_21/lstm_cell_41/bias/v
�B�
!__inference__wrapped_model_353229lstm_20_input"�
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
.__inference_sequential_10_layer_call_fn_354855
.__inference_sequential_10_layer_call_fn_355419
.__inference_sequential_10_layer_call_fn_355440
.__inference_sequential_10_layer_call_fn_355321�
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
I__inference_sequential_10_layer_call_and_return_conditional_losses_355745
I__inference_sequential_10_layer_call_and_return_conditional_losses_356057
I__inference_sequential_10_layer_call_and_return_conditional_losses_355345
I__inference_sequential_10_layer_call_and_return_conditional_losses_355369�
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
(__inference_lstm_20_layer_call_fn_356068
(__inference_lstm_20_layer_call_fn_356079
(__inference_lstm_20_layer_call_fn_356090
(__inference_lstm_20_layer_call_fn_356101�
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
C__inference_lstm_20_layer_call_and_return_conditional_losses_356252
C__inference_lstm_20_layer_call_and_return_conditional_losses_356403
C__inference_lstm_20_layer_call_and_return_conditional_losses_356554
C__inference_lstm_20_layer_call_and_return_conditional_losses_356705�
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
(__inference_lstm_21_layer_call_fn_356716
(__inference_lstm_21_layer_call_fn_356727
(__inference_lstm_21_layer_call_fn_356738
(__inference_lstm_21_layer_call_fn_356749�
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
C__inference_lstm_21_layer_call_and_return_conditional_losses_356900
C__inference_lstm_21_layer_call_and_return_conditional_losses_357051
C__inference_lstm_21_layer_call_and_return_conditional_losses_357202
C__inference_lstm_21_layer_call_and_return_conditional_losses_357353�
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
+__inference_dropout_10_layer_call_fn_357358
+__inference_dropout_10_layer_call_fn_357363�
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
F__inference_dropout_10_layer_call_and_return_conditional_losses_357368
F__inference_dropout_10_layer_call_and_return_conditional_losses_357380�
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
)__inference_dense_10_layer_call_fn_357389�
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
D__inference_dense_10_layer_call_and_return_conditional_losses_357399�
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
$__inference_signature_wrapper_355398lstm_20_input"�
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
-__inference_lstm_cell_40_layer_call_fn_357416
-__inference_lstm_cell_40_layer_call_fn_357433�
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
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_357465
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_357497�
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
-__inference_lstm_cell_41_layer_call_fn_357514
-__inference_lstm_cell_41_layer_call_fn_357531�
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
H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_357563
H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_357595�
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
!__inference__wrapped_model_353229{&'()*+:�7
0�-
+�(
lstm_20_input���������
� "3�0
.
dense_10"�
dense_10����������
D__inference_dense_10_layer_call_and_return_conditional_losses_357399\/�,
%�"
 �
inputs��������� 
� "%�"
�
0���������
� |
)__inference_dense_10_layer_call_fn_357389O/�,
%�"
 �
inputs��������� 
� "�����������
F__inference_dropout_10_layer_call_and_return_conditional_losses_357368\3�0
)�&
 �
inputs��������� 
p 
� "%�"
�
0��������� 
� �
F__inference_dropout_10_layer_call_and_return_conditional_losses_357380\3�0
)�&
 �
inputs��������� 
p
� "%�"
�
0��������� 
� ~
+__inference_dropout_10_layer_call_fn_357358O3�0
)�&
 �
inputs��������� 
p 
� "���������� ~
+__inference_dropout_10_layer_call_fn_357363O3�0
)�&
 �
inputs��������� 
p
� "���������� �
C__inference_lstm_20_layer_call_and_return_conditional_losses_356252�&'(O�L
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
C__inference_lstm_20_layer_call_and_return_conditional_losses_356403�&'(O�L
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
C__inference_lstm_20_layer_call_and_return_conditional_losses_356554q&'(?�<
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
C__inference_lstm_20_layer_call_and_return_conditional_losses_356705q&'(?�<
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
(__inference_lstm_20_layer_call_fn_356068}&'(O�L
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
(__inference_lstm_20_layer_call_fn_356079}&'(O�L
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
(__inference_lstm_20_layer_call_fn_356090d&'(?�<
5�2
$�!
inputs���������

 
p 

 
� "����������@�
(__inference_lstm_20_layer_call_fn_356101d&'(?�<
5�2
$�!
inputs���������

 
p

 
� "����������@�
C__inference_lstm_21_layer_call_and_return_conditional_losses_356900})*+O�L
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
C__inference_lstm_21_layer_call_and_return_conditional_losses_357051})*+O�L
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
C__inference_lstm_21_layer_call_and_return_conditional_losses_357202m)*+?�<
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
C__inference_lstm_21_layer_call_and_return_conditional_losses_357353m)*+?�<
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
(__inference_lstm_21_layer_call_fn_356716p)*+O�L
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
(__inference_lstm_21_layer_call_fn_356727p)*+O�L
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
(__inference_lstm_21_layer_call_fn_356738`)*+?�<
5�2
$�!
inputs���������@

 
p 

 
� "���������� �
(__inference_lstm_21_layer_call_fn_356749`)*+?�<
5�2
$�!
inputs���������@

 
p

 
� "���������� �
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_357465�&'(��}
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
H__inference_lstm_cell_40_layer_call_and_return_conditional_losses_357497�&'(��}
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
-__inference_lstm_cell_40_layer_call_fn_357416�&'(��}
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
-__inference_lstm_cell_40_layer_call_fn_357433�&'(��}
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
H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_357563�)*+��}
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
H__inference_lstm_cell_41_layer_call_and_return_conditional_losses_357595�)*+��}
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
-__inference_lstm_cell_41_layer_call_fn_357514�)*+��}
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
-__inference_lstm_cell_41_layer_call_fn_357531�)*+��}
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
I__inference_sequential_10_layer_call_and_return_conditional_losses_355345u&'()*+B�?
8�5
+�(
lstm_20_input���������
p 

 
� "%�"
�
0���������
� �
I__inference_sequential_10_layer_call_and_return_conditional_losses_355369u&'()*+B�?
8�5
+�(
lstm_20_input���������
p

 
� "%�"
�
0���������
� �
I__inference_sequential_10_layer_call_and_return_conditional_losses_355745n&'()*+;�8
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
I__inference_sequential_10_layer_call_and_return_conditional_losses_356057n&'()*+;�8
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
.__inference_sequential_10_layer_call_fn_354855h&'()*+B�?
8�5
+�(
lstm_20_input���������
p 

 
� "�����������
.__inference_sequential_10_layer_call_fn_355321h&'()*+B�?
8�5
+�(
lstm_20_input���������
p

 
� "�����������
.__inference_sequential_10_layer_call_fn_355419a&'()*+;�8
1�.
$�!
inputs���������
p 

 
� "�����������
.__inference_sequential_10_layer_call_fn_355440a&'()*+;�8
1�.
$�!
inputs���������
p

 
� "�����������
$__inference_signature_wrapper_355398�&'()*+K�H
� 
A�>
<
lstm_20_input+�(
lstm_20_input���������"3�0
.
dense_10"�
dense_10���������