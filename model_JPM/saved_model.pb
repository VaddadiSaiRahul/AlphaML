┤┐%
щ┐
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
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
delete_old_dirsbool(И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
╛
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
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
Ў
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
л
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handleКщelement_dtype"
element_dtypetype"

shape_typetype:
2	
Ъ
TensorListReserve
element_shape"
shape_type
num_elements#
handleКщelement_dtype"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
Ф
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
И"serve*2.6.22v2.6.1-9-gc2363d6d0258╥¤#
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

: *
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
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
С
lstm_6/lstm_cell_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*+
shared_namelstm_6/lstm_cell_12/kernel
К
.lstm_6/lstm_cell_12/kernel/Read/ReadVariableOpReadVariableOplstm_6/lstm_cell_12/kernel*
_output_shapes
:	А*
dtype0
е
$lstm_6/lstm_cell_12/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@А*5
shared_name&$lstm_6/lstm_cell_12/recurrent_kernel
Ю
8lstm_6/lstm_cell_12/recurrent_kernel/Read/ReadVariableOpReadVariableOp$lstm_6/lstm_cell_12/recurrent_kernel*
_output_shapes
:	@А*
dtype0
Й
lstm_6/lstm_cell_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_namelstm_6/lstm_cell_12/bias
В
,lstm_6/lstm_cell_12/bias/Read/ReadVariableOpReadVariableOplstm_6/lstm_cell_12/bias*
_output_shapes	
:А*
dtype0
С
lstm_7/lstm_cell_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@А*+
shared_namelstm_7/lstm_cell_13/kernel
К
.lstm_7/lstm_cell_13/kernel/Read/ReadVariableOpReadVariableOplstm_7/lstm_cell_13/kernel*
_output_shapes
:	@А*
dtype0
е
$lstm_7/lstm_cell_13/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*5
shared_name&$lstm_7/lstm_cell_13/recurrent_kernel
Ю
8lstm_7/lstm_cell_13/recurrent_kernel/Read/ReadVariableOpReadVariableOp$lstm_7/lstm_cell_13/recurrent_kernel*
_output_shapes
:	 А*
dtype0
Й
lstm_7/lstm_cell_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_namelstm_7/lstm_cell_13/bias
В
,lstm_7/lstm_cell_13/bias/Read/ReadVariableOpReadVariableOplstm_7/lstm_cell_13/bias*
_output_shapes	
:А*
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
Ж
Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_3/kernel/m

)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes

: *
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:*
dtype0
Я
!Adam/lstm_6/lstm_cell_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*2
shared_name#!Adam/lstm_6/lstm_cell_12/kernel/m
Ш
5Adam/lstm_6/lstm_cell_12/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/lstm_6/lstm_cell_12/kernel/m*
_output_shapes
:	А*
dtype0
│
+Adam/lstm_6/lstm_cell_12/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@А*<
shared_name-+Adam/lstm_6/lstm_cell_12/recurrent_kernel/m
м
?Adam/lstm_6/lstm_cell_12/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp+Adam/lstm_6/lstm_cell_12/recurrent_kernel/m*
_output_shapes
:	@А*
dtype0
Ч
Adam/lstm_6/lstm_cell_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*0
shared_name!Adam/lstm_6/lstm_cell_12/bias/m
Р
3Adam/lstm_6/lstm_cell_12/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_6/lstm_cell_12/bias/m*
_output_shapes	
:А*
dtype0
Я
!Adam/lstm_7/lstm_cell_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@А*2
shared_name#!Adam/lstm_7/lstm_cell_13/kernel/m
Ш
5Adam/lstm_7/lstm_cell_13/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/lstm_7/lstm_cell_13/kernel/m*
_output_shapes
:	@А*
dtype0
│
+Adam/lstm_7/lstm_cell_13/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*<
shared_name-+Adam/lstm_7/lstm_cell_13/recurrent_kernel/m
м
?Adam/lstm_7/lstm_cell_13/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp+Adam/lstm_7/lstm_cell_13/recurrent_kernel/m*
_output_shapes
:	 А*
dtype0
Ч
Adam/lstm_7/lstm_cell_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*0
shared_name!Adam/lstm_7/lstm_cell_13/bias/m
Р
3Adam/lstm_7/lstm_cell_13/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_7/lstm_cell_13/bias/m*
_output_shapes	
:А*
dtype0
Ж
Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_3/kernel/v

)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes

: *
dtype0
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
:*
dtype0
Я
!Adam/lstm_6/lstm_cell_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*2
shared_name#!Adam/lstm_6/lstm_cell_12/kernel/v
Ш
5Adam/lstm_6/lstm_cell_12/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/lstm_6/lstm_cell_12/kernel/v*
_output_shapes
:	А*
dtype0
│
+Adam/lstm_6/lstm_cell_12/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@А*<
shared_name-+Adam/lstm_6/lstm_cell_12/recurrent_kernel/v
м
?Adam/lstm_6/lstm_cell_12/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp+Adam/lstm_6/lstm_cell_12/recurrent_kernel/v*
_output_shapes
:	@А*
dtype0
Ч
Adam/lstm_6/lstm_cell_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*0
shared_name!Adam/lstm_6/lstm_cell_12/bias/v
Р
3Adam/lstm_6/lstm_cell_12/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_6/lstm_cell_12/bias/v*
_output_shapes	
:А*
dtype0
Я
!Adam/lstm_7/lstm_cell_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@А*2
shared_name#!Adam/lstm_7/lstm_cell_13/kernel/v
Ш
5Adam/lstm_7/lstm_cell_13/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/lstm_7/lstm_cell_13/kernel/v*
_output_shapes
:	@А*
dtype0
│
+Adam/lstm_7/lstm_cell_13/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*<
shared_name-+Adam/lstm_7/lstm_cell_13/recurrent_kernel/v
м
?Adam/lstm_7/lstm_cell_13/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp+Adam/lstm_7/lstm_cell_13/recurrent_kernel/v*
_output_shapes
:	 А*
dtype0
Ч
Adam/lstm_7/lstm_cell_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*0
shared_name!Adam/lstm_7/lstm_cell_13/bias/v
Р
3Adam/lstm_7/lstm_cell_13/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_7/lstm_cell_13/bias/v*
_output_shapes	
:А*
dtype0

NoOpNoOp
д3
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*▀2
value╒2B╥2 B╦2
є
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
╨
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
н
trainable_variables
regularization_losses
,layer_metrics

-layers
	variables
.metrics
/non_trainable_variables
0layer_regularization_losses
 
О
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
╣
trainable_variables
regularization_losses
6layer_metrics

7layers
	variables
8layer_regularization_losses
9metrics
:non_trainable_variables

;states
О
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
╣
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
н
trainable_variables
regularization_losses
Glayer_metrics

Hlayers
	variables
Imetrics
Jnon_trainable_variables
Klayer_regularization_losses
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
н
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
`^
VARIABLE_VALUElstm_6/lstm_cell_12/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUE$lstm_6/lstm_cell_12/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUElstm_6/lstm_cell_12/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUElstm_7/lstm_cell_13/kernel0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUE$lstm_7/lstm_cell_13/recurrent_kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUElstm_7/lstm_cell_13/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
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
н
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
н
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
}{
VARIABLE_VALUEAdam/dense_3/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ДБ
VARIABLE_VALUE!Adam/lstm_6/lstm_cell_12/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ОЛ
VARIABLE_VALUE+Adam/lstm_6/lstm_cell_12/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/lstm_6/lstm_cell_12/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ДБ
VARIABLE_VALUE!Adam/lstm_7/lstm_cell_13/kernel/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ОЛ
VARIABLE_VALUE+Adam/lstm_7/lstm_cell_13/recurrent_kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/lstm_7/lstm_cell_13/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ДБ
VARIABLE_VALUE!Adam/lstm_6/lstm_cell_12/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ОЛ
VARIABLE_VALUE+Adam/lstm_6/lstm_cell_12/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/lstm_6/lstm_cell_12/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ДБ
VARIABLE_VALUE!Adam/lstm_7/lstm_cell_13/kernel/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ОЛ
VARIABLE_VALUE+Adam/lstm_7/lstm_cell_13/recurrent_kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdam/lstm_7/lstm_cell_13/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
З
serving_default_lstm_6_inputPlaceholder*+
_output_shapes
:         *
dtype0* 
shape:         
Э
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_6_inputlstm_6/lstm_cell_12/kernel$lstm_6/lstm_cell_12/recurrent_kernellstm_6/lstm_cell_12/biaslstm_7/lstm_cell_13/kernel$lstm_7/lstm_cell_13/recurrent_kernellstm_7/lstm_cell_13/biasdense_3/kerneldense_3/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_145677
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ы
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp.lstm_6/lstm_cell_12/kernel/Read/ReadVariableOp8lstm_6/lstm_cell_12/recurrent_kernel/Read/ReadVariableOp,lstm_6/lstm_cell_12/bias/Read/ReadVariableOp.lstm_7/lstm_cell_13/kernel/Read/ReadVariableOp8lstm_7/lstm_cell_13/recurrent_kernel/Read/ReadVariableOp,lstm_7/lstm_cell_13/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp5Adam/lstm_6/lstm_cell_12/kernel/m/Read/ReadVariableOp?Adam/lstm_6/lstm_cell_12/recurrent_kernel/m/Read/ReadVariableOp3Adam/lstm_6/lstm_cell_12/bias/m/Read/ReadVariableOp5Adam/lstm_7/lstm_cell_13/kernel/m/Read/ReadVariableOp?Adam/lstm_7/lstm_cell_13/recurrent_kernel/m/Read/ReadVariableOp3Adam/lstm_7/lstm_cell_13/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOp5Adam/lstm_6/lstm_cell_12/kernel/v/Read/ReadVariableOp?Adam/lstm_6/lstm_cell_12/recurrent_kernel/v/Read/ReadVariableOp3Adam/lstm_6/lstm_cell_12/bias/v/Read/ReadVariableOp5Adam/lstm_7/lstm_cell_13/kernel/v/Read/ReadVariableOp?Adam/lstm_7/lstm_cell_13/recurrent_kernel/v/Read/ReadVariableOp3Adam/lstm_7/lstm_cell_13/bias/v/Read/ReadVariableOpConst*,
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
GPU 2J 8В *(
f#R!
__inference__traced_save_147990
·
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_3/kerneldense_3/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_6/lstm_cell_12/kernel$lstm_6/lstm_cell_12/recurrent_kernellstm_6/lstm_cell_12/biaslstm_7/lstm_cell_13/kernel$lstm_7/lstm_cell_13/recurrent_kernellstm_7/lstm_cell_13/biastotalcountAdam/dense_3/kernel/mAdam/dense_3/bias/m!Adam/lstm_6/lstm_cell_12/kernel/m+Adam/lstm_6/lstm_cell_12/recurrent_kernel/mAdam/lstm_6/lstm_cell_12/bias/m!Adam/lstm_7/lstm_cell_13/kernel/m+Adam/lstm_7/lstm_cell_13/recurrent_kernel/mAdam/lstm_7/lstm_cell_13/bias/mAdam/dense_3/kernel/vAdam/dense_3/bias/v!Adam/lstm_6/lstm_cell_12/kernel/v+Adam/lstm_6/lstm_cell_12/recurrent_kernel/vAdam/lstm_6/lstm_cell_12/bias/v!Adam/lstm_7/lstm_cell_13/kernel/v+Adam/lstm_7/lstm_cell_13/recurrent_kernel/vAdam/lstm_7/lstm_cell_13/bias/v*+
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
GPU 2J 8В *+
f&R$
"__inference__traced_restore_148093Уъ"
л
d
E__inference_dropout_3_layer_call_and_return_conditional_losses_147659

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:          2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape┤
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:          *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2
dropout/GreaterEqual/y╛
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:          2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:          2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:          :O K
'
_output_shapes
:          
 
_user_specified_nameinputs
╫
╢
'__inference_lstm_6_layer_call_fn_146358
inputs_0
unknown:	А
	unknown_0:	@А
	unknown_1:	А
identityИвStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_1438762
StatefulPartitionedCallИ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
п
╙
%sequential_3_lstm_7_while_cond_143416D
@sequential_3_lstm_7_while_sequential_3_lstm_7_while_loop_counterJ
Fsequential_3_lstm_7_while_sequential_3_lstm_7_while_maximum_iterations)
%sequential_3_lstm_7_while_placeholder+
'sequential_3_lstm_7_while_placeholder_1+
'sequential_3_lstm_7_while_placeholder_2+
'sequential_3_lstm_7_while_placeholder_3F
Bsequential_3_lstm_7_while_less_sequential_3_lstm_7_strided_slice_1\
Xsequential_3_lstm_7_while_sequential_3_lstm_7_while_cond_143416___redundant_placeholder0\
Xsequential_3_lstm_7_while_sequential_3_lstm_7_while_cond_143416___redundant_placeholder1\
Xsequential_3_lstm_7_while_sequential_3_lstm_7_while_cond_143416___redundant_placeholder2\
Xsequential_3_lstm_7_while_sequential_3_lstm_7_while_cond_143416___redundant_placeholder3&
"sequential_3_lstm_7_while_identity
╘
sequential_3/lstm_7/while/LessLess%sequential_3_lstm_7_while_placeholderBsequential_3_lstm_7_while_less_sequential_3_lstm_7_strided_slice_1*
T0*
_output_shapes
: 2 
sequential_3/lstm_7/while/LessЩ
"sequential_3/lstm_7/while/IdentityIdentity"sequential_3/lstm_7/while/Less:z:0*
T0
*
_output_shapes
: 2$
"sequential_3/lstm_7/while/Identity"Q
"sequential_3_lstm_7_while_identity+sequential_3/lstm_7/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :          :          : ::::: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
ЮF
Д
B__inference_lstm_6_layer_call_and_return_conditional_losses_143666

inputs&
lstm_cell_12_143584:	А&
lstm_cell_12_143586:	@А"
lstm_cell_12_143588:	А
identityИв$lstm_cell_12/StatefulPartitionedCallвwhileD
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
strided_slice/stack_2т
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
B :ш2
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
zeros/packed/1Г
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
:         @2
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
B :ш2
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
zeros_1/packed/1Й
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
:         @2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  2
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_2Э
$lstm_cell_12/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_12_143584lstm_cell_12_143586lstm_cell_12_143588*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         @:         @:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_12_layer_call_and_return_conditional_losses_1435832&
$lstm_cell_12/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
TensorArrayV2_1/element_shape╕
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter└
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_12_143584lstm_cell_12_143586lstm_cell_12_143588*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_143597*
condR
while_cond_143596*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  @*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permо
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  @2
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
 :                  @2

Identity}
NoOpNoOp%^lstm_cell_12/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2L
$lstm_cell_12/StatefulPartitionedCall$lstm_cell_12/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
Ш?
╨
while_body_146749
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_12_matmul_readvariableop_resource_0:	АH
5while_lstm_cell_12_matmul_1_readvariableop_resource_0:	@АC
4while_lstm_cell_12_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_12_matmul_readvariableop_resource:	АF
3while_lstm_cell_12_matmul_1_readvariableop_resource:	@АA
2while_lstm_cell_12_biasadd_readvariableop_resource:	АИв)while/lstm_cell_12/BiasAdd/ReadVariableOpв(while/lstm_cell_12/MatMul/ReadVariableOpв*while/lstm_cell_12/MatMul_1/ReadVariableOp├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem╔
(while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02*
(while/lstm_cell_12/MatMul/ReadVariableOp╫
while/lstm_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_12/MatMul╧
*while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02,
*while/lstm_cell_12/MatMul_1/ReadVariableOp└
while/lstm_cell_12/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_12/MatMul_1╕
while/lstm_cell_12/addAddV2#while/lstm_cell_12/MatMul:product:0%while/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_12/add╚
)while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02+
)while/lstm_cell_12/BiasAdd/ReadVariableOp┼
while/lstm_cell_12/BiasAddBiasAddwhile/lstm_cell_12/add:z:01while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_12/BiasAddК
"while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_12/split/split_dimЛ
while/lstm_cell_12/splitSplit+while/lstm_cell_12/split/split_dim:output:0#while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
while/lstm_cell_12/splitШ
while/lstm_cell_12/SigmoidSigmoid!while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/SigmoidЬ
while/lstm_cell_12/Sigmoid_1Sigmoid!while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/Sigmoid_1а
while/lstm_cell_12/mulMul while/lstm_cell_12/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/mulП
while/lstm_cell_12/ReluRelu!while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/Relu┤
while/lstm_cell_12/mul_1Mulwhile/lstm_cell_12/Sigmoid:y:0%while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/mul_1й
while/lstm_cell_12/add_1AddV2while/lstm_cell_12/mul:z:0while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/add_1Ь
while/lstm_cell_12/Sigmoid_2Sigmoid!while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/Sigmoid_2О
while/lstm_cell_12/Relu_1Reluwhile/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/Relu_1╕
while/lstm_cell_12/mul_2Mul while/lstm_cell_12/Sigmoid_2:y:0'while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/mul_2р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_12/mul_2:z:0*
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
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3Н
while/Identity_4Identitywhile/lstm_cell_12/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         @2
while/Identity_4Н
while/Identity_5Identitywhile/lstm_cell_12/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         @2
while/Identity_5▐

while/NoOpNoOp*^while/lstm_cell_12/BiasAdd/ReadVariableOp)^while/lstm_cell_12/MatMul/ReadVariableOp+^while/lstm_cell_12/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_12_biasadd_readvariableop_resource4while_lstm_cell_12_biasadd_readvariableop_resource_0"l
3while_lstm_cell_12_matmul_1_readvariableop_resource5while_lstm_cell_12_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_12_matmul_readvariableop_resource3while_lstm_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         @:         @: : : : : 2V
)while/lstm_cell_12/BiasAdd/ReadVariableOp)while/lstm_cell_12/BiasAdd/ReadVariableOp2T
(while/lstm_cell_12/MatMul/ReadVariableOp(while/lstm_cell_12/MatMul/ReadVariableOp2X
*while/lstm_cell_12/MatMul_1/ReadVariableOp*while/lstm_cell_12/MatMul_1/ReadVariableOp: 
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
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
╒
├
while_cond_146748
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_146748___redundant_placeholder04
0while_while_cond_146748___redundant_placeholder14
0while_while_cond_146748___redundant_placeholder24
0while_while_cond_146748___redundant_placeholder3
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
@: : : : :         @:         @: ::::: 
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
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
Ш?
╨
while_body_146900
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_12_matmul_readvariableop_resource_0:	АH
5while_lstm_cell_12_matmul_1_readvariableop_resource_0:	@АC
4while_lstm_cell_12_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_12_matmul_readvariableop_resource:	АF
3while_lstm_cell_12_matmul_1_readvariableop_resource:	@АA
2while_lstm_cell_12_biasadd_readvariableop_resource:	АИв)while/lstm_cell_12/BiasAdd/ReadVariableOpв(while/lstm_cell_12/MatMul/ReadVariableOpв*while/lstm_cell_12/MatMul_1/ReadVariableOp├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem╔
(while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02*
(while/lstm_cell_12/MatMul/ReadVariableOp╫
while/lstm_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_12/MatMul╧
*while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02,
*while/lstm_cell_12/MatMul_1/ReadVariableOp└
while/lstm_cell_12/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_12/MatMul_1╕
while/lstm_cell_12/addAddV2#while/lstm_cell_12/MatMul:product:0%while/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_12/add╚
)while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02+
)while/lstm_cell_12/BiasAdd/ReadVariableOp┼
while/lstm_cell_12/BiasAddBiasAddwhile/lstm_cell_12/add:z:01while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_12/BiasAddК
"while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_12/split/split_dimЛ
while/lstm_cell_12/splitSplit+while/lstm_cell_12/split/split_dim:output:0#while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
while/lstm_cell_12/splitШ
while/lstm_cell_12/SigmoidSigmoid!while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/SigmoidЬ
while/lstm_cell_12/Sigmoid_1Sigmoid!while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/Sigmoid_1а
while/lstm_cell_12/mulMul while/lstm_cell_12/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/mulП
while/lstm_cell_12/ReluRelu!while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/Relu┤
while/lstm_cell_12/mul_1Mulwhile/lstm_cell_12/Sigmoid:y:0%while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/mul_1й
while/lstm_cell_12/add_1AddV2while/lstm_cell_12/mul:z:0while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/add_1Ь
while/lstm_cell_12/Sigmoid_2Sigmoid!while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/Sigmoid_2О
while/lstm_cell_12/Relu_1Reluwhile/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/Relu_1╕
while/lstm_cell_12/mul_2Mul while/lstm_cell_12/Sigmoid_2:y:0'while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/mul_2р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_12/mul_2:z:0*
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
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3Н
while/Identity_4Identitywhile/lstm_cell_12/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         @2
while/Identity_4Н
while/Identity_5Identitywhile/lstm_cell_12/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         @2
while/Identity_5▐

while/NoOpNoOp*^while/lstm_cell_12/BiasAdd/ReadVariableOp)^while/lstm_cell_12/MatMul/ReadVariableOp+^while/lstm_cell_12/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_12_biasadd_readvariableop_resource4while_lstm_cell_12_biasadd_readvariableop_resource_0"l
3while_lstm_cell_12_matmul_1_readvariableop_resource5while_lstm_cell_12_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_12_matmul_readvariableop_resource3while_lstm_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         @:         @: : : : : 2V
)while/lstm_cell_12/BiasAdd/ReadVariableOp)while/lstm_cell_12/BiasAdd/ReadVariableOp2T
(while/lstm_cell_12/MatMul/ReadVariableOp(while/lstm_cell_12/MatMul/ReadVariableOp2X
*while/lstm_cell_12/MatMul_1/ReadVariableOp*while/lstm_cell_12/MatMul_1/ReadVariableOp: 
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
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
Ш?
╨
while_body_145247
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_13_matmul_readvariableop_resource_0:	@АH
5while_lstm_cell_13_matmul_1_readvariableop_resource_0:	 АC
4while_lstm_cell_13_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_13_matmul_readvariableop_resource:	@АF
3while_lstm_cell_13_matmul_1_readvariableop_resource:	 АA
2while_lstm_cell_13_biasadd_readvariableop_resource:	АИв)while/lstm_cell_13/BiasAdd/ReadVariableOpв(while/lstm_cell_13/MatMul/ReadVariableOpв*while/lstm_cell_13/MatMul_1/ReadVariableOp├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         @*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem╔
(while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02*
(while/lstm_cell_13/MatMul/ReadVariableOp╫
while/lstm_cell_13/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_13/MatMul╧
*while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02,
*while/lstm_cell_13/MatMul_1/ReadVariableOp└
while/lstm_cell_13/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_13/MatMul_1╕
while/lstm_cell_13/addAddV2#while/lstm_cell_13/MatMul:product:0%while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_13/add╚
)while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02+
)while/lstm_cell_13/BiasAdd/ReadVariableOp┼
while/lstm_cell_13/BiasAddBiasAddwhile/lstm_cell_13/add:z:01while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_13/BiasAddК
"while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_13/split/split_dimЛ
while/lstm_cell_13/splitSplit+while/lstm_cell_13/split/split_dim:output:0#while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/lstm_cell_13/splitШ
while/lstm_cell_13/SigmoidSigmoid!while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:          2
while/lstm_cell_13/SigmoidЬ
while/lstm_cell_13/Sigmoid_1Sigmoid!while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:          2
while/lstm_cell_13/Sigmoid_1а
while/lstm_cell_13/mulMul while/lstm_cell_13/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/lstm_cell_13/mulП
while/lstm_cell_13/ReluRelu!while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:          2
while/lstm_cell_13/Relu┤
while/lstm_cell_13/mul_1Mulwhile/lstm_cell_13/Sigmoid:y:0%while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:          2
while/lstm_cell_13/mul_1й
while/lstm_cell_13/add_1AddV2while/lstm_cell_13/mul:z:0while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:          2
while/lstm_cell_13/add_1Ь
while/lstm_cell_13/Sigmoid_2Sigmoid!while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:          2
while/lstm_cell_13/Sigmoid_2О
while/lstm_cell_13/Relu_1Reluwhile/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:          2
while/lstm_cell_13/Relu_1╕
while/lstm_cell_13/mul_2Mul while/lstm_cell_13/Sigmoid_2:y:0'while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:          2
while/lstm_cell_13/mul_2р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_13/mul_2:z:0*
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
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3Н
while/Identity_4Identitywhile/lstm_cell_13/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:          2
while/Identity_4Н
while/Identity_5Identitywhile/lstm_cell_13/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:          2
while/Identity_5▐

while/NoOpNoOp*^while/lstm_cell_13/BiasAdd/ReadVariableOp)^while/lstm_cell_13/MatMul/ReadVariableOp+^while/lstm_cell_13/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_13_biasadd_readvariableop_resource4while_lstm_cell_13_biasadd_readvariableop_resource_0"l
3while_lstm_cell_13_matmul_1_readvariableop_resource5while_lstm_cell_13_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_13_matmul_readvariableop_resource3while_lstm_cell_13_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :          :          : : : : : 2V
)while/lstm_cell_13/BiasAdd/ReadVariableOp)while/lstm_cell_13/BiasAdd/ReadVariableOp2T
(while/lstm_cell_13/MatMul/ReadVariableOp(while/lstm_cell_13/MatMul/ReadVariableOp2X
*while/lstm_cell_13/MatMul_1/ReadVariableOp*while/lstm_cell_13/MatMul_1/ReadVariableOp: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
╒
├
while_cond_143806
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_143806___redundant_placeholder04
0while_while_cond_143806___redundant_placeholder14
0while_while_cond_143806___redundant_placeholder24
0while_while_cond_143806___redundant_placeholder3
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
@: : : : :         @:         @: ::::: 
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
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
╦
╒
H__inference_sequential_3_layer_call_and_return_conditional_losses_145624
lstm_6_input 
lstm_6_145603:	А 
lstm_6_145605:	@А
lstm_6_145607:	А 
lstm_7_145610:	@А 
lstm_7_145612:	 А
lstm_7_145614:	А 
dense_3_145618: 
dense_3_145620:
identityИвdense_3/StatefulPartitionedCallвlstm_6/StatefulPartitionedCallвlstm_7/StatefulPartitionedCallе
lstm_6/StatefulPartitionedCallStatefulPartitionedCalllstm_6_inputlstm_6_145603lstm_6_145605lstm_6_145607*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_1449252 
lstm_6/StatefulPartitionedCall╝
lstm_7/StatefulPartitionedCallStatefulPartitionedCall'lstm_6/StatefulPartitionedCall:output:0lstm_7_145610lstm_7_145612lstm_7_145614*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_7_layer_call_and_return_conditional_losses_1450832 
lstm_7/StatefulPartitionedCall°
dropout_3/PartitionedCallPartitionedCall'lstm_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_1450962
dropout_3/PartitionedCallл
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_3_145618dense_3_145620*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_1451082!
dense_3/StatefulPartitionedCallГ
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identity▓
NoOpNoOp ^dense_3/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall^lstm_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall2@
lstm_7/StatefulPartitionedCalllstm_7/StatefulPartitionedCall:Y U
+
_output_shapes
:         
&
_user_specified_namelstm_6_input
х[
Ъ
B__inference_lstm_7_layer_call_and_return_conditional_losses_145331

inputs>
+lstm_cell_13_matmul_readvariableop_resource:	@А@
-lstm_cell_13_matmul_1_readvariableop_resource:	 А;
,lstm_cell_13_biasadd_readvariableop_resource:	А
identityИв#lstm_cell_13/BiasAdd/ReadVariableOpв"lstm_cell_13/MatMul/ReadVariableOpв$lstm_cell_13/MatMul_1/ReadVariableOpвwhileD
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
strided_slice/stack_2т
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
B :ш2
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
zeros/packed/1Г
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
:          2
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
B :ш2
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
zeros_1/packed/1Й
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
:          2	
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
:         @2
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slice_2╡
"lstm_cell_13/MatMul/ReadVariableOpReadVariableOp+lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	@А*
dtype02$
"lstm_cell_13/MatMul/ReadVariableOpн
lstm_cell_13/MatMulMatMulstrided_slice_2:output:0*lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_13/MatMul╗
$lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02&
$lstm_cell_13/MatMul_1/ReadVariableOpй
lstm_cell_13/MatMul_1MatMulzeros:output:0,lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_13/MatMul_1а
lstm_cell_13/addAddV2lstm_cell_13/MatMul:product:0lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_cell_13/add┤
#lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#lstm_cell_13/BiasAdd/ReadVariableOpн
lstm_cell_13/BiasAddBiasAddlstm_cell_13/add:z:0+lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_13/BiasAdd~
lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_13/split/split_dimє
lstm_cell_13/splitSplit%lstm_cell_13/split/split_dim:output:0lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
lstm_cell_13/splitЖ
lstm_cell_13/SigmoidSigmoidlstm_cell_13/split:output:0*
T0*'
_output_shapes
:          2
lstm_cell_13/SigmoidК
lstm_cell_13/Sigmoid_1Sigmoidlstm_cell_13/split:output:1*
T0*'
_output_shapes
:          2
lstm_cell_13/Sigmoid_1Л
lstm_cell_13/mulMullstm_cell_13/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
lstm_cell_13/mul}
lstm_cell_13/ReluRelulstm_cell_13/split:output:2*
T0*'
_output_shapes
:          2
lstm_cell_13/ReluЬ
lstm_cell_13/mul_1Mullstm_cell_13/Sigmoid:y:0lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:          2
lstm_cell_13/mul_1С
lstm_cell_13/add_1AddV2lstm_cell_13/mul:z:0lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:          2
lstm_cell_13/add_1К
lstm_cell_13/Sigmoid_2Sigmoidlstm_cell_13/split:output:3*
T0*'
_output_shapes
:          2
lstm_cell_13/Sigmoid_2|
lstm_cell_13/Relu_1Relulstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:          2
lstm_cell_13/Relu_1а
lstm_cell_13/mul_2Mullstm_cell_13/Sigmoid_2:y:0!lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:          2
lstm_cell_13/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2
TensorArrayV2_1/element_shape╕
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterЛ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_13_matmul_readvariableop_resource-lstm_cell_13_matmul_1_readvariableop_resource,lstm_cell_13_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :          :          : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_145247*
condR
while_cond_145246*K
output_shapes:
8: : : : :          :          : : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permе
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:          2
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
:          2

Identity╚
NoOpNoOp$^lstm_cell_13/BiasAdd/ReadVariableOp#^lstm_cell_13/MatMul/ReadVariableOp%^lstm_cell_13/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         @: : : 2J
#lstm_cell_13/BiasAdd/ReadVariableOp#lstm_cell_13/BiasAdd/ReadVariableOp2H
"lstm_cell_13/MatMul/ReadVariableOp"lstm_cell_13/MatMul/ReadVariableOp2L
$lstm_cell_13/MatMul_1/ReadVariableOp$lstm_cell_13/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
Ы\
Ь
B__inference_lstm_7_layer_call_and_return_conditional_losses_147330
inputs_0>
+lstm_cell_13_matmul_readvariableop_resource:	@А@
-lstm_cell_13_matmul_1_readvariableop_resource:	 А;
,lstm_cell_13_biasadd_readvariableop_resource:	А
identityИв#lstm_cell_13/BiasAdd/ReadVariableOpв"lstm_cell_13/MatMul/ReadVariableOpв$lstm_cell_13/MatMul_1/ReadVariableOpвwhileF
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
strided_slice/stack_2т
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
B :ш2
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
zeros/packed/1Г
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
:          2
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
B :ш2
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
zeros_1/packed/1Й
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
:          2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЕ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  @2
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slice_2╡
"lstm_cell_13/MatMul/ReadVariableOpReadVariableOp+lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	@А*
dtype02$
"lstm_cell_13/MatMul/ReadVariableOpн
lstm_cell_13/MatMulMatMulstrided_slice_2:output:0*lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_13/MatMul╗
$lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02&
$lstm_cell_13/MatMul_1/ReadVariableOpй
lstm_cell_13/MatMul_1MatMulzeros:output:0,lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_13/MatMul_1а
lstm_cell_13/addAddV2lstm_cell_13/MatMul:product:0lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_cell_13/add┤
#lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#lstm_cell_13/BiasAdd/ReadVariableOpн
lstm_cell_13/BiasAddBiasAddlstm_cell_13/add:z:0+lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_13/BiasAdd~
lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_13/split/split_dimє
lstm_cell_13/splitSplit%lstm_cell_13/split/split_dim:output:0lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
lstm_cell_13/splitЖ
lstm_cell_13/SigmoidSigmoidlstm_cell_13/split:output:0*
T0*'
_output_shapes
:          2
lstm_cell_13/SigmoidК
lstm_cell_13/Sigmoid_1Sigmoidlstm_cell_13/split:output:1*
T0*'
_output_shapes
:          2
lstm_cell_13/Sigmoid_1Л
lstm_cell_13/mulMullstm_cell_13/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
lstm_cell_13/mul}
lstm_cell_13/ReluRelulstm_cell_13/split:output:2*
T0*'
_output_shapes
:          2
lstm_cell_13/ReluЬ
lstm_cell_13/mul_1Mullstm_cell_13/Sigmoid:y:0lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:          2
lstm_cell_13/mul_1С
lstm_cell_13/add_1AddV2lstm_cell_13/mul:z:0lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:          2
lstm_cell_13/add_1К
lstm_cell_13/Sigmoid_2Sigmoidlstm_cell_13/split:output:3*
T0*'
_output_shapes
:          2
lstm_cell_13/Sigmoid_2|
lstm_cell_13/Relu_1Relulstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:          2
lstm_cell_13/Relu_1а
lstm_cell_13/mul_2Mullstm_cell_13/Sigmoid_2:y:0!lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:          2
lstm_cell_13/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2
TensorArrayV2_1/element_shape╕
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterЛ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_13_matmul_readvariableop_resource-lstm_cell_13_matmul_1_readvariableop_resource,lstm_cell_13_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :          :          : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_147246*
condR
while_cond_147245*K
output_shapes:
8: : : : :          :          : : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                   *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permо
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                   2
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
:          2

Identity╚
NoOpNoOp$^lstm_cell_13/BiasAdd/ReadVariableOp#^lstm_cell_13/MatMul/ReadVariableOp%^lstm_cell_13/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  @: : : 2J
#lstm_cell_13/BiasAdd/ReadVariableOp#lstm_cell_13/BiasAdd/ReadVariableOp2H
"lstm_cell_13/MatMul/ReadVariableOp"lstm_cell_13/MatMul/ReadVariableOp2L
$lstm_cell_13/MatMul_1/ReadVariableOp$lstm_cell_13/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  @
"
_user_specified_name
inputs/0
щ
є
H__inference_sequential_3_layer_call_and_return_conditional_losses_145560

inputs 
lstm_6_145539:	А 
lstm_6_145541:	@А
lstm_6_145543:	А 
lstm_7_145546:	@А 
lstm_7_145548:	 А
lstm_7_145550:	А 
dense_3_145554: 
dense_3_145556:
identityИвdense_3/StatefulPartitionedCallв!dropout_3/StatefulPartitionedCallвlstm_6/StatefulPartitionedCallвlstm_7/StatefulPartitionedCallЯ
lstm_6/StatefulPartitionedCallStatefulPartitionedCallinputslstm_6_145539lstm_6_145541lstm_6_145543*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_1455042 
lstm_6/StatefulPartitionedCall╝
lstm_7/StatefulPartitionedCallStatefulPartitionedCall'lstm_6/StatefulPartitionedCall:output:0lstm_7_145546lstm_7_145548lstm_7_145550*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_7_layer_call_and_return_conditional_losses_1453312 
lstm_7/StatefulPartitionedCallР
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_1451642#
!dropout_3/StatefulPartitionedCall│
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_3_145554dense_3_145556*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_1451082!
dense_3/StatefulPartitionedCallГ
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identity╓
NoOpNoOp ^dense_3/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall^lstm_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall2@
lstm_7/StatefulPartitionedCalllstm_7/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╪%
у
while_body_143597
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_12_143621_0:	А.
while_lstm_cell_12_143623_0:	@А*
while_lstm_cell_12_143625_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_12_143621:	А,
while_lstm_cell_12_143623:	@А(
while_lstm_cell_12_143625:	АИв*while/lstm_cell_12/StatefulPartitionedCall├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemс
*while/lstm_cell_12/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_12_143621_0while_lstm_cell_12_143623_0while_lstm_cell_12_143625_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         @:         @:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_12_layer_call_and_return_conditional_losses_1435832,
*while/lstm_cell_12/StatefulPartitionedCallў
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_12/StatefulPartitionedCall:output:0*
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
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3д
while/Identity_4Identity3while/lstm_cell_12/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         @2
while/Identity_4д
while/Identity_5Identity3while/lstm_cell_12/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         @2
while/Identity_5З

while/NoOpNoOp+^while/lstm_cell_12/StatefulPartitionedCall*"
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
while_lstm_cell_12_143621while_lstm_cell_12_143621_0"8
while_lstm_cell_12_143623while_lstm_cell_12_143623_0"8
while_lstm_cell_12_143625while_lstm_cell_12_143625_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         @:         @: : : : : 2X
*while/lstm_cell_12/StatefulPartitionedCall*while/lstm_cell_12/StatefulPartitionedCall: 
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
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
╒
├
while_cond_146446
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_146446___redundant_placeholder04
0while_while_cond_146446___redundant_placeholder14
0while_while_cond_146446___redundant_placeholder24
0while_while_cond_146446___redundant_placeholder3
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
@: : : : :         @:         @: ::::: 
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
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
Є
c
E__inference_dropout_3_layer_call_and_return_conditional_losses_147647

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:          2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:          2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:          :O K
'
_output_shapes
:          
 
_user_specified_nameinputs
я
Х
(__inference_dense_3_layer_call_fn_147668

inputs
unknown: 
	unknown_0:
identityИвStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_1451082
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:          
 
_user_specified_nameinputs
Ш?
╨
while_body_144841
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_12_matmul_readvariableop_resource_0:	АH
5while_lstm_cell_12_matmul_1_readvariableop_resource_0:	@АC
4while_lstm_cell_12_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_12_matmul_readvariableop_resource:	АF
3while_lstm_cell_12_matmul_1_readvariableop_resource:	@АA
2while_lstm_cell_12_biasadd_readvariableop_resource:	АИв)while/lstm_cell_12/BiasAdd/ReadVariableOpв(while/lstm_cell_12/MatMul/ReadVariableOpв*while/lstm_cell_12/MatMul_1/ReadVariableOp├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem╔
(while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02*
(while/lstm_cell_12/MatMul/ReadVariableOp╫
while/lstm_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_12/MatMul╧
*while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02,
*while/lstm_cell_12/MatMul_1/ReadVariableOp└
while/lstm_cell_12/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_12/MatMul_1╕
while/lstm_cell_12/addAddV2#while/lstm_cell_12/MatMul:product:0%while/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_12/add╚
)while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02+
)while/lstm_cell_12/BiasAdd/ReadVariableOp┼
while/lstm_cell_12/BiasAddBiasAddwhile/lstm_cell_12/add:z:01while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_12/BiasAddК
"while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_12/split/split_dimЛ
while/lstm_cell_12/splitSplit+while/lstm_cell_12/split/split_dim:output:0#while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
while/lstm_cell_12/splitШ
while/lstm_cell_12/SigmoidSigmoid!while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/SigmoidЬ
while/lstm_cell_12/Sigmoid_1Sigmoid!while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/Sigmoid_1а
while/lstm_cell_12/mulMul while/lstm_cell_12/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/mulП
while/lstm_cell_12/ReluRelu!while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/Relu┤
while/lstm_cell_12/mul_1Mulwhile/lstm_cell_12/Sigmoid:y:0%while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/mul_1й
while/lstm_cell_12/add_1AddV2while/lstm_cell_12/mul:z:0while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/add_1Ь
while/lstm_cell_12/Sigmoid_2Sigmoid!while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/Sigmoid_2О
while/lstm_cell_12/Relu_1Reluwhile/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/Relu_1╕
while/lstm_cell_12/mul_2Mul while/lstm_cell_12/Sigmoid_2:y:0'while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/mul_2р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_12/mul_2:z:0*
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
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3Н
while/Identity_4Identitywhile/lstm_cell_12/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         @2
while/Identity_4Н
while/Identity_5Identitywhile/lstm_cell_12/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         @2
while/Identity_5▐

while/NoOpNoOp*^while/lstm_cell_12/BiasAdd/ReadVariableOp)^while/lstm_cell_12/MatMul/ReadVariableOp+^while/lstm_cell_12/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_12_biasadd_readvariableop_resource4while_lstm_cell_12_biasadd_readvariableop_resource_0"l
3while_lstm_cell_12_matmul_1_readvariableop_resource5while_lstm_cell_12_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_12_matmul_readvariableop_resource3while_lstm_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         @:         @: : : : : 2V
)while/lstm_cell_12/BiasAdd/ReadVariableOp)while/lstm_cell_12/BiasAdd/ReadVariableOp2T
(while/lstm_cell_12/MatMul/ReadVariableOp(while/lstm_cell_12/MatMul/ReadVariableOp2X
*while/lstm_cell_12/MatMul_1/ReadVariableOp*while/lstm_cell_12/MatMul_1/ReadVariableOp: 
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
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
╝
╢
'__inference_lstm_7_layer_call_fn_146995
inputs_0
unknown:	@А
	unknown_0:	 А
	unknown_1:	А
identityИвStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_7_layer_call_and_return_conditional_losses_1442962
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  @: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  @
"
_user_specified_name
inputs/0
р[
Ъ
B__inference_lstm_6_layer_call_and_return_conditional_losses_146984

inputs>
+lstm_cell_12_matmul_readvariableop_resource:	А@
-lstm_cell_12_matmul_1_readvariableop_resource:	@А;
,lstm_cell_12_biasadd_readvariableop_resource:	А
identityИв#lstm_cell_12/BiasAdd/ReadVariableOpв"lstm_cell_12/MatMul/ReadVariableOpв$lstm_cell_12/MatMul_1/ReadVariableOpвwhileD
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
strided_slice/stack_2т
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
B :ш2
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
zeros/packed/1Г
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
:         @2
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
B :ш2
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
zeros_1/packed/1Й
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
:         @2	
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
:         2
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_2╡
"lstm_cell_12/MatMul/ReadVariableOpReadVariableOp+lstm_cell_12_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02$
"lstm_cell_12/MatMul/ReadVariableOpн
lstm_cell_12/MatMulMatMulstrided_slice_2:output:0*lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_12/MatMul╗
$lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02&
$lstm_cell_12/MatMul_1/ReadVariableOpй
lstm_cell_12/MatMul_1MatMulzeros:output:0,lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_12/MatMul_1а
lstm_cell_12/addAddV2lstm_cell_12/MatMul:product:0lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_cell_12/add┤
#lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#lstm_cell_12/BiasAdd/ReadVariableOpн
lstm_cell_12/BiasAddBiasAddlstm_cell_12/add:z:0+lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_12/BiasAdd~
lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_12/split/split_dimє
lstm_cell_12/splitSplit%lstm_cell_12/split/split_dim:output:0lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
lstm_cell_12/splitЖ
lstm_cell_12/SigmoidSigmoidlstm_cell_12/split:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/SigmoidК
lstm_cell_12/Sigmoid_1Sigmoidlstm_cell_12/split:output:1*
T0*'
_output_shapes
:         @2
lstm_cell_12/Sigmoid_1Л
lstm_cell_12/mulMullstm_cell_12/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/mul}
lstm_cell_12/ReluRelulstm_cell_12/split:output:2*
T0*'
_output_shapes
:         @2
lstm_cell_12/ReluЬ
lstm_cell_12/mul_1Mullstm_cell_12/Sigmoid:y:0lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/mul_1С
lstm_cell_12/add_1AddV2lstm_cell_12/mul:z:0lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/add_1К
lstm_cell_12/Sigmoid_2Sigmoidlstm_cell_12/split:output:3*
T0*'
_output_shapes
:         @2
lstm_cell_12/Sigmoid_2|
lstm_cell_12/Relu_1Relulstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/Relu_1а
lstm_cell_12/mul_2Mullstm_cell_12/Sigmoid_2:y:0!lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
TensorArrayV2_1/element_shape╕
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterЛ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_12_matmul_readvariableop_resource-lstm_cell_12_matmul_1_readvariableop_resource,lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_146900*
condR
while_cond_146899*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permе
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         @2
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
:         @2

Identity╚
NoOpNoOp$^lstm_cell_12/BiasAdd/ReadVariableOp#^lstm_cell_12/MatMul/ReadVariableOp%^lstm_cell_12/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2J
#lstm_cell_12/BiasAdd/ReadVariableOp#lstm_cell_12/BiasAdd/ReadVariableOp2H
"lstm_cell_12/MatMul/ReadVariableOp"lstm_cell_12/MatMul/ReadVariableOp2L
$lstm_cell_12/MatMul_1/ReadVariableOp$lstm_cell_12/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╢
Ў
-__inference_lstm_cell_12_layer_call_fn_147712

inputs
states_0
states_1
unknown:	А
	unknown_0:	@А
	unknown_1:	А
identity

identity_1

identity_2ИвStatefulPartitionedCall├
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         @:         @:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_12_layer_call_and_return_conditional_losses_1437292
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         @2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         @2

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
?:         :         @:         @: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         @
"
_user_specified_name
states/0:QM
'
_output_shapes
:         @
"
_user_specified_name
states/1
╒
├
while_cond_143596
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_143596___redundant_placeholder04
0while_while_cond_143596___redundant_placeholder14
0while_while_cond_143596___redundant_placeholder24
0while_while_cond_143596___redundant_placeholder3
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
@: : : : :         @:         @: ::::: 
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
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
и

╧
lstm_6_while_cond_145785*
&lstm_6_while_lstm_6_while_loop_counter0
,lstm_6_while_lstm_6_while_maximum_iterations
lstm_6_while_placeholder
lstm_6_while_placeholder_1
lstm_6_while_placeholder_2
lstm_6_while_placeholder_3,
(lstm_6_while_less_lstm_6_strided_slice_1B
>lstm_6_while_lstm_6_while_cond_145785___redundant_placeholder0B
>lstm_6_while_lstm_6_while_cond_145785___redundant_placeholder1B
>lstm_6_while_lstm_6_while_cond_145785___redundant_placeholder2B
>lstm_6_while_lstm_6_while_cond_145785___redundant_placeholder3
lstm_6_while_identity
У
lstm_6/while/LessLesslstm_6_while_placeholder(lstm_6_while_less_lstm_6_strided_slice_1*
T0*
_output_shapes
: 2
lstm_6/while/Lessr
lstm_6/while/IdentityIdentitylstm_6/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_6/while/Identity"7
lstm_6_while_identitylstm_6/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         @:         @: ::::: 
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
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
Є
c
E__inference_dropout_3_layer_call_and_return_conditional_losses_145096

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:          2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:          2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:          :O K
'
_output_shapes
:          
 
_user_specified_nameinputs
╒
├
while_cond_144436
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_144436___redundant_placeholder04
0while_while_cond_144436___redundant_placeholder14
0while_while_cond_144436___redundant_placeholder24
0while_while_cond_144436___redundant_placeholder3
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
@: : : : :          :          : ::::: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
╒
├
while_cond_145419
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_145419___redundant_placeholder04
0while_while_cond_145419___redundant_placeholder14
0while_while_cond_145419___redundant_placeholder24
0while_while_cond_145419___redundant_placeholder3
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
@: : : : :         @:         @: ::::: 
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
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
╒
├
while_cond_144998
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_144998___redundant_placeholder04
0while_while_cond_144998___redundant_placeholder14
0while_while_cond_144998___redundant_placeholder24
0while_while_cond_144998___redundant_placeholder3
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
@: : : : :          :          : ::::: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
Щ

╠
-__inference_sequential_3_layer_call_fn_145600
lstm_6_input
unknown:	А
	unknown_0:	@А
	unknown_1:	А
	unknown_2:	@А
	unknown_3:	 А
	unknown_4:	А
	unknown_5: 
	unknown_6:
identityИвStatefulPartitionedCall╠
StatefulPartitionedCallStatefulPartitionedCalllstm_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_1455602
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:         
&
_user_specified_namelstm_6_input
д
┤
'__inference_lstm_7_layer_call_fn_147017

inputs
unknown:	@А
	unknown_0:	 А
	unknown_1:	А
identityИвStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_7_layer_call_and_return_conditional_losses_1450832
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         @: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
√
Ж
H__inference_lstm_cell_12_layer_call_and_return_conditional_losses_147744

inputs
states_0
states_11
matmul_readvariableop_resource:	А3
 matmul_1_readvariableop_resource:	@А.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim┐
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         @2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         @2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         @2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:         @2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         @2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         @2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         @2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         @2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         @2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         @2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         @2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         @2

Identity_2Щ
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
?:         :         @:         @: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         @
"
_user_specified_name
states/0:QM
'
_output_shapes
:         @
"
_user_specified_name
states/1
╒
├
while_cond_147245
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_147245___redundant_placeholder04
0while_while_cond_147245___redundant_placeholder14
0while_while_cond_147245___redundant_placeholder24
0while_while_cond_147245___redundant_placeholder3
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
@: : : : :          :          : ::::: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
╢
Ў
-__inference_lstm_cell_13_layer_call_fn_147793

inputs
states_0
states_1
unknown:	@А
	unknown_0:	 А
	unknown_1:	А
identity

identity_1

identity_2ИвStatefulPartitionedCall├
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:          :          :          *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_13_layer_call_and_return_conditional_losses_1442132
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:          2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:          2

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
?:         @:          :          : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs:QM
'
_output_shapes
:          
"
_user_specified_name
states/0:QM
'
_output_shapes
:          
"
_user_specified_name
states/1
√
Ж
H__inference_lstm_cell_13_layer_call_and_return_conditional_losses_147842

inputs
states_0
states_11
matmul_readvariableop_resource:	@А3
 matmul_1_readvariableop_resource:	 А.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim┐
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:          2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:          2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:          2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:          2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:          2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:          2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:          2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:          2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:          2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:          2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:          2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:          2

Identity_2Щ
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
?:         @:          :          : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs:QM
'
_output_shapes
:          
"
_user_specified_name
states/0:QM
'
_output_shapes
:          
"
_user_specified_name
states/1
Я\
Ь
B__inference_lstm_6_layer_call_and_return_conditional_losses_146682
inputs_0>
+lstm_cell_12_matmul_readvariableop_resource:	А@
-lstm_cell_12_matmul_1_readvariableop_resource:	@А;
,lstm_cell_12_biasadd_readvariableop_resource:	А
identityИв#lstm_cell_12/BiasAdd/ReadVariableOpв"lstm_cell_12/MatMul/ReadVariableOpв$lstm_cell_12/MatMul_1/ReadVariableOpвwhileF
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
strided_slice/stack_2т
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
B :ш2
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
zeros/packed/1Г
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
:         @2
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
B :ш2
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
zeros_1/packed/1Й
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
:         @2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЕ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  2
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_2╡
"lstm_cell_12/MatMul/ReadVariableOpReadVariableOp+lstm_cell_12_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02$
"lstm_cell_12/MatMul/ReadVariableOpн
lstm_cell_12/MatMulMatMulstrided_slice_2:output:0*lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_12/MatMul╗
$lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02&
$lstm_cell_12/MatMul_1/ReadVariableOpй
lstm_cell_12/MatMul_1MatMulzeros:output:0,lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_12/MatMul_1а
lstm_cell_12/addAddV2lstm_cell_12/MatMul:product:0lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_cell_12/add┤
#lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#lstm_cell_12/BiasAdd/ReadVariableOpн
lstm_cell_12/BiasAddBiasAddlstm_cell_12/add:z:0+lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_12/BiasAdd~
lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_12/split/split_dimє
lstm_cell_12/splitSplit%lstm_cell_12/split/split_dim:output:0lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
lstm_cell_12/splitЖ
lstm_cell_12/SigmoidSigmoidlstm_cell_12/split:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/SigmoidК
lstm_cell_12/Sigmoid_1Sigmoidlstm_cell_12/split:output:1*
T0*'
_output_shapes
:         @2
lstm_cell_12/Sigmoid_1Л
lstm_cell_12/mulMullstm_cell_12/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/mul}
lstm_cell_12/ReluRelulstm_cell_12/split:output:2*
T0*'
_output_shapes
:         @2
lstm_cell_12/ReluЬ
lstm_cell_12/mul_1Mullstm_cell_12/Sigmoid:y:0lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/mul_1С
lstm_cell_12/add_1AddV2lstm_cell_12/mul:z:0lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/add_1К
lstm_cell_12/Sigmoid_2Sigmoidlstm_cell_12/split:output:3*
T0*'
_output_shapes
:         @2
lstm_cell_12/Sigmoid_2|
lstm_cell_12/Relu_1Relulstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/Relu_1а
lstm_cell_12/mul_2Mullstm_cell_12/Sigmoid_2:y:0!lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
TensorArrayV2_1/element_shape╕
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterЛ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_12_matmul_readvariableop_resource-lstm_cell_12_matmul_1_readvariableop_resource,lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_146598*
condR
while_cond_146597*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  @*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permо
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  @2
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
 :                  @2

Identity╚
NoOpNoOp$^lstm_cell_12/BiasAdd/ReadVariableOp#^lstm_cell_12/MatMul/ReadVariableOp%^lstm_cell_12/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2J
#lstm_cell_12/BiasAdd/ReadVariableOp#lstm_cell_12/BiasAdd/ReadVariableOp2H
"lstm_cell_12/MatMul/ReadVariableOp"lstm_cell_12/MatMul/ReadVariableOp2L
$lstm_cell_12/MatMul_1/ReadVariableOp$lstm_cell_12/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
╪%
у
while_body_144227
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_13_144251_0:	@А.
while_lstm_cell_13_144253_0:	 А*
while_lstm_cell_13_144255_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_13_144251:	@А,
while_lstm_cell_13_144253:	 А(
while_lstm_cell_13_144255:	АИв*while/lstm_cell_13/StatefulPartitionedCall├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         @*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemс
*while/lstm_cell_13/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_13_144251_0while_lstm_cell_13_144253_0while_lstm_cell_13_144255_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:          :          :          *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_13_layer_call_and_return_conditional_losses_1442132,
*while/lstm_cell_13/StatefulPartitionedCallў
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_13/StatefulPartitionedCall:output:0*
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
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3д
while/Identity_4Identity3while/lstm_cell_13/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:          2
while/Identity_4д
while/Identity_5Identity3while/lstm_cell_13/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:          2
while/Identity_5З

while/NoOpNoOp+^while/lstm_cell_13/StatefulPartitionedCall*"
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
while_lstm_cell_13_144251while_lstm_cell_13_144251_0"8
while_lstm_cell_13_144253while_lstm_cell_13_144253_0"8
while_lstm_cell_13_144255while_lstm_cell_13_144255_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :          :          : : : : : 2X
*while/lstm_cell_13/StatefulPartitionedCall*while/lstm_cell_13/StatefulPartitionedCall: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
е

Ї
C__inference_dense_3_layer_call_and_return_conditional_losses_145108

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:          
 
_user_specified_nameinputs
╒
├
while_cond_146597
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_146597___redundant_placeholder04
0while_while_cond_146597___redundant_placeholder14
0while_while_cond_146597___redundant_placeholder24
0while_while_cond_146597___redundant_placeholder3
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
@: : : : :         @:         @: ::::: 
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
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
ЧI
░

lstm_6_while_body_146091*
&lstm_6_while_lstm_6_while_loop_counter0
,lstm_6_while_lstm_6_while_maximum_iterations
lstm_6_while_placeholder
lstm_6_while_placeholder_1
lstm_6_while_placeholder_2
lstm_6_while_placeholder_3)
%lstm_6_while_lstm_6_strided_slice_1_0e
alstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_6_while_lstm_cell_12_matmul_readvariableop_resource_0:	АO
<lstm_6_while_lstm_cell_12_matmul_1_readvariableop_resource_0:	@АJ
;lstm_6_while_lstm_cell_12_biasadd_readvariableop_resource_0:	А
lstm_6_while_identity
lstm_6_while_identity_1
lstm_6_while_identity_2
lstm_6_while_identity_3
lstm_6_while_identity_4
lstm_6_while_identity_5'
#lstm_6_while_lstm_6_strided_slice_1c
_lstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensorK
8lstm_6_while_lstm_cell_12_matmul_readvariableop_resource:	АM
:lstm_6_while_lstm_cell_12_matmul_1_readvariableop_resource:	@АH
9lstm_6_while_lstm_cell_12_biasadd_readvariableop_resource:	АИв0lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOpв/lstm_6/while/lstm_cell_12/MatMul/ReadVariableOpв1lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOp╤
>lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2@
>lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shape¤
0lstm_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0lstm_6_while_placeholderGlstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype022
0lstm_6/while/TensorArrayV2Read/TensorListGetItem▐
/lstm_6/while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp:lstm_6_while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype021
/lstm_6/while/lstm_cell_12/MatMul/ReadVariableOpє
 lstm_6/while/lstm_cell_12/MatMulMatMul7lstm_6/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_6/while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2"
 lstm_6/while/lstm_cell_12/MatMulф
1lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp<lstm_6_while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes
:	@А*
dtype023
1lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOp▄
"lstm_6/while/lstm_cell_12/MatMul_1MatMullstm_6_while_placeholder_29lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2$
"lstm_6/while/lstm_cell_12/MatMul_1╘
lstm_6/while/lstm_cell_12/addAddV2*lstm_6/while/lstm_cell_12/MatMul:product:0,lstm_6/while/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_6/while/lstm_cell_12/add▌
0lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp;lstm_6_while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype022
0lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOpс
!lstm_6/while/lstm_cell_12/BiasAddBiasAdd!lstm_6/while/lstm_cell_12/add:z:08lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2#
!lstm_6/while/lstm_cell_12/BiasAddШ
)lstm_6/while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2+
)lstm_6/while/lstm_cell_12/split/split_dimз
lstm_6/while/lstm_cell_12/splitSplit2lstm_6/while/lstm_cell_12/split/split_dim:output:0*lstm_6/while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2!
lstm_6/while/lstm_cell_12/splitн
!lstm_6/while/lstm_cell_12/SigmoidSigmoid(lstm_6/while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:         @2#
!lstm_6/while/lstm_cell_12/Sigmoid▒
#lstm_6/while/lstm_cell_12/Sigmoid_1Sigmoid(lstm_6/while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:         @2%
#lstm_6/while/lstm_cell_12/Sigmoid_1╝
lstm_6/while/lstm_cell_12/mulMul'lstm_6/while/lstm_cell_12/Sigmoid_1:y:0lstm_6_while_placeholder_3*
T0*'
_output_shapes
:         @2
lstm_6/while/lstm_cell_12/mulд
lstm_6/while/lstm_cell_12/ReluRelu(lstm_6/while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:         @2 
lstm_6/while/lstm_cell_12/Relu╨
lstm_6/while/lstm_cell_12/mul_1Mul%lstm_6/while/lstm_cell_12/Sigmoid:y:0,lstm_6/while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:         @2!
lstm_6/while/lstm_cell_12/mul_1┼
lstm_6/while/lstm_cell_12/add_1AddV2!lstm_6/while/lstm_cell_12/mul:z:0#lstm_6/while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:         @2!
lstm_6/while/lstm_cell_12/add_1▒
#lstm_6/while/lstm_cell_12/Sigmoid_2Sigmoid(lstm_6/while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:         @2%
#lstm_6/while/lstm_cell_12/Sigmoid_2г
 lstm_6/while/lstm_cell_12/Relu_1Relu#lstm_6/while/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:         @2"
 lstm_6/while/lstm_cell_12/Relu_1╘
lstm_6/while/lstm_cell_12/mul_2Mul'lstm_6/while/lstm_cell_12/Sigmoid_2:y:0.lstm_6/while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:         @2!
lstm_6/while/lstm_cell_12/mul_2Г
1lstm_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_6_while_placeholder_1lstm_6_while_placeholder#lstm_6/while/lstm_cell_12/mul_2:z:0*
_output_shapes
: *
element_dtype023
1lstm_6/while/TensorArrayV2Write/TensorListSetItemj
lstm_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_6/while/add/yЕ
lstm_6/while/addAddV2lstm_6_while_placeholderlstm_6/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_6/while/addn
lstm_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_6/while/add_1/yЩ
lstm_6/while/add_1AddV2&lstm_6_while_lstm_6_while_loop_counterlstm_6/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_6/while/add_1З
lstm_6/while/IdentityIdentitylstm_6/while/add_1:z:0^lstm_6/while/NoOp*
T0*
_output_shapes
: 2
lstm_6/while/Identityб
lstm_6/while/Identity_1Identity,lstm_6_while_lstm_6_while_maximum_iterations^lstm_6/while/NoOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_1Й
lstm_6/while/Identity_2Identitylstm_6/while/add:z:0^lstm_6/while/NoOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_2╢
lstm_6/while/Identity_3IdentityAlstm_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_6/while/NoOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_3й
lstm_6/while/Identity_4Identity#lstm_6/while/lstm_cell_12/mul_2:z:0^lstm_6/while/NoOp*
T0*'
_output_shapes
:         @2
lstm_6/while/Identity_4й
lstm_6/while/Identity_5Identity#lstm_6/while/lstm_cell_12/add_1:z:0^lstm_6/while/NoOp*
T0*'
_output_shapes
:         @2
lstm_6/while/Identity_5Б
lstm_6/while/NoOpNoOp1^lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOp0^lstm_6/while/lstm_cell_12/MatMul/ReadVariableOp2^lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_6/while/NoOp"7
lstm_6_while_identitylstm_6/while/Identity:output:0";
lstm_6_while_identity_1 lstm_6/while/Identity_1:output:0";
lstm_6_while_identity_2 lstm_6/while/Identity_2:output:0";
lstm_6_while_identity_3 lstm_6/while/Identity_3:output:0";
lstm_6_while_identity_4 lstm_6/while/Identity_4:output:0";
lstm_6_while_identity_5 lstm_6/while/Identity_5:output:0"L
#lstm_6_while_lstm_6_strided_slice_1%lstm_6_while_lstm_6_strided_slice_1_0"x
9lstm_6_while_lstm_cell_12_biasadd_readvariableop_resource;lstm_6_while_lstm_cell_12_biasadd_readvariableop_resource_0"z
:lstm_6_while_lstm_cell_12_matmul_1_readvariableop_resource<lstm_6_while_lstm_cell_12_matmul_1_readvariableop_resource_0"v
8lstm_6_while_lstm_cell_12_matmul_readvariableop_resource:lstm_6_while_lstm_cell_12_matmul_readvariableop_resource_0"─
_lstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensoralstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         @:         @: : : : : 2d
0lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOp0lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOp2b
/lstm_6/while/lstm_cell_12/MatMul/ReadVariableOp/lstm_6/while/lstm_cell_12/MatMul/ReadVariableOp2f
1lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOp1lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOp: 
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
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
╗I
Є
__inference__traced_save_147990
file_prefix-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop9
5savev2_lstm_6_lstm_cell_12_kernel_read_readvariableopC
?savev2_lstm_6_lstm_cell_12_recurrent_kernel_read_readvariableop7
3savev2_lstm_6_lstm_cell_12_bias_read_readvariableop9
5savev2_lstm_7_lstm_cell_13_kernel_read_readvariableopC
?savev2_lstm_7_lstm_cell_13_recurrent_kernel_read_readvariableop7
3savev2_lstm_7_lstm_cell_13_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableop@
<savev2_adam_lstm_6_lstm_cell_12_kernel_m_read_readvariableopJ
Fsavev2_adam_lstm_6_lstm_cell_12_recurrent_kernel_m_read_readvariableop>
:savev2_adam_lstm_6_lstm_cell_12_bias_m_read_readvariableop@
<savev2_adam_lstm_7_lstm_cell_13_kernel_m_read_readvariableopJ
Fsavev2_adam_lstm_7_lstm_cell_13_recurrent_kernel_m_read_readvariableop>
:savev2_adam_lstm_7_lstm_cell_13_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableop@
<savev2_adam_lstm_6_lstm_cell_12_kernel_v_read_readvariableopJ
Fsavev2_adam_lstm_6_lstm_cell_12_recurrent_kernel_v_read_readvariableop>
:savev2_adam_lstm_6_lstm_cell_12_bias_v_read_readvariableop@
<savev2_adam_lstm_7_lstm_cell_13_kernel_v_read_readvariableopJ
Fsavev2_adam_lstm_7_lstm_cell_13_recurrent_kernel_v_read_readvariableop>
:savev2_adam_lstm_7_lstm_cell_13_bias_v_read_readvariableop
savev2_const

identity_1ИвMergeV2CheckpointsП
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
Const_1Л
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
ShardedFilename/shardж
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameА
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*Т
valueИBЕ B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names╚
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesу
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop5savev2_lstm_6_lstm_cell_12_kernel_read_readvariableop?savev2_lstm_6_lstm_cell_12_recurrent_kernel_read_readvariableop3savev2_lstm_6_lstm_cell_12_bias_read_readvariableop5savev2_lstm_7_lstm_cell_13_kernel_read_readvariableop?savev2_lstm_7_lstm_cell_13_recurrent_kernel_read_readvariableop3savev2_lstm_7_lstm_cell_13_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop<savev2_adam_lstm_6_lstm_cell_12_kernel_m_read_readvariableopFsavev2_adam_lstm_6_lstm_cell_12_recurrent_kernel_m_read_readvariableop:savev2_adam_lstm_6_lstm_cell_12_bias_m_read_readvariableop<savev2_adam_lstm_7_lstm_cell_13_kernel_m_read_readvariableopFsavev2_adam_lstm_7_lstm_cell_13_recurrent_kernel_m_read_readvariableop:savev2_adam_lstm_7_lstm_cell_13_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableop<savev2_adam_lstm_6_lstm_cell_12_kernel_v_read_readvariableopFsavev2_adam_lstm_6_lstm_cell_12_recurrent_kernel_v_read_readvariableop:savev2_adam_lstm_6_lstm_cell_12_bias_v_read_readvariableop<savev2_adam_lstm_7_lstm_cell_13_kernel_v_read_readvariableopFsavev2_adam_lstm_7_lstm_cell_13_recurrent_kernel_v_read_readvariableop:savev2_adam_lstm_7_lstm_cell_13_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *.
dtypes$
"2 	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesб
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

identity_1Identity_1:output:0*Е
_input_shapesє
Ё: : :: : : : : :	А:	@А:А:	@А:	 А:А: : : ::	А:	@А:А:	@А:	 А:А: ::	А:	@А:А:	@А:	 А:А: 2(
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
:	А:%	!

_output_shapes
:	@А:!


_output_shapes	
:А:%!

_output_shapes
:	@А:%!

_output_shapes
:	 А:!

_output_shapes	
:А:
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
:	А:%!

_output_shapes
:	@А:!

_output_shapes	
:А:%!

_output_shapes
:	@А:%!

_output_shapes
:	 А:!

_output_shapes	
:А:$ 

_output_shapes

: : 

_output_shapes
::%!

_output_shapes
:	А:%!

_output_shapes
:	@А:!

_output_shapes	
:А:%!

_output_shapes
:	@А:%!

_output_shapes
:	 А:!

_output_shapes	
:А: 

_output_shapes
: 
└К
Ё
"__inference__traced_restore_148093
file_prefix1
assignvariableop_dense_3_kernel: -
assignvariableop_1_dense_3_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: @
-assignvariableop_7_lstm_6_lstm_cell_12_kernel:	АJ
7assignvariableop_8_lstm_6_lstm_cell_12_recurrent_kernel:	@А:
+assignvariableop_9_lstm_6_lstm_cell_12_bias:	АA
.assignvariableop_10_lstm_7_lstm_cell_13_kernel:	@АK
8assignvariableop_11_lstm_7_lstm_cell_13_recurrent_kernel:	 А;
,assignvariableop_12_lstm_7_lstm_cell_13_bias:	А#
assignvariableop_13_total: #
assignvariableop_14_count: ;
)assignvariableop_15_adam_dense_3_kernel_m: 5
'assignvariableop_16_adam_dense_3_bias_m:H
5assignvariableop_17_adam_lstm_6_lstm_cell_12_kernel_m:	АR
?assignvariableop_18_adam_lstm_6_lstm_cell_12_recurrent_kernel_m:	@АB
3assignvariableop_19_adam_lstm_6_lstm_cell_12_bias_m:	АH
5assignvariableop_20_adam_lstm_7_lstm_cell_13_kernel_m:	@АR
?assignvariableop_21_adam_lstm_7_lstm_cell_13_recurrent_kernel_m:	 АB
3assignvariableop_22_adam_lstm_7_lstm_cell_13_bias_m:	А;
)assignvariableop_23_adam_dense_3_kernel_v: 5
'assignvariableop_24_adam_dense_3_bias_v:H
5assignvariableop_25_adam_lstm_6_lstm_cell_12_kernel_v:	АR
?assignvariableop_26_adam_lstm_6_lstm_cell_12_recurrent_kernel_v:	@АB
3assignvariableop_27_adam_lstm_6_lstm_cell_12_bias_v:	АH
5assignvariableop_28_adam_lstm_7_lstm_cell_13_kernel_v:	@АR
?assignvariableop_29_adam_lstm_7_lstm_cell_13_recurrent_kernel_v:	 АB
3assignvariableop_30_adam_lstm_7_lstm_cell_13_bias_v:	А
identity_32ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9Ж
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*Т
valueИBЕ B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names╬
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices╬
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ц
_output_shapesГ
А::::::::::::::::::::::::::::::::*.
dtypes$
"2 	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЮ
AssignVariableOpAssignVariableOpassignvariableop_dense_3_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1д
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_3_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2б
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3г
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4г
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5в
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6к
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7▓
AssignVariableOp_7AssignVariableOp-assignvariableop_7_lstm_6_lstm_cell_12_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8╝
AssignVariableOp_8AssignVariableOp7assignvariableop_8_lstm_6_lstm_cell_12_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9░
AssignVariableOp_9AssignVariableOp+assignvariableop_9_lstm_6_lstm_cell_12_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10╢
AssignVariableOp_10AssignVariableOp.assignvariableop_10_lstm_7_lstm_cell_13_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11└
AssignVariableOp_11AssignVariableOp8assignvariableop_11_lstm_7_lstm_cell_13_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12┤
AssignVariableOp_12AssignVariableOp,assignvariableop_12_lstm_7_lstm_cell_13_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13б
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14б
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15▒
AssignVariableOp_15AssignVariableOp)assignvariableop_15_adam_dense_3_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16п
AssignVariableOp_16AssignVariableOp'assignvariableop_16_adam_dense_3_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17╜
AssignVariableOp_17AssignVariableOp5assignvariableop_17_adam_lstm_6_lstm_cell_12_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18╟
AssignVariableOp_18AssignVariableOp?assignvariableop_18_adam_lstm_6_lstm_cell_12_recurrent_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19╗
AssignVariableOp_19AssignVariableOp3assignvariableop_19_adam_lstm_6_lstm_cell_12_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20╜
AssignVariableOp_20AssignVariableOp5assignvariableop_20_adam_lstm_7_lstm_cell_13_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21╟
AssignVariableOp_21AssignVariableOp?assignvariableop_21_adam_lstm_7_lstm_cell_13_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22╗
AssignVariableOp_22AssignVariableOp3assignvariableop_22_adam_lstm_7_lstm_cell_13_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23▒
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_3_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24п
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_3_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25╜
AssignVariableOp_25AssignVariableOp5assignvariableop_25_adam_lstm_6_lstm_cell_12_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26╟
AssignVariableOp_26AssignVariableOp?assignvariableop_26_adam_lstm_6_lstm_cell_12_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27╗
AssignVariableOp_27AssignVariableOp3assignvariableop_27_adam_lstm_6_lstm_cell_12_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28╜
AssignVariableOp_28AssignVariableOp5assignvariableop_28_adam_lstm_7_lstm_cell_13_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29╟
AssignVariableOp_29AssignVariableOp?assignvariableop_29_adam_lstm_7_lstm_cell_13_recurrent_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30╗
AssignVariableOp_30AssignVariableOp3assignvariableop_30_adam_lstm_7_lstm_cell_13_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_309
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpИ
Identity_31Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_31f
Identity_32IdentityIdentity_31:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_32Ё
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
є
Д
H__inference_lstm_cell_13_layer_call_and_return_conditional_losses_144359

inputs

states
states_11
matmul_readvariableop_resource:	@А3
 matmul_1_readvariableop_resource:	 А.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim┐
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:          2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:          2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:          2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:          2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:          2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:          2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:          2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:          2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:          2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:          2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:          2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:          2

Identity_2Щ
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
?:         @:          :          : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs:OK
'
_output_shapes
:          
 
_user_specified_namestates:OK
'
_output_shapes
:          
 
_user_specified_namestates
╒
├
while_cond_146899
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_146899___redundant_placeholder04
0while_while_cond_146899___redundant_placeholder14
0while_while_cond_146899___redundant_placeholder24
0while_while_cond_146899___redundant_placeholder3
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
@: : : : :         @:         @: ::::: 
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
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
Ш?
╨
while_body_147095
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_13_matmul_readvariableop_resource_0:	@АH
5while_lstm_cell_13_matmul_1_readvariableop_resource_0:	 АC
4while_lstm_cell_13_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_13_matmul_readvariableop_resource:	@АF
3while_lstm_cell_13_matmul_1_readvariableop_resource:	 АA
2while_lstm_cell_13_biasadd_readvariableop_resource:	АИв)while/lstm_cell_13/BiasAdd/ReadVariableOpв(while/lstm_cell_13/MatMul/ReadVariableOpв*while/lstm_cell_13/MatMul_1/ReadVariableOp├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         @*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem╔
(while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02*
(while/lstm_cell_13/MatMul/ReadVariableOp╫
while/lstm_cell_13/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_13/MatMul╧
*while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02,
*while/lstm_cell_13/MatMul_1/ReadVariableOp└
while/lstm_cell_13/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_13/MatMul_1╕
while/lstm_cell_13/addAddV2#while/lstm_cell_13/MatMul:product:0%while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_13/add╚
)while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02+
)while/lstm_cell_13/BiasAdd/ReadVariableOp┼
while/lstm_cell_13/BiasAddBiasAddwhile/lstm_cell_13/add:z:01while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_13/BiasAddК
"while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_13/split/split_dimЛ
while/lstm_cell_13/splitSplit+while/lstm_cell_13/split/split_dim:output:0#while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/lstm_cell_13/splitШ
while/lstm_cell_13/SigmoidSigmoid!while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:          2
while/lstm_cell_13/SigmoidЬ
while/lstm_cell_13/Sigmoid_1Sigmoid!while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:          2
while/lstm_cell_13/Sigmoid_1а
while/lstm_cell_13/mulMul while/lstm_cell_13/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/lstm_cell_13/mulП
while/lstm_cell_13/ReluRelu!while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:          2
while/lstm_cell_13/Relu┤
while/lstm_cell_13/mul_1Mulwhile/lstm_cell_13/Sigmoid:y:0%while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:          2
while/lstm_cell_13/mul_1й
while/lstm_cell_13/add_1AddV2while/lstm_cell_13/mul:z:0while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:          2
while/lstm_cell_13/add_1Ь
while/lstm_cell_13/Sigmoid_2Sigmoid!while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:          2
while/lstm_cell_13/Sigmoid_2О
while/lstm_cell_13/Relu_1Reluwhile/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:          2
while/lstm_cell_13/Relu_1╕
while/lstm_cell_13/mul_2Mul while/lstm_cell_13/Sigmoid_2:y:0'while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:          2
while/lstm_cell_13/mul_2р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_13/mul_2:z:0*
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
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3Н
while/Identity_4Identitywhile/lstm_cell_13/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:          2
while/Identity_4Н
while/Identity_5Identitywhile/lstm_cell_13/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:          2
while/Identity_5▐

while/NoOpNoOp*^while/lstm_cell_13/BiasAdd/ReadVariableOp)^while/lstm_cell_13/MatMul/ReadVariableOp+^while/lstm_cell_13/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_13_biasadd_readvariableop_resource4while_lstm_cell_13_biasadd_readvariableop_resource_0"l
3while_lstm_cell_13_matmul_1_readvariableop_resource5while_lstm_cell_13_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_13_matmul_readvariableop_resource3while_lstm_cell_13_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :          :          : : : : : 2V
)while/lstm_cell_13/BiasAdd/ReadVariableOp)while/lstm_cell_13/BiasAdd/ReadVariableOp2T
(while/lstm_cell_13/MatMul/ReadVariableOp(while/lstm_cell_13/MatMul/ReadVariableOp2X
*while/lstm_cell_13/MatMul_1/ReadVariableOp*while/lstm_cell_13/MatMul_1/ReadVariableOp: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
є
Д
H__inference_lstm_cell_13_layer_call_and_return_conditional_losses_144213

inputs

states
states_11
matmul_readvariableop_resource:	@А3
 matmul_1_readvariableop_resource:	 А.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim┐
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:          2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:          2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:          2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:          2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:          2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:          2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:          2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:          2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:          2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:          2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:          2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:          2

Identity_2Щ
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
?:         @:          :          : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs:OK
'
_output_shapes
:          
 
_user_specified_namestates:OK
'
_output_shapes
:          
 
_user_specified_namestates
ЧI
░

lstm_7_while_body_145933*
&lstm_7_while_lstm_7_while_loop_counter0
,lstm_7_while_lstm_7_while_maximum_iterations
lstm_7_while_placeholder
lstm_7_while_placeholder_1
lstm_7_while_placeholder_2
lstm_7_while_placeholder_3)
%lstm_7_while_lstm_7_strided_slice_1_0e
alstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_7_while_lstm_cell_13_matmul_readvariableop_resource_0:	@АO
<lstm_7_while_lstm_cell_13_matmul_1_readvariableop_resource_0:	 АJ
;lstm_7_while_lstm_cell_13_biasadd_readvariableop_resource_0:	А
lstm_7_while_identity
lstm_7_while_identity_1
lstm_7_while_identity_2
lstm_7_while_identity_3
lstm_7_while_identity_4
lstm_7_while_identity_5'
#lstm_7_while_lstm_7_strided_slice_1c
_lstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensorK
8lstm_7_while_lstm_cell_13_matmul_readvariableop_resource:	@АM
:lstm_7_while_lstm_cell_13_matmul_1_readvariableop_resource:	 АH
9lstm_7_while_lstm_cell_13_biasadd_readvariableop_resource:	АИв0lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOpв/lstm_7/while/lstm_cell_13/MatMul/ReadVariableOpв1lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOp╤
>lstm_7/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2@
>lstm_7/while/TensorArrayV2Read/TensorListGetItem/element_shape¤
0lstm_7/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensor_0lstm_7_while_placeholderGlstm_7/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         @*
element_dtype022
0lstm_7/while/TensorArrayV2Read/TensorListGetItem▐
/lstm_7/while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp:lstm_7_while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	@А*
dtype021
/lstm_7/while/lstm_cell_13/MatMul/ReadVariableOpє
 lstm_7/while/lstm_cell_13/MatMulMatMul7lstm_7/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_7/while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2"
 lstm_7/while/lstm_cell_13/MatMulф
1lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp<lstm_7_while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype023
1lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOp▄
"lstm_7/while/lstm_cell_13/MatMul_1MatMullstm_7_while_placeholder_29lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2$
"lstm_7/while/lstm_cell_13/MatMul_1╘
lstm_7/while/lstm_cell_13/addAddV2*lstm_7/while/lstm_cell_13/MatMul:product:0,lstm_7/while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_7/while/lstm_cell_13/add▌
0lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp;lstm_7_while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype022
0lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOpс
!lstm_7/while/lstm_cell_13/BiasAddBiasAdd!lstm_7/while/lstm_cell_13/add:z:08lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2#
!lstm_7/while/lstm_cell_13/BiasAddШ
)lstm_7/while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2+
)lstm_7/while/lstm_cell_13/split/split_dimз
lstm_7/while/lstm_cell_13/splitSplit2lstm_7/while/lstm_cell_13/split/split_dim:output:0*lstm_7/while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2!
lstm_7/while/lstm_cell_13/splitн
!lstm_7/while/lstm_cell_13/SigmoidSigmoid(lstm_7/while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:          2#
!lstm_7/while/lstm_cell_13/Sigmoid▒
#lstm_7/while/lstm_cell_13/Sigmoid_1Sigmoid(lstm_7/while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:          2%
#lstm_7/while/lstm_cell_13/Sigmoid_1╝
lstm_7/while/lstm_cell_13/mulMul'lstm_7/while/lstm_cell_13/Sigmoid_1:y:0lstm_7_while_placeholder_3*
T0*'
_output_shapes
:          2
lstm_7/while/lstm_cell_13/mulд
lstm_7/while/lstm_cell_13/ReluRelu(lstm_7/while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:          2 
lstm_7/while/lstm_cell_13/Relu╨
lstm_7/while/lstm_cell_13/mul_1Mul%lstm_7/while/lstm_cell_13/Sigmoid:y:0,lstm_7/while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:          2!
lstm_7/while/lstm_cell_13/mul_1┼
lstm_7/while/lstm_cell_13/add_1AddV2!lstm_7/while/lstm_cell_13/mul:z:0#lstm_7/while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:          2!
lstm_7/while/lstm_cell_13/add_1▒
#lstm_7/while/lstm_cell_13/Sigmoid_2Sigmoid(lstm_7/while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:          2%
#lstm_7/while/lstm_cell_13/Sigmoid_2г
 lstm_7/while/lstm_cell_13/Relu_1Relu#lstm_7/while/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:          2"
 lstm_7/while/lstm_cell_13/Relu_1╘
lstm_7/while/lstm_cell_13/mul_2Mul'lstm_7/while/lstm_cell_13/Sigmoid_2:y:0.lstm_7/while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:          2!
lstm_7/while/lstm_cell_13/mul_2Г
1lstm_7/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_7_while_placeholder_1lstm_7_while_placeholder#lstm_7/while/lstm_cell_13/mul_2:z:0*
_output_shapes
: *
element_dtype023
1lstm_7/while/TensorArrayV2Write/TensorListSetItemj
lstm_7/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_7/while/add/yЕ
lstm_7/while/addAddV2lstm_7_while_placeholderlstm_7/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_7/while/addn
lstm_7/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_7/while/add_1/yЩ
lstm_7/while/add_1AddV2&lstm_7_while_lstm_7_while_loop_counterlstm_7/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_7/while/add_1З
lstm_7/while/IdentityIdentitylstm_7/while/add_1:z:0^lstm_7/while/NoOp*
T0*
_output_shapes
: 2
lstm_7/while/Identityб
lstm_7/while/Identity_1Identity,lstm_7_while_lstm_7_while_maximum_iterations^lstm_7/while/NoOp*
T0*
_output_shapes
: 2
lstm_7/while/Identity_1Й
lstm_7/while/Identity_2Identitylstm_7/while/add:z:0^lstm_7/while/NoOp*
T0*
_output_shapes
: 2
lstm_7/while/Identity_2╢
lstm_7/while/Identity_3IdentityAlstm_7/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_7/while/NoOp*
T0*
_output_shapes
: 2
lstm_7/while/Identity_3й
lstm_7/while/Identity_4Identity#lstm_7/while/lstm_cell_13/mul_2:z:0^lstm_7/while/NoOp*
T0*'
_output_shapes
:          2
lstm_7/while/Identity_4й
lstm_7/while/Identity_5Identity#lstm_7/while/lstm_cell_13/add_1:z:0^lstm_7/while/NoOp*
T0*'
_output_shapes
:          2
lstm_7/while/Identity_5Б
lstm_7/while/NoOpNoOp1^lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOp0^lstm_7/while/lstm_cell_13/MatMul/ReadVariableOp2^lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_7/while/NoOp"7
lstm_7_while_identitylstm_7/while/Identity:output:0";
lstm_7_while_identity_1 lstm_7/while/Identity_1:output:0";
lstm_7_while_identity_2 lstm_7/while/Identity_2:output:0";
lstm_7_while_identity_3 lstm_7/while/Identity_3:output:0";
lstm_7_while_identity_4 lstm_7/while/Identity_4:output:0";
lstm_7_while_identity_5 lstm_7/while/Identity_5:output:0"L
#lstm_7_while_lstm_7_strided_slice_1%lstm_7_while_lstm_7_strided_slice_1_0"x
9lstm_7_while_lstm_cell_13_biasadd_readvariableop_resource;lstm_7_while_lstm_cell_13_biasadd_readvariableop_resource_0"z
:lstm_7_while_lstm_cell_13_matmul_1_readvariableop_resource<lstm_7_while_lstm_cell_13_matmul_1_readvariableop_resource_0"v
8lstm_7_while_lstm_cell_13_matmul_readvariableop_resource:lstm_7_while_lstm_cell_13_matmul_readvariableop_resource_0"─
_lstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensoralstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :          :          : : : : : 2d
0lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOp0lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOp2b
/lstm_7/while/lstm_cell_13/MatMul/ReadVariableOp/lstm_7/while/lstm_cell_13/MatMul/ReadVariableOp2f
1lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOp1lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOp: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
и

╧
lstm_7_while_cond_146237*
&lstm_7_while_lstm_7_while_loop_counter0
,lstm_7_while_lstm_7_while_maximum_iterations
lstm_7_while_placeholder
lstm_7_while_placeholder_1
lstm_7_while_placeholder_2
lstm_7_while_placeholder_3,
(lstm_7_while_less_lstm_7_strided_slice_1B
>lstm_7_while_lstm_7_while_cond_146237___redundant_placeholder0B
>lstm_7_while_lstm_7_while_cond_146237___redundant_placeholder1B
>lstm_7_while_lstm_7_while_cond_146237___redundant_placeholder2B
>lstm_7_while_lstm_7_while_cond_146237___redundant_placeholder3
lstm_7_while_identity
У
lstm_7/while/LessLesslstm_7_while_placeholder(lstm_7_while_less_lstm_7_strided_slice_1*
T0*
_output_shapes
: 2
lstm_7/while/Lessr
lstm_7/while/IdentityIdentitylstm_7/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_7/while/Identity"7
lstm_7_while_identitylstm_7/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :          :          : ::::: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
╢
Ў
-__inference_lstm_cell_13_layer_call_fn_147810

inputs
states_0
states_1
unknown:	@А
	unknown_0:	 А
	unknown_1:	А
identity

identity_1

identity_2ИвStatefulPartitionedCall├
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:          :          :          *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_13_layer_call_and_return_conditional_losses_1443592
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:          2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:          2

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
?:         @:          :          : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs:QM
'
_output_shapes
:          
"
_user_specified_name
states/0:QM
'
_output_shapes
:          
"
_user_specified_name
states/1
З

╞
-__inference_sequential_3_layer_call_fn_145698

inputs
unknown:	А
	unknown_0:	@А
	unknown_1:	А
	unknown_2:	@А
	unknown_3:	 А
	unknown_4:	А
	unknown_5: 
	unknown_6:
identityИвStatefulPartitionedCall╞
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_1451152
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╛
F
*__inference_dropout_3_layer_call_fn_147637

inputs
identity├
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_1450962
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:          :O K
'
_output_shapes
:          
 
_user_specified_nameinputs
Ш?
╨
while_body_147246
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_13_matmul_readvariableop_resource_0:	@АH
5while_lstm_cell_13_matmul_1_readvariableop_resource_0:	 АC
4while_lstm_cell_13_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_13_matmul_readvariableop_resource:	@АF
3while_lstm_cell_13_matmul_1_readvariableop_resource:	 АA
2while_lstm_cell_13_biasadd_readvariableop_resource:	АИв)while/lstm_cell_13/BiasAdd/ReadVariableOpв(while/lstm_cell_13/MatMul/ReadVariableOpв*while/lstm_cell_13/MatMul_1/ReadVariableOp├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         @*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem╔
(while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02*
(while/lstm_cell_13/MatMul/ReadVariableOp╫
while/lstm_cell_13/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_13/MatMul╧
*while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02,
*while/lstm_cell_13/MatMul_1/ReadVariableOp└
while/lstm_cell_13/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_13/MatMul_1╕
while/lstm_cell_13/addAddV2#while/lstm_cell_13/MatMul:product:0%while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_13/add╚
)while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02+
)while/lstm_cell_13/BiasAdd/ReadVariableOp┼
while/lstm_cell_13/BiasAddBiasAddwhile/lstm_cell_13/add:z:01while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_13/BiasAddК
"while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_13/split/split_dimЛ
while/lstm_cell_13/splitSplit+while/lstm_cell_13/split/split_dim:output:0#while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/lstm_cell_13/splitШ
while/lstm_cell_13/SigmoidSigmoid!while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:          2
while/lstm_cell_13/SigmoidЬ
while/lstm_cell_13/Sigmoid_1Sigmoid!while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:          2
while/lstm_cell_13/Sigmoid_1а
while/lstm_cell_13/mulMul while/lstm_cell_13/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/lstm_cell_13/mulП
while/lstm_cell_13/ReluRelu!while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:          2
while/lstm_cell_13/Relu┤
while/lstm_cell_13/mul_1Mulwhile/lstm_cell_13/Sigmoid:y:0%while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:          2
while/lstm_cell_13/mul_1й
while/lstm_cell_13/add_1AddV2while/lstm_cell_13/mul:z:0while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:          2
while/lstm_cell_13/add_1Ь
while/lstm_cell_13/Sigmoid_2Sigmoid!while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:          2
while/lstm_cell_13/Sigmoid_2О
while/lstm_cell_13/Relu_1Reluwhile/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:          2
while/lstm_cell_13/Relu_1╕
while/lstm_cell_13/mul_2Mul while/lstm_cell_13/Sigmoid_2:y:0'while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:          2
while/lstm_cell_13/mul_2р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_13/mul_2:z:0*
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
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3Н
while/Identity_4Identitywhile/lstm_cell_13/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:          2
while/Identity_4Н
while/Identity_5Identitywhile/lstm_cell_13/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:          2
while/Identity_5▐

while/NoOpNoOp*^while/lstm_cell_13/BiasAdd/ReadVariableOp)^while/lstm_cell_13/MatMul/ReadVariableOp+^while/lstm_cell_13/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_13_biasadd_readvariableop_resource4while_lstm_cell_13_biasadd_readvariableop_resource_0"l
3while_lstm_cell_13_matmul_1_readvariableop_resource5while_lstm_cell_13_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_13_matmul_readvariableop_resource3while_lstm_cell_13_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :          :          : : : : : 2V
)while/lstm_cell_13/BiasAdd/ReadVariableOp)while/lstm_cell_13/BiasAdd/ReadVariableOp2T
(while/lstm_cell_13/MatMul/ReadVariableOp(while/lstm_cell_13/MatMul/ReadVariableOp2X
*while/lstm_cell_13/MatMul_1/ReadVariableOp*while/lstm_cell_13/MatMul_1/ReadVariableOp: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
х[
Ъ
B__inference_lstm_7_layer_call_and_return_conditional_losses_147632

inputs>
+lstm_cell_13_matmul_readvariableop_resource:	@А@
-lstm_cell_13_matmul_1_readvariableop_resource:	 А;
,lstm_cell_13_biasadd_readvariableop_resource:	А
identityИв#lstm_cell_13/BiasAdd/ReadVariableOpв"lstm_cell_13/MatMul/ReadVariableOpв$lstm_cell_13/MatMul_1/ReadVariableOpвwhileD
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
strided_slice/stack_2т
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
B :ш2
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
zeros/packed/1Г
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
:          2
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
B :ш2
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
zeros_1/packed/1Й
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
:          2	
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
:         @2
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slice_2╡
"lstm_cell_13/MatMul/ReadVariableOpReadVariableOp+lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	@А*
dtype02$
"lstm_cell_13/MatMul/ReadVariableOpн
lstm_cell_13/MatMulMatMulstrided_slice_2:output:0*lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_13/MatMul╗
$lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02&
$lstm_cell_13/MatMul_1/ReadVariableOpй
lstm_cell_13/MatMul_1MatMulzeros:output:0,lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_13/MatMul_1а
lstm_cell_13/addAddV2lstm_cell_13/MatMul:product:0lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_cell_13/add┤
#lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#lstm_cell_13/BiasAdd/ReadVariableOpн
lstm_cell_13/BiasAddBiasAddlstm_cell_13/add:z:0+lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_13/BiasAdd~
lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_13/split/split_dimє
lstm_cell_13/splitSplit%lstm_cell_13/split/split_dim:output:0lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
lstm_cell_13/splitЖ
lstm_cell_13/SigmoidSigmoidlstm_cell_13/split:output:0*
T0*'
_output_shapes
:          2
lstm_cell_13/SigmoidК
lstm_cell_13/Sigmoid_1Sigmoidlstm_cell_13/split:output:1*
T0*'
_output_shapes
:          2
lstm_cell_13/Sigmoid_1Л
lstm_cell_13/mulMullstm_cell_13/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
lstm_cell_13/mul}
lstm_cell_13/ReluRelulstm_cell_13/split:output:2*
T0*'
_output_shapes
:          2
lstm_cell_13/ReluЬ
lstm_cell_13/mul_1Mullstm_cell_13/Sigmoid:y:0lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:          2
lstm_cell_13/mul_1С
lstm_cell_13/add_1AddV2lstm_cell_13/mul:z:0lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:          2
lstm_cell_13/add_1К
lstm_cell_13/Sigmoid_2Sigmoidlstm_cell_13/split:output:3*
T0*'
_output_shapes
:          2
lstm_cell_13/Sigmoid_2|
lstm_cell_13/Relu_1Relulstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:          2
lstm_cell_13/Relu_1а
lstm_cell_13/mul_2Mullstm_cell_13/Sigmoid_2:y:0!lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:          2
lstm_cell_13/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2
TensorArrayV2_1/element_shape╕
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterЛ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_13_matmul_readvariableop_resource-lstm_cell_13_matmul_1_readvariableop_resource,lstm_cell_13_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :          :          : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_147548*
condR
while_cond_147547*K
output_shapes:
8: : : : :          :          : : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permе
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:          2
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
:          2

Identity╚
NoOpNoOp$^lstm_cell_13/BiasAdd/ReadVariableOp#^lstm_cell_13/MatMul/ReadVariableOp%^lstm_cell_13/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         @: : : 2J
#lstm_cell_13/BiasAdd/ReadVariableOp#lstm_cell_13/BiasAdd/ReadVariableOp2H
"lstm_cell_13/MatMul/ReadVariableOp"lstm_cell_13/MatMul/ReadVariableOp2L
$lstm_cell_13/MatMul_1/ReadVariableOp$lstm_cell_13/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
м
┤
'__inference_lstm_6_layer_call_fn_146369

inputs
unknown:	А
	unknown_0:	@А
	unknown_1:	А
identityИвStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_1449252
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Фс
э
H__inference_sequential_3_layer_call_and_return_conditional_losses_146336

inputsE
2lstm_6_lstm_cell_12_matmul_readvariableop_resource:	АG
4lstm_6_lstm_cell_12_matmul_1_readvariableop_resource:	@АB
3lstm_6_lstm_cell_12_biasadd_readvariableop_resource:	АE
2lstm_7_lstm_cell_13_matmul_readvariableop_resource:	@АG
4lstm_7_lstm_cell_13_matmul_1_readvariableop_resource:	 АB
3lstm_7_lstm_cell_13_biasadd_readvariableop_resource:	А8
&dense_3_matmul_readvariableop_resource: 5
'dense_3_biasadd_readvariableop_resource:
identityИвdense_3/BiasAdd/ReadVariableOpвdense_3/MatMul/ReadVariableOpв*lstm_6/lstm_cell_12/BiasAdd/ReadVariableOpв)lstm_6/lstm_cell_12/MatMul/ReadVariableOpв+lstm_6/lstm_cell_12/MatMul_1/ReadVariableOpвlstm_6/whileв*lstm_7/lstm_cell_13/BiasAdd/ReadVariableOpв)lstm_7/lstm_cell_13/MatMul/ReadVariableOpв+lstm_7/lstm_cell_13/MatMul_1/ReadVariableOpвlstm_7/whileR
lstm_6/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_6/ShapeВ
lstm_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_6/strided_slice/stackЖ
lstm_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_6/strided_slice/stack_1Ж
lstm_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_6/strided_slice/stack_2М
lstm_6/strided_sliceStridedSlicelstm_6/Shape:output:0#lstm_6/strided_slice/stack:output:0%lstm_6/strided_slice/stack_1:output:0%lstm_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_6/strided_slicej
lstm_6/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_6/zeros/mul/yИ
lstm_6/zeros/mulMullstm_6/strided_slice:output:0lstm_6/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_6/zeros/mulm
lstm_6/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_6/zeros/Less/yГ
lstm_6/zeros/LessLesslstm_6/zeros/mul:z:0lstm_6/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_6/zeros/Lessp
lstm_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_6/zeros/packed/1Я
lstm_6/zeros/packedPacklstm_6/strided_slice:output:0lstm_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_6/zeros/packedm
lstm_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_6/zeros/ConstС
lstm_6/zerosFilllstm_6/zeros/packed:output:0lstm_6/zeros/Const:output:0*
T0*'
_output_shapes
:         @2
lstm_6/zerosn
lstm_6/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_6/zeros_1/mul/yО
lstm_6/zeros_1/mulMullstm_6/strided_slice:output:0lstm_6/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_6/zeros_1/mulq
lstm_6/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_6/zeros_1/Less/yЛ
lstm_6/zeros_1/LessLesslstm_6/zeros_1/mul:z:0lstm_6/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_6/zeros_1/Lesst
lstm_6/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_6/zeros_1/packed/1е
lstm_6/zeros_1/packedPacklstm_6/strided_slice:output:0 lstm_6/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_6/zeros_1/packedq
lstm_6/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_6/zeros_1/ConstЩ
lstm_6/zeros_1Filllstm_6/zeros_1/packed:output:0lstm_6/zeros_1/Const:output:0*
T0*'
_output_shapes
:         @2
lstm_6/zeros_1Г
lstm_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_6/transpose/permП
lstm_6/transpose	Transposeinputslstm_6/transpose/perm:output:0*
T0*+
_output_shapes
:         2
lstm_6/transposed
lstm_6/Shape_1Shapelstm_6/transpose:y:0*
T0*
_output_shapes
:2
lstm_6/Shape_1Ж
lstm_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_6/strided_slice_1/stackК
lstm_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_1/stack_1К
lstm_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_1/stack_2Ш
lstm_6/strided_slice_1StridedSlicelstm_6/Shape_1:output:0%lstm_6/strided_slice_1/stack:output:0'lstm_6/strided_slice_1/stack_1:output:0'lstm_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_6/strided_slice_1У
"lstm_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2$
"lstm_6/TensorArrayV2/element_shape╬
lstm_6/TensorArrayV2TensorListReserve+lstm_6/TensorArrayV2/element_shape:output:0lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_6/TensorArrayV2═
<lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2>
<lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shapeФ
.lstm_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_6/transpose:y:0Elstm_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_6/TensorArrayUnstack/TensorListFromTensorЖ
lstm_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_6/strided_slice_2/stackК
lstm_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_2/stack_1К
lstm_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_2/stack_2ж
lstm_6/strided_slice_2StridedSlicelstm_6/transpose:y:0%lstm_6/strided_slice_2/stack:output:0'lstm_6/strided_slice_2/stack_1:output:0'lstm_6/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
lstm_6/strided_slice_2╩
)lstm_6/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp2lstm_6_lstm_cell_12_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02+
)lstm_6/lstm_cell_12/MatMul/ReadVariableOp╔
lstm_6/lstm_cell_12/MatMulMatMullstm_6/strided_slice_2:output:01lstm_6/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_6/lstm_cell_12/MatMul╨
+lstm_6/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp4lstm_6_lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02-
+lstm_6/lstm_cell_12/MatMul_1/ReadVariableOp┼
lstm_6/lstm_cell_12/MatMul_1MatMullstm_6/zeros:output:03lstm_6/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_6/lstm_cell_12/MatMul_1╝
lstm_6/lstm_cell_12/addAddV2$lstm_6/lstm_cell_12/MatMul:product:0&lstm_6/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_6/lstm_cell_12/add╔
*lstm_6/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp3lstm_6_lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*lstm_6/lstm_cell_12/BiasAdd/ReadVariableOp╔
lstm_6/lstm_cell_12/BiasAddBiasAddlstm_6/lstm_cell_12/add:z:02lstm_6/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_6/lstm_cell_12/BiasAddМ
#lstm_6/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#lstm_6/lstm_cell_12/split/split_dimП
lstm_6/lstm_cell_12/splitSplit,lstm_6/lstm_cell_12/split/split_dim:output:0$lstm_6/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
lstm_6/lstm_cell_12/splitЫ
lstm_6/lstm_cell_12/SigmoidSigmoid"lstm_6/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:         @2
lstm_6/lstm_cell_12/SigmoidЯ
lstm_6/lstm_cell_12/Sigmoid_1Sigmoid"lstm_6/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:         @2
lstm_6/lstm_cell_12/Sigmoid_1з
lstm_6/lstm_cell_12/mulMul!lstm_6/lstm_cell_12/Sigmoid_1:y:0lstm_6/zeros_1:output:0*
T0*'
_output_shapes
:         @2
lstm_6/lstm_cell_12/mulТ
lstm_6/lstm_cell_12/ReluRelu"lstm_6/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:         @2
lstm_6/lstm_cell_12/Relu╕
lstm_6/lstm_cell_12/mul_1Mullstm_6/lstm_cell_12/Sigmoid:y:0&lstm_6/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:         @2
lstm_6/lstm_cell_12/mul_1н
lstm_6/lstm_cell_12/add_1AddV2lstm_6/lstm_cell_12/mul:z:0lstm_6/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:         @2
lstm_6/lstm_cell_12/add_1Я
lstm_6/lstm_cell_12/Sigmoid_2Sigmoid"lstm_6/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:         @2
lstm_6/lstm_cell_12/Sigmoid_2С
lstm_6/lstm_cell_12/Relu_1Relulstm_6/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:         @2
lstm_6/lstm_cell_12/Relu_1╝
lstm_6/lstm_cell_12/mul_2Mul!lstm_6/lstm_cell_12/Sigmoid_2:y:0(lstm_6/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:         @2
lstm_6/lstm_cell_12/mul_2Э
$lstm_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_6/TensorArrayV2_1/element_shape╘
lstm_6/TensorArrayV2_1TensorListReserve-lstm_6/TensorArrayV2_1/element_shape:output:0lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_6/TensorArrayV2_1\
lstm_6/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_6/timeН
lstm_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2!
lstm_6/while/maximum_iterationsx
lstm_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_6/while/loop_counterЇ
lstm_6/whileWhile"lstm_6/while/loop_counter:output:0(lstm_6/while/maximum_iterations:output:0lstm_6/time:output:0lstm_6/TensorArrayV2_1:handle:0lstm_6/zeros:output:0lstm_6/zeros_1:output:0lstm_6/strided_slice_1:output:0>lstm_6/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_6_lstm_cell_12_matmul_readvariableop_resource4lstm_6_lstm_cell_12_matmul_1_readvariableop_resource3lstm_6_lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_6_while_body_146091*$
condR
lstm_6_while_cond_146090*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations 2
lstm_6/while├
7lstm_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   29
7lstm_6/TensorArrayV2Stack/TensorListStack/element_shapeД
)lstm_6/TensorArrayV2Stack/TensorListStackTensorListStacklstm_6/while:output:3@lstm_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype02+
)lstm_6/TensorArrayV2Stack/TensorListStackП
lstm_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
lstm_6/strided_slice_3/stackК
lstm_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_6/strided_slice_3/stack_1К
lstm_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_3/stack_2─
lstm_6/strided_slice_3StridedSlice2lstm_6/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_6/strided_slice_3/stack:output:0'lstm_6/strided_slice_3/stack_1:output:0'lstm_6/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
lstm_6/strided_slice_3З
lstm_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_6/transpose_1/perm┴
lstm_6/transpose_1	Transpose2lstm_6/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_6/transpose_1/perm:output:0*
T0*+
_output_shapes
:         @2
lstm_6/transpose_1t
lstm_6/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_6/runtimeb
lstm_7/ShapeShapelstm_6/transpose_1:y:0*
T0*
_output_shapes
:2
lstm_7/ShapeВ
lstm_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_7/strided_slice/stackЖ
lstm_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_7/strided_slice/stack_1Ж
lstm_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_7/strided_slice/stack_2М
lstm_7/strided_sliceStridedSlicelstm_7/Shape:output:0#lstm_7/strided_slice/stack:output:0%lstm_7/strided_slice/stack_1:output:0%lstm_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_7/strided_slicej
lstm_7/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_7/zeros/mul/yИ
lstm_7/zeros/mulMullstm_7/strided_slice:output:0lstm_7/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_7/zeros/mulm
lstm_7/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_7/zeros/Less/yГ
lstm_7/zeros/LessLesslstm_7/zeros/mul:z:0lstm_7/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_7/zeros/Lessp
lstm_7/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_7/zeros/packed/1Я
lstm_7/zeros/packedPacklstm_7/strided_slice:output:0lstm_7/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_7/zeros/packedm
lstm_7/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_7/zeros/ConstС
lstm_7/zerosFilllstm_7/zeros/packed:output:0lstm_7/zeros/Const:output:0*
T0*'
_output_shapes
:          2
lstm_7/zerosn
lstm_7/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_7/zeros_1/mul/yО
lstm_7/zeros_1/mulMullstm_7/strided_slice:output:0lstm_7/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_7/zeros_1/mulq
lstm_7/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_7/zeros_1/Less/yЛ
lstm_7/zeros_1/LessLesslstm_7/zeros_1/mul:z:0lstm_7/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_7/zeros_1/Lesst
lstm_7/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_7/zeros_1/packed/1е
lstm_7/zeros_1/packedPacklstm_7/strided_slice:output:0 lstm_7/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_7/zeros_1/packedq
lstm_7/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_7/zeros_1/ConstЩ
lstm_7/zeros_1Filllstm_7/zeros_1/packed:output:0lstm_7/zeros_1/Const:output:0*
T0*'
_output_shapes
:          2
lstm_7/zeros_1Г
lstm_7/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_7/transpose/permЯ
lstm_7/transpose	Transposelstm_6/transpose_1:y:0lstm_7/transpose/perm:output:0*
T0*+
_output_shapes
:         @2
lstm_7/transposed
lstm_7/Shape_1Shapelstm_7/transpose:y:0*
T0*
_output_shapes
:2
lstm_7/Shape_1Ж
lstm_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_7/strided_slice_1/stackК
lstm_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_7/strided_slice_1/stack_1К
lstm_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_7/strided_slice_1/stack_2Ш
lstm_7/strided_slice_1StridedSlicelstm_7/Shape_1:output:0%lstm_7/strided_slice_1/stack:output:0'lstm_7/strided_slice_1/stack_1:output:0'lstm_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_7/strided_slice_1У
"lstm_7/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2$
"lstm_7/TensorArrayV2/element_shape╬
lstm_7/TensorArrayV2TensorListReserve+lstm_7/TensorArrayV2/element_shape:output:0lstm_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_7/TensorArrayV2═
<lstm_7/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2>
<lstm_7/TensorArrayUnstack/TensorListFromTensor/element_shapeФ
.lstm_7/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_7/transpose:y:0Elstm_7/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_7/TensorArrayUnstack/TensorListFromTensorЖ
lstm_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_7/strided_slice_2/stackК
lstm_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_7/strided_slice_2/stack_1К
lstm_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_7/strided_slice_2/stack_2ж
lstm_7/strided_slice_2StridedSlicelstm_7/transpose:y:0%lstm_7/strided_slice_2/stack:output:0'lstm_7/strided_slice_2/stack_1:output:0'lstm_7/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
lstm_7/strided_slice_2╩
)lstm_7/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp2lstm_7_lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	@А*
dtype02+
)lstm_7/lstm_cell_13/MatMul/ReadVariableOp╔
lstm_7/lstm_cell_13/MatMulMatMullstm_7/strided_slice_2:output:01lstm_7/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_7/lstm_cell_13/MatMul╨
+lstm_7/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp4lstm_7_lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02-
+lstm_7/lstm_cell_13/MatMul_1/ReadVariableOp┼
lstm_7/lstm_cell_13/MatMul_1MatMullstm_7/zeros:output:03lstm_7/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_7/lstm_cell_13/MatMul_1╝
lstm_7/lstm_cell_13/addAddV2$lstm_7/lstm_cell_13/MatMul:product:0&lstm_7/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_7/lstm_cell_13/add╔
*lstm_7/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp3lstm_7_lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*lstm_7/lstm_cell_13/BiasAdd/ReadVariableOp╔
lstm_7/lstm_cell_13/BiasAddBiasAddlstm_7/lstm_cell_13/add:z:02lstm_7/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_7/lstm_cell_13/BiasAddМ
#lstm_7/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#lstm_7/lstm_cell_13/split/split_dimП
lstm_7/lstm_cell_13/splitSplit,lstm_7/lstm_cell_13/split/split_dim:output:0$lstm_7/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
lstm_7/lstm_cell_13/splitЫ
lstm_7/lstm_cell_13/SigmoidSigmoid"lstm_7/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:          2
lstm_7/lstm_cell_13/SigmoidЯ
lstm_7/lstm_cell_13/Sigmoid_1Sigmoid"lstm_7/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:          2
lstm_7/lstm_cell_13/Sigmoid_1з
lstm_7/lstm_cell_13/mulMul!lstm_7/lstm_cell_13/Sigmoid_1:y:0lstm_7/zeros_1:output:0*
T0*'
_output_shapes
:          2
lstm_7/lstm_cell_13/mulТ
lstm_7/lstm_cell_13/ReluRelu"lstm_7/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:          2
lstm_7/lstm_cell_13/Relu╕
lstm_7/lstm_cell_13/mul_1Mullstm_7/lstm_cell_13/Sigmoid:y:0&lstm_7/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:          2
lstm_7/lstm_cell_13/mul_1н
lstm_7/lstm_cell_13/add_1AddV2lstm_7/lstm_cell_13/mul:z:0lstm_7/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:          2
lstm_7/lstm_cell_13/add_1Я
lstm_7/lstm_cell_13/Sigmoid_2Sigmoid"lstm_7/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:          2
lstm_7/lstm_cell_13/Sigmoid_2С
lstm_7/lstm_cell_13/Relu_1Relulstm_7/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:          2
lstm_7/lstm_cell_13/Relu_1╝
lstm_7/lstm_cell_13/mul_2Mul!lstm_7/lstm_cell_13/Sigmoid_2:y:0(lstm_7/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:          2
lstm_7/lstm_cell_13/mul_2Э
$lstm_7/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_7/TensorArrayV2_1/element_shape╘
lstm_7/TensorArrayV2_1TensorListReserve-lstm_7/TensorArrayV2_1/element_shape:output:0lstm_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_7/TensorArrayV2_1\
lstm_7/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_7/timeН
lstm_7/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2!
lstm_7/while/maximum_iterationsx
lstm_7/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_7/while/loop_counterЇ
lstm_7/whileWhile"lstm_7/while/loop_counter:output:0(lstm_7/while/maximum_iterations:output:0lstm_7/time:output:0lstm_7/TensorArrayV2_1:handle:0lstm_7/zeros:output:0lstm_7/zeros_1:output:0lstm_7/strided_slice_1:output:0>lstm_7/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_7_lstm_cell_13_matmul_readvariableop_resource4lstm_7_lstm_cell_13_matmul_1_readvariableop_resource3lstm_7_lstm_cell_13_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :          :          : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_7_while_body_146238*$
condR
lstm_7_while_cond_146237*K
output_shapes:
8: : : : :          :          : : : : : *
parallel_iterations 2
lstm_7/while├
7lstm_7/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        29
7lstm_7/TensorArrayV2Stack/TensorListStack/element_shapeД
)lstm_7/TensorArrayV2Stack/TensorListStackTensorListStacklstm_7/while:output:3@lstm_7/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype02+
)lstm_7/TensorArrayV2Stack/TensorListStackП
lstm_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
lstm_7/strided_slice_3/stackК
lstm_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_7/strided_slice_3/stack_1К
lstm_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_7/strided_slice_3/stack_2─
lstm_7/strided_slice_3StridedSlice2lstm_7/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_7/strided_slice_3/stack:output:0'lstm_7/strided_slice_3/stack_1:output:0'lstm_7/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
lstm_7/strided_slice_3З
lstm_7/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_7/transpose_1/perm┴
lstm_7/transpose_1	Transpose2lstm_7/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_7/transpose_1/perm:output:0*
T0*+
_output_shapes
:          2
lstm_7/transpose_1t
lstm_7/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_7/runtimew
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout_3/dropout/Constк
dropout_3/dropout/MulMullstm_7/strided_slice_3:output:0 dropout_3/dropout/Const:output:0*
T0*'
_output_shapes
:          2
dropout_3/dropout/MulБ
dropout_3/dropout/ShapeShapelstm_7/strided_slice_3:output:0*
T0*
_output_shapes
:2
dropout_3/dropout/Shape╥
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*'
_output_shapes
:          *
dtype020
.dropout_3/dropout/random_uniform/RandomUniformЙ
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2"
 dropout_3/dropout/GreaterEqual/yц
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          2 
dropout_3/dropout/GreaterEqualЭ
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:          2
dropout_3/dropout/Castв
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*'
_output_shapes
:          2
dropout_3/dropout/Mul_1е
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_3/MatMul/ReadVariableOpа
dense_3/MatMulMatMuldropout_3/dropout/Mul_1:z:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_3/MatMulд
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOpб
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_3/BiasAdds
IdentityIdentitydense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         2

Identity╗
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp+^lstm_6/lstm_cell_12/BiasAdd/ReadVariableOp*^lstm_6/lstm_cell_12/MatMul/ReadVariableOp,^lstm_6/lstm_cell_12/MatMul_1/ReadVariableOp^lstm_6/while+^lstm_7/lstm_cell_13/BiasAdd/ReadVariableOp*^lstm_7/lstm_cell_13/MatMul/ReadVariableOp,^lstm_7/lstm_cell_13/MatMul_1/ReadVariableOp^lstm_7/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : : : : : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2X
*lstm_6/lstm_cell_12/BiasAdd/ReadVariableOp*lstm_6/lstm_cell_12/BiasAdd/ReadVariableOp2V
)lstm_6/lstm_cell_12/MatMul/ReadVariableOp)lstm_6/lstm_cell_12/MatMul/ReadVariableOp2Z
+lstm_6/lstm_cell_12/MatMul_1/ReadVariableOp+lstm_6/lstm_cell_12/MatMul_1/ReadVariableOp2
lstm_6/whilelstm_6/while2X
*lstm_7/lstm_cell_13/BiasAdd/ReadVariableOp*lstm_7/lstm_cell_13/BiasAdd/ReadVariableOp2V
)lstm_7/lstm_cell_13/MatMul/ReadVariableOp)lstm_7/lstm_cell_13/MatMul/ReadVariableOp2Z
+lstm_7/lstm_cell_13/MatMul_1/ReadVariableOp+lstm_7/lstm_cell_13/MatMul_1/ReadVariableOp2
lstm_7/whilelstm_7/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
р[
Ъ
B__inference_lstm_6_layer_call_and_return_conditional_losses_144925

inputs>
+lstm_cell_12_matmul_readvariableop_resource:	А@
-lstm_cell_12_matmul_1_readvariableop_resource:	@А;
,lstm_cell_12_biasadd_readvariableop_resource:	А
identityИв#lstm_cell_12/BiasAdd/ReadVariableOpв"lstm_cell_12/MatMul/ReadVariableOpв$lstm_cell_12/MatMul_1/ReadVariableOpвwhileD
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
strided_slice/stack_2т
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
B :ш2
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
zeros/packed/1Г
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
:         @2
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
B :ш2
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
zeros_1/packed/1Й
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
:         @2	
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
:         2
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_2╡
"lstm_cell_12/MatMul/ReadVariableOpReadVariableOp+lstm_cell_12_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02$
"lstm_cell_12/MatMul/ReadVariableOpн
lstm_cell_12/MatMulMatMulstrided_slice_2:output:0*lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_12/MatMul╗
$lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02&
$lstm_cell_12/MatMul_1/ReadVariableOpй
lstm_cell_12/MatMul_1MatMulzeros:output:0,lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_12/MatMul_1а
lstm_cell_12/addAddV2lstm_cell_12/MatMul:product:0lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_cell_12/add┤
#lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#lstm_cell_12/BiasAdd/ReadVariableOpн
lstm_cell_12/BiasAddBiasAddlstm_cell_12/add:z:0+lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_12/BiasAdd~
lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_12/split/split_dimє
lstm_cell_12/splitSplit%lstm_cell_12/split/split_dim:output:0lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
lstm_cell_12/splitЖ
lstm_cell_12/SigmoidSigmoidlstm_cell_12/split:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/SigmoidК
lstm_cell_12/Sigmoid_1Sigmoidlstm_cell_12/split:output:1*
T0*'
_output_shapes
:         @2
lstm_cell_12/Sigmoid_1Л
lstm_cell_12/mulMullstm_cell_12/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/mul}
lstm_cell_12/ReluRelulstm_cell_12/split:output:2*
T0*'
_output_shapes
:         @2
lstm_cell_12/ReluЬ
lstm_cell_12/mul_1Mullstm_cell_12/Sigmoid:y:0lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/mul_1С
lstm_cell_12/add_1AddV2lstm_cell_12/mul:z:0lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/add_1К
lstm_cell_12/Sigmoid_2Sigmoidlstm_cell_12/split:output:3*
T0*'
_output_shapes
:         @2
lstm_cell_12/Sigmoid_2|
lstm_cell_12/Relu_1Relulstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/Relu_1а
lstm_cell_12/mul_2Mullstm_cell_12/Sigmoid_2:y:0!lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
TensorArrayV2_1/element_shape╕
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterЛ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_12_matmul_readvariableop_resource-lstm_cell_12_matmul_1_readvariableop_resource,lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_144841*
condR
while_cond_144840*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permе
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         @2
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
:         @2

Identity╚
NoOpNoOp$^lstm_cell_12/BiasAdd/ReadVariableOp#^lstm_cell_12/MatMul/ReadVariableOp%^lstm_cell_12/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2J
#lstm_cell_12/BiasAdd/ReadVariableOp#lstm_cell_12/BiasAdd/ReadVariableOp2H
"lstm_cell_12/MatMul/ReadVariableOp"lstm_cell_12/MatMul/ReadVariableOp2L
$lstm_cell_12/MatMul_1/ReadVariableOp$lstm_cell_12/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╘Л
╢	
!__inference__wrapped_model_143508
lstm_6_inputR
?sequential_3_lstm_6_lstm_cell_12_matmul_readvariableop_resource:	АT
Asequential_3_lstm_6_lstm_cell_12_matmul_1_readvariableop_resource:	@АO
@sequential_3_lstm_6_lstm_cell_12_biasadd_readvariableop_resource:	АR
?sequential_3_lstm_7_lstm_cell_13_matmul_readvariableop_resource:	@АT
Asequential_3_lstm_7_lstm_cell_13_matmul_1_readvariableop_resource:	 АO
@sequential_3_lstm_7_lstm_cell_13_biasadd_readvariableop_resource:	АE
3sequential_3_dense_3_matmul_readvariableop_resource: B
4sequential_3_dense_3_biasadd_readvariableop_resource:
identityИв+sequential_3/dense_3/BiasAdd/ReadVariableOpв*sequential_3/dense_3/MatMul/ReadVariableOpв7sequential_3/lstm_6/lstm_cell_12/BiasAdd/ReadVariableOpв6sequential_3/lstm_6/lstm_cell_12/MatMul/ReadVariableOpв8sequential_3/lstm_6/lstm_cell_12/MatMul_1/ReadVariableOpвsequential_3/lstm_6/whileв7sequential_3/lstm_7/lstm_cell_13/BiasAdd/ReadVariableOpв6sequential_3/lstm_7/lstm_cell_13/MatMul/ReadVariableOpв8sequential_3/lstm_7/lstm_cell_13/MatMul_1/ReadVariableOpвsequential_3/lstm_7/whiler
sequential_3/lstm_6/ShapeShapelstm_6_input*
T0*
_output_shapes
:2
sequential_3/lstm_6/ShapeЬ
'sequential_3/lstm_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_3/lstm_6/strided_slice/stackа
)sequential_3/lstm_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_3/lstm_6/strided_slice/stack_1а
)sequential_3/lstm_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_3/lstm_6/strided_slice/stack_2┌
!sequential_3/lstm_6/strided_sliceStridedSlice"sequential_3/lstm_6/Shape:output:00sequential_3/lstm_6/strided_slice/stack:output:02sequential_3/lstm_6/strided_slice/stack_1:output:02sequential_3/lstm_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_3/lstm_6/strided_sliceД
sequential_3/lstm_6/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2!
sequential_3/lstm_6/zeros/mul/y╝
sequential_3/lstm_6/zeros/mulMul*sequential_3/lstm_6/strided_slice:output:0(sequential_3/lstm_6/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_3/lstm_6/zeros/mulЗ
 sequential_3/lstm_6/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2"
 sequential_3/lstm_6/zeros/Less/y╖
sequential_3/lstm_6/zeros/LessLess!sequential_3/lstm_6/zeros/mul:z:0)sequential_3/lstm_6/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
sequential_3/lstm_6/zeros/LessК
"sequential_3/lstm_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2$
"sequential_3/lstm_6/zeros/packed/1╙
 sequential_3/lstm_6/zeros/packedPack*sequential_3/lstm_6/strided_slice:output:0+sequential_3/lstm_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_3/lstm_6/zeros/packedЗ
sequential_3/lstm_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_3/lstm_6/zeros/Const┼
sequential_3/lstm_6/zerosFill)sequential_3/lstm_6/zeros/packed:output:0(sequential_3/lstm_6/zeros/Const:output:0*
T0*'
_output_shapes
:         @2
sequential_3/lstm_6/zerosИ
!sequential_3/lstm_6/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2#
!sequential_3/lstm_6/zeros_1/mul/y┬
sequential_3/lstm_6/zeros_1/mulMul*sequential_3/lstm_6/strided_slice:output:0*sequential_3/lstm_6/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_3/lstm_6/zeros_1/mulЛ
"sequential_3/lstm_6/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2$
"sequential_3/lstm_6/zeros_1/Less/y┐
 sequential_3/lstm_6/zeros_1/LessLess#sequential_3/lstm_6/zeros_1/mul:z:0+sequential_3/lstm_6/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_3/lstm_6/zeros_1/LessО
$sequential_3/lstm_6/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2&
$sequential_3/lstm_6/zeros_1/packed/1┘
"sequential_3/lstm_6/zeros_1/packedPack*sequential_3/lstm_6/strided_slice:output:0-sequential_3/lstm_6/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_3/lstm_6/zeros_1/packedЛ
!sequential_3/lstm_6/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_3/lstm_6/zeros_1/Const═
sequential_3/lstm_6/zeros_1Fill+sequential_3/lstm_6/zeros_1/packed:output:0*sequential_3/lstm_6/zeros_1/Const:output:0*
T0*'
_output_shapes
:         @2
sequential_3/lstm_6/zeros_1Э
"sequential_3/lstm_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"sequential_3/lstm_6/transpose/perm╝
sequential_3/lstm_6/transpose	Transposelstm_6_input+sequential_3/lstm_6/transpose/perm:output:0*
T0*+
_output_shapes
:         2
sequential_3/lstm_6/transposeЛ
sequential_3/lstm_6/Shape_1Shape!sequential_3/lstm_6/transpose:y:0*
T0*
_output_shapes
:2
sequential_3/lstm_6/Shape_1а
)sequential_3/lstm_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_3/lstm_6/strided_slice_1/stackд
+sequential_3/lstm_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_6/strided_slice_1/stack_1д
+sequential_3/lstm_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_6/strided_slice_1/stack_2ц
#sequential_3/lstm_6/strided_slice_1StridedSlice$sequential_3/lstm_6/Shape_1:output:02sequential_3/lstm_6/strided_slice_1/stack:output:04sequential_3/lstm_6/strided_slice_1/stack_1:output:04sequential_3/lstm_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_3/lstm_6/strided_slice_1н
/sequential_3/lstm_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         21
/sequential_3/lstm_6/TensorArrayV2/element_shapeВ
!sequential_3/lstm_6/TensorArrayV2TensorListReserve8sequential_3/lstm_6/TensorArrayV2/element_shape:output:0,sequential_3/lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!sequential_3/lstm_6/TensorArrayV2ч
Isequential_3/lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2K
Isequential_3/lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shape╚
;sequential_3/lstm_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_3/lstm_6/transpose:y:0Rsequential_3/lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;sequential_3/lstm_6/TensorArrayUnstack/TensorListFromTensorа
)sequential_3/lstm_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_3/lstm_6/strided_slice_2/stackд
+sequential_3/lstm_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_6/strided_slice_2/stack_1д
+sequential_3/lstm_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_6/strided_slice_2/stack_2Ї
#sequential_3/lstm_6/strided_slice_2StridedSlice!sequential_3/lstm_6/transpose:y:02sequential_3/lstm_6/strided_slice_2/stack:output:04sequential_3/lstm_6/strided_slice_2/stack_1:output:04sequential_3/lstm_6/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2%
#sequential_3/lstm_6/strided_slice_2ё
6sequential_3/lstm_6/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp?sequential_3_lstm_6_lstm_cell_12_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype028
6sequential_3/lstm_6/lstm_cell_12/MatMul/ReadVariableOp¤
'sequential_3/lstm_6/lstm_cell_12/MatMulMatMul,sequential_3/lstm_6/strided_slice_2:output:0>sequential_3/lstm_6/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2)
'sequential_3/lstm_6/lstm_cell_12/MatMulў
8sequential_3/lstm_6/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOpAsequential_3_lstm_6_lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02:
8sequential_3/lstm_6/lstm_cell_12/MatMul_1/ReadVariableOp∙
)sequential_3/lstm_6/lstm_cell_12/MatMul_1MatMul"sequential_3/lstm_6/zeros:output:0@sequential_3/lstm_6/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2+
)sequential_3/lstm_6/lstm_cell_12/MatMul_1Ё
$sequential_3/lstm_6/lstm_cell_12/addAddV21sequential_3/lstm_6/lstm_cell_12/MatMul:product:03sequential_3/lstm_6/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:         А2&
$sequential_3/lstm_6/lstm_cell_12/addЁ
7sequential_3/lstm_6/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp@sequential_3_lstm_6_lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype029
7sequential_3/lstm_6/lstm_cell_12/BiasAdd/ReadVariableOp¤
(sequential_3/lstm_6/lstm_cell_12/BiasAddBiasAdd(sequential_3/lstm_6/lstm_cell_12/add:z:0?sequential_3/lstm_6/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2*
(sequential_3/lstm_6/lstm_cell_12/BiasAddж
0sequential_3/lstm_6/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :22
0sequential_3/lstm_6/lstm_cell_12/split/split_dim├
&sequential_3/lstm_6/lstm_cell_12/splitSplit9sequential_3/lstm_6/lstm_cell_12/split/split_dim:output:01sequential_3/lstm_6/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2(
&sequential_3/lstm_6/lstm_cell_12/split┬
(sequential_3/lstm_6/lstm_cell_12/SigmoidSigmoid/sequential_3/lstm_6/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:         @2*
(sequential_3/lstm_6/lstm_cell_12/Sigmoid╞
*sequential_3/lstm_6/lstm_cell_12/Sigmoid_1Sigmoid/sequential_3/lstm_6/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:         @2,
*sequential_3/lstm_6/lstm_cell_12/Sigmoid_1█
$sequential_3/lstm_6/lstm_cell_12/mulMul.sequential_3/lstm_6/lstm_cell_12/Sigmoid_1:y:0$sequential_3/lstm_6/zeros_1:output:0*
T0*'
_output_shapes
:         @2&
$sequential_3/lstm_6/lstm_cell_12/mul╣
%sequential_3/lstm_6/lstm_cell_12/ReluRelu/sequential_3/lstm_6/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:         @2'
%sequential_3/lstm_6/lstm_cell_12/Reluь
&sequential_3/lstm_6/lstm_cell_12/mul_1Mul,sequential_3/lstm_6/lstm_cell_12/Sigmoid:y:03sequential_3/lstm_6/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:         @2(
&sequential_3/lstm_6/lstm_cell_12/mul_1с
&sequential_3/lstm_6/lstm_cell_12/add_1AddV2(sequential_3/lstm_6/lstm_cell_12/mul:z:0*sequential_3/lstm_6/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:         @2(
&sequential_3/lstm_6/lstm_cell_12/add_1╞
*sequential_3/lstm_6/lstm_cell_12/Sigmoid_2Sigmoid/sequential_3/lstm_6/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:         @2,
*sequential_3/lstm_6/lstm_cell_12/Sigmoid_2╕
'sequential_3/lstm_6/lstm_cell_12/Relu_1Relu*sequential_3/lstm_6/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:         @2)
'sequential_3/lstm_6/lstm_cell_12/Relu_1Ё
&sequential_3/lstm_6/lstm_cell_12/mul_2Mul.sequential_3/lstm_6/lstm_cell_12/Sigmoid_2:y:05sequential_3/lstm_6/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:         @2(
&sequential_3/lstm_6/lstm_cell_12/mul_2╖
1sequential_3/lstm_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   23
1sequential_3/lstm_6/TensorArrayV2_1/element_shapeИ
#sequential_3/lstm_6/TensorArrayV2_1TensorListReserve:sequential_3/lstm_6/TensorArrayV2_1/element_shape:output:0,sequential_3/lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_3/lstm_6/TensorArrayV2_1v
sequential_3/lstm_6/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_3/lstm_6/timeз
,sequential_3/lstm_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2.
,sequential_3/lstm_6/while/maximum_iterationsТ
&sequential_3/lstm_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_3/lstm_6/while/loop_counter╖
sequential_3/lstm_6/whileWhile/sequential_3/lstm_6/while/loop_counter:output:05sequential_3/lstm_6/while/maximum_iterations:output:0!sequential_3/lstm_6/time:output:0,sequential_3/lstm_6/TensorArrayV2_1:handle:0"sequential_3/lstm_6/zeros:output:0$sequential_3/lstm_6/zeros_1:output:0,sequential_3/lstm_6/strided_slice_1:output:0Ksequential_3/lstm_6/TensorArrayUnstack/TensorListFromTensor:output_handle:0?sequential_3_lstm_6_lstm_cell_12_matmul_readvariableop_resourceAsequential_3_lstm_6_lstm_cell_12_matmul_1_readvariableop_resource@sequential_3_lstm_6_lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *1
body)R'
%sequential_3_lstm_6_while_body_143270*1
cond)R'
%sequential_3_lstm_6_while_cond_143269*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations 2
sequential_3/lstm_6/while▌
Dsequential_3/lstm_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2F
Dsequential_3/lstm_6/TensorArrayV2Stack/TensorListStack/element_shape╕
6sequential_3/lstm_6/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_3/lstm_6/while:output:3Msequential_3/lstm_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype028
6sequential_3/lstm_6/TensorArrayV2Stack/TensorListStackй
)sequential_3/lstm_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2+
)sequential_3/lstm_6/strided_slice_3/stackд
+sequential_3/lstm_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_3/lstm_6/strided_slice_3/stack_1д
+sequential_3/lstm_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_6/strided_slice_3/stack_2Т
#sequential_3/lstm_6/strided_slice_3StridedSlice?sequential_3/lstm_6/TensorArrayV2Stack/TensorListStack:tensor:02sequential_3/lstm_6/strided_slice_3/stack:output:04sequential_3/lstm_6/strided_slice_3/stack_1:output:04sequential_3/lstm_6/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2%
#sequential_3/lstm_6/strided_slice_3б
$sequential_3/lstm_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_3/lstm_6/transpose_1/permї
sequential_3/lstm_6/transpose_1	Transpose?sequential_3/lstm_6/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_3/lstm_6/transpose_1/perm:output:0*
T0*+
_output_shapes
:         @2!
sequential_3/lstm_6/transpose_1О
sequential_3/lstm_6/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_3/lstm_6/runtimeЙ
sequential_3/lstm_7/ShapeShape#sequential_3/lstm_6/transpose_1:y:0*
T0*
_output_shapes
:2
sequential_3/lstm_7/ShapeЬ
'sequential_3/lstm_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_3/lstm_7/strided_slice/stackа
)sequential_3/lstm_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_3/lstm_7/strided_slice/stack_1а
)sequential_3/lstm_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_3/lstm_7/strided_slice/stack_2┌
!sequential_3/lstm_7/strided_sliceStridedSlice"sequential_3/lstm_7/Shape:output:00sequential_3/lstm_7/strided_slice/stack:output:02sequential_3/lstm_7/strided_slice/stack_1:output:02sequential_3/lstm_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_3/lstm_7/strided_sliceД
sequential_3/lstm_7/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2!
sequential_3/lstm_7/zeros/mul/y╝
sequential_3/lstm_7/zeros/mulMul*sequential_3/lstm_7/strided_slice:output:0(sequential_3/lstm_7/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_3/lstm_7/zeros/mulЗ
 sequential_3/lstm_7/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2"
 sequential_3/lstm_7/zeros/Less/y╖
sequential_3/lstm_7/zeros/LessLess!sequential_3/lstm_7/zeros/mul:z:0)sequential_3/lstm_7/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
sequential_3/lstm_7/zeros/LessК
"sequential_3/lstm_7/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2$
"sequential_3/lstm_7/zeros/packed/1╙
 sequential_3/lstm_7/zeros/packedPack*sequential_3/lstm_7/strided_slice:output:0+sequential_3/lstm_7/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_3/lstm_7/zeros/packedЗ
sequential_3/lstm_7/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_3/lstm_7/zeros/Const┼
sequential_3/lstm_7/zerosFill)sequential_3/lstm_7/zeros/packed:output:0(sequential_3/lstm_7/zeros/Const:output:0*
T0*'
_output_shapes
:          2
sequential_3/lstm_7/zerosИ
!sequential_3/lstm_7/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2#
!sequential_3/lstm_7/zeros_1/mul/y┬
sequential_3/lstm_7/zeros_1/mulMul*sequential_3/lstm_7/strided_slice:output:0*sequential_3/lstm_7/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_3/lstm_7/zeros_1/mulЛ
"sequential_3/lstm_7/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2$
"sequential_3/lstm_7/zeros_1/Less/y┐
 sequential_3/lstm_7/zeros_1/LessLess#sequential_3/lstm_7/zeros_1/mul:z:0+sequential_3/lstm_7/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_3/lstm_7/zeros_1/LessО
$sequential_3/lstm_7/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_3/lstm_7/zeros_1/packed/1┘
"sequential_3/lstm_7/zeros_1/packedPack*sequential_3/lstm_7/strided_slice:output:0-sequential_3/lstm_7/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_3/lstm_7/zeros_1/packedЛ
!sequential_3/lstm_7/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_3/lstm_7/zeros_1/Const═
sequential_3/lstm_7/zeros_1Fill+sequential_3/lstm_7/zeros_1/packed:output:0*sequential_3/lstm_7/zeros_1/Const:output:0*
T0*'
_output_shapes
:          2
sequential_3/lstm_7/zeros_1Э
"sequential_3/lstm_7/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"sequential_3/lstm_7/transpose/perm╙
sequential_3/lstm_7/transpose	Transpose#sequential_3/lstm_6/transpose_1:y:0+sequential_3/lstm_7/transpose/perm:output:0*
T0*+
_output_shapes
:         @2
sequential_3/lstm_7/transposeЛ
sequential_3/lstm_7/Shape_1Shape!sequential_3/lstm_7/transpose:y:0*
T0*
_output_shapes
:2
sequential_3/lstm_7/Shape_1а
)sequential_3/lstm_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_3/lstm_7/strided_slice_1/stackд
+sequential_3/lstm_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_7/strided_slice_1/stack_1д
+sequential_3/lstm_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_7/strided_slice_1/stack_2ц
#sequential_3/lstm_7/strided_slice_1StridedSlice$sequential_3/lstm_7/Shape_1:output:02sequential_3/lstm_7/strided_slice_1/stack:output:04sequential_3/lstm_7/strided_slice_1/stack_1:output:04sequential_3/lstm_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_3/lstm_7/strided_slice_1н
/sequential_3/lstm_7/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         21
/sequential_3/lstm_7/TensorArrayV2/element_shapeВ
!sequential_3/lstm_7/TensorArrayV2TensorListReserve8sequential_3/lstm_7/TensorArrayV2/element_shape:output:0,sequential_3/lstm_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!sequential_3/lstm_7/TensorArrayV2ч
Isequential_3/lstm_7/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2K
Isequential_3/lstm_7/TensorArrayUnstack/TensorListFromTensor/element_shape╚
;sequential_3/lstm_7/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_3/lstm_7/transpose:y:0Rsequential_3/lstm_7/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;sequential_3/lstm_7/TensorArrayUnstack/TensorListFromTensorа
)sequential_3/lstm_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_3/lstm_7/strided_slice_2/stackд
+sequential_3/lstm_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_7/strided_slice_2/stack_1д
+sequential_3/lstm_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_7/strided_slice_2/stack_2Ї
#sequential_3/lstm_7/strided_slice_2StridedSlice!sequential_3/lstm_7/transpose:y:02sequential_3/lstm_7/strided_slice_2/stack:output:04sequential_3/lstm_7/strided_slice_2/stack_1:output:04sequential_3/lstm_7/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2%
#sequential_3/lstm_7/strided_slice_2ё
6sequential_3/lstm_7/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp?sequential_3_lstm_7_lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	@А*
dtype028
6sequential_3/lstm_7/lstm_cell_13/MatMul/ReadVariableOp¤
'sequential_3/lstm_7/lstm_cell_13/MatMulMatMul,sequential_3/lstm_7/strided_slice_2:output:0>sequential_3/lstm_7/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2)
'sequential_3/lstm_7/lstm_cell_13/MatMulў
8sequential_3/lstm_7/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOpAsequential_3_lstm_7_lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02:
8sequential_3/lstm_7/lstm_cell_13/MatMul_1/ReadVariableOp∙
)sequential_3/lstm_7/lstm_cell_13/MatMul_1MatMul"sequential_3/lstm_7/zeros:output:0@sequential_3/lstm_7/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2+
)sequential_3/lstm_7/lstm_cell_13/MatMul_1Ё
$sequential_3/lstm_7/lstm_cell_13/addAddV21sequential_3/lstm_7/lstm_cell_13/MatMul:product:03sequential_3/lstm_7/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:         А2&
$sequential_3/lstm_7/lstm_cell_13/addЁ
7sequential_3/lstm_7/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp@sequential_3_lstm_7_lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype029
7sequential_3/lstm_7/lstm_cell_13/BiasAdd/ReadVariableOp¤
(sequential_3/lstm_7/lstm_cell_13/BiasAddBiasAdd(sequential_3/lstm_7/lstm_cell_13/add:z:0?sequential_3/lstm_7/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2*
(sequential_3/lstm_7/lstm_cell_13/BiasAddж
0sequential_3/lstm_7/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :22
0sequential_3/lstm_7/lstm_cell_13/split/split_dim├
&sequential_3/lstm_7/lstm_cell_13/splitSplit9sequential_3/lstm_7/lstm_cell_13/split/split_dim:output:01sequential_3/lstm_7/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2(
&sequential_3/lstm_7/lstm_cell_13/split┬
(sequential_3/lstm_7/lstm_cell_13/SigmoidSigmoid/sequential_3/lstm_7/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:          2*
(sequential_3/lstm_7/lstm_cell_13/Sigmoid╞
*sequential_3/lstm_7/lstm_cell_13/Sigmoid_1Sigmoid/sequential_3/lstm_7/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:          2,
*sequential_3/lstm_7/lstm_cell_13/Sigmoid_1█
$sequential_3/lstm_7/lstm_cell_13/mulMul.sequential_3/lstm_7/lstm_cell_13/Sigmoid_1:y:0$sequential_3/lstm_7/zeros_1:output:0*
T0*'
_output_shapes
:          2&
$sequential_3/lstm_7/lstm_cell_13/mul╣
%sequential_3/lstm_7/lstm_cell_13/ReluRelu/sequential_3/lstm_7/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:          2'
%sequential_3/lstm_7/lstm_cell_13/Reluь
&sequential_3/lstm_7/lstm_cell_13/mul_1Mul,sequential_3/lstm_7/lstm_cell_13/Sigmoid:y:03sequential_3/lstm_7/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:          2(
&sequential_3/lstm_7/lstm_cell_13/mul_1с
&sequential_3/lstm_7/lstm_cell_13/add_1AddV2(sequential_3/lstm_7/lstm_cell_13/mul:z:0*sequential_3/lstm_7/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:          2(
&sequential_3/lstm_7/lstm_cell_13/add_1╞
*sequential_3/lstm_7/lstm_cell_13/Sigmoid_2Sigmoid/sequential_3/lstm_7/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:          2,
*sequential_3/lstm_7/lstm_cell_13/Sigmoid_2╕
'sequential_3/lstm_7/lstm_cell_13/Relu_1Relu*sequential_3/lstm_7/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:          2)
'sequential_3/lstm_7/lstm_cell_13/Relu_1Ё
&sequential_3/lstm_7/lstm_cell_13/mul_2Mul.sequential_3/lstm_7/lstm_cell_13/Sigmoid_2:y:05sequential_3/lstm_7/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:          2(
&sequential_3/lstm_7/lstm_cell_13/mul_2╖
1sequential_3/lstm_7/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        23
1sequential_3/lstm_7/TensorArrayV2_1/element_shapeИ
#sequential_3/lstm_7/TensorArrayV2_1TensorListReserve:sequential_3/lstm_7/TensorArrayV2_1/element_shape:output:0,sequential_3/lstm_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_3/lstm_7/TensorArrayV2_1v
sequential_3/lstm_7/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_3/lstm_7/timeз
,sequential_3/lstm_7/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2.
,sequential_3/lstm_7/while/maximum_iterationsТ
&sequential_3/lstm_7/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_3/lstm_7/while/loop_counter╖
sequential_3/lstm_7/whileWhile/sequential_3/lstm_7/while/loop_counter:output:05sequential_3/lstm_7/while/maximum_iterations:output:0!sequential_3/lstm_7/time:output:0,sequential_3/lstm_7/TensorArrayV2_1:handle:0"sequential_3/lstm_7/zeros:output:0$sequential_3/lstm_7/zeros_1:output:0,sequential_3/lstm_7/strided_slice_1:output:0Ksequential_3/lstm_7/TensorArrayUnstack/TensorListFromTensor:output_handle:0?sequential_3_lstm_7_lstm_cell_13_matmul_readvariableop_resourceAsequential_3_lstm_7_lstm_cell_13_matmul_1_readvariableop_resource@sequential_3_lstm_7_lstm_cell_13_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :          :          : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *1
body)R'
%sequential_3_lstm_7_while_body_143417*1
cond)R'
%sequential_3_lstm_7_while_cond_143416*K
output_shapes:
8: : : : :          :          : : : : : *
parallel_iterations 2
sequential_3/lstm_7/while▌
Dsequential_3/lstm_7/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_3/lstm_7/TensorArrayV2Stack/TensorListStack/element_shape╕
6sequential_3/lstm_7/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_3/lstm_7/while:output:3Msequential_3/lstm_7/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype028
6sequential_3/lstm_7/TensorArrayV2Stack/TensorListStackй
)sequential_3/lstm_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2+
)sequential_3/lstm_7/strided_slice_3/stackд
+sequential_3/lstm_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_3/lstm_7/strided_slice_3/stack_1д
+sequential_3/lstm_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_3/lstm_7/strided_slice_3/stack_2Т
#sequential_3/lstm_7/strided_slice_3StridedSlice?sequential_3/lstm_7/TensorArrayV2Stack/TensorListStack:tensor:02sequential_3/lstm_7/strided_slice_3/stack:output:04sequential_3/lstm_7/strided_slice_3/stack_1:output:04sequential_3/lstm_7/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2%
#sequential_3/lstm_7/strided_slice_3б
$sequential_3/lstm_7/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_3/lstm_7/transpose_1/permї
sequential_3/lstm_7/transpose_1	Transpose?sequential_3/lstm_7/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_3/lstm_7/transpose_1/perm:output:0*
T0*+
_output_shapes
:          2!
sequential_3/lstm_7/transpose_1О
sequential_3/lstm_7/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_3/lstm_7/runtimeо
sequential_3/dropout_3/IdentityIdentity,sequential_3/lstm_7/strided_slice_3:output:0*
T0*'
_output_shapes
:          2!
sequential_3/dropout_3/Identity╠
*sequential_3/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02,
*sequential_3/dense_3/MatMul/ReadVariableOp╘
sequential_3/dense_3/MatMulMatMul(sequential_3/dropout_3/Identity:output:02sequential_3/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential_3/dense_3/MatMul╦
+sequential_3/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential_3/dense_3/BiasAdd/ReadVariableOp╒
sequential_3/dense_3/BiasAddBiasAdd%sequential_3/dense_3/MatMul:product:03sequential_3/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential_3/dense_3/BiasAddА
IdentityIdentity%sequential_3/dense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         2

Identity╜
NoOpNoOp,^sequential_3/dense_3/BiasAdd/ReadVariableOp+^sequential_3/dense_3/MatMul/ReadVariableOp8^sequential_3/lstm_6/lstm_cell_12/BiasAdd/ReadVariableOp7^sequential_3/lstm_6/lstm_cell_12/MatMul/ReadVariableOp9^sequential_3/lstm_6/lstm_cell_12/MatMul_1/ReadVariableOp^sequential_3/lstm_6/while8^sequential_3/lstm_7/lstm_cell_13/BiasAdd/ReadVariableOp7^sequential_3/lstm_7/lstm_cell_13/MatMul/ReadVariableOp9^sequential_3/lstm_7/lstm_cell_13/MatMul_1/ReadVariableOp^sequential_3/lstm_7/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : : : : : 2Z
+sequential_3/dense_3/BiasAdd/ReadVariableOp+sequential_3/dense_3/BiasAdd/ReadVariableOp2X
*sequential_3/dense_3/MatMul/ReadVariableOp*sequential_3/dense_3/MatMul/ReadVariableOp2r
7sequential_3/lstm_6/lstm_cell_12/BiasAdd/ReadVariableOp7sequential_3/lstm_6/lstm_cell_12/BiasAdd/ReadVariableOp2p
6sequential_3/lstm_6/lstm_cell_12/MatMul/ReadVariableOp6sequential_3/lstm_6/lstm_cell_12/MatMul/ReadVariableOp2t
8sequential_3/lstm_6/lstm_cell_12/MatMul_1/ReadVariableOp8sequential_3/lstm_6/lstm_cell_12/MatMul_1/ReadVariableOp26
sequential_3/lstm_6/whilesequential_3/lstm_6/while2r
7sequential_3/lstm_7/lstm_cell_13/BiasAdd/ReadVariableOp7sequential_3/lstm_7/lstm_cell_13/BiasAdd/ReadVariableOp2p
6sequential_3/lstm_7/lstm_cell_13/MatMul/ReadVariableOp6sequential_3/lstm_7/lstm_cell_13/MatMul/ReadVariableOp2t
8sequential_3/lstm_7/lstm_cell_13/MatMul_1/ReadVariableOp8sequential_3/lstm_7/lstm_cell_13/MatMul_1/ReadVariableOp26
sequential_3/lstm_7/whilesequential_3/lstm_7/while:Y U
+
_output_shapes
:         
&
_user_specified_namelstm_6_input
З

╞
-__inference_sequential_3_layer_call_fn_145719

inputs
unknown:	А
	unknown_0:	@А
	unknown_1:	А
	unknown_2:	@А
	unknown_3:	 А
	unknown_4:	А
	unknown_5: 
	unknown_6:
identityИвStatefulPartitionedCall╞
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_1455602
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╣
╧
H__inference_sequential_3_layer_call_and_return_conditional_losses_145115

inputs 
lstm_6_144926:	А 
lstm_6_144928:	@А
lstm_6_144930:	А 
lstm_7_145084:	@А 
lstm_7_145086:	 А
lstm_7_145088:	А 
dense_3_145109: 
dense_3_145111:
identityИвdense_3/StatefulPartitionedCallвlstm_6/StatefulPartitionedCallвlstm_7/StatefulPartitionedCallЯ
lstm_6/StatefulPartitionedCallStatefulPartitionedCallinputslstm_6_144926lstm_6_144928lstm_6_144930*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_1449252 
lstm_6/StatefulPartitionedCall╝
lstm_7/StatefulPartitionedCallStatefulPartitionedCall'lstm_6/StatefulPartitionedCall:output:0lstm_7_145084lstm_7_145086lstm_7_145088*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_7_layer_call_and_return_conditional_losses_1450832 
lstm_7/StatefulPartitionedCall°
dropout_3/PartitionedCallPartitionedCall'lstm_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_1450962
dropout_3/PartitionedCallл
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_3_145109dense_3_145111*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_1451082!
dense_3/StatefulPartitionedCallГ
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identity▓
NoOpNoOp ^dense_3/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall^lstm_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall2@
lstm_7/StatefulPartitionedCalllstm_7/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
х[
Ъ
B__inference_lstm_7_layer_call_and_return_conditional_losses_145083

inputs>
+lstm_cell_13_matmul_readvariableop_resource:	@А@
-lstm_cell_13_matmul_1_readvariableop_resource:	 А;
,lstm_cell_13_biasadd_readvariableop_resource:	А
identityИв#lstm_cell_13/BiasAdd/ReadVariableOpв"lstm_cell_13/MatMul/ReadVariableOpв$lstm_cell_13/MatMul_1/ReadVariableOpвwhileD
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
strided_slice/stack_2т
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
B :ш2
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
zeros/packed/1Г
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
:          2
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
B :ш2
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
zeros_1/packed/1Й
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
:          2	
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
:         @2
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slice_2╡
"lstm_cell_13/MatMul/ReadVariableOpReadVariableOp+lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	@А*
dtype02$
"lstm_cell_13/MatMul/ReadVariableOpн
lstm_cell_13/MatMulMatMulstrided_slice_2:output:0*lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_13/MatMul╗
$lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02&
$lstm_cell_13/MatMul_1/ReadVariableOpй
lstm_cell_13/MatMul_1MatMulzeros:output:0,lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_13/MatMul_1а
lstm_cell_13/addAddV2lstm_cell_13/MatMul:product:0lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_cell_13/add┤
#lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#lstm_cell_13/BiasAdd/ReadVariableOpн
lstm_cell_13/BiasAddBiasAddlstm_cell_13/add:z:0+lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_13/BiasAdd~
lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_13/split/split_dimє
lstm_cell_13/splitSplit%lstm_cell_13/split/split_dim:output:0lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
lstm_cell_13/splitЖ
lstm_cell_13/SigmoidSigmoidlstm_cell_13/split:output:0*
T0*'
_output_shapes
:          2
lstm_cell_13/SigmoidК
lstm_cell_13/Sigmoid_1Sigmoidlstm_cell_13/split:output:1*
T0*'
_output_shapes
:          2
lstm_cell_13/Sigmoid_1Л
lstm_cell_13/mulMullstm_cell_13/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
lstm_cell_13/mul}
lstm_cell_13/ReluRelulstm_cell_13/split:output:2*
T0*'
_output_shapes
:          2
lstm_cell_13/ReluЬ
lstm_cell_13/mul_1Mullstm_cell_13/Sigmoid:y:0lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:          2
lstm_cell_13/mul_1С
lstm_cell_13/add_1AddV2lstm_cell_13/mul:z:0lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:          2
lstm_cell_13/add_1К
lstm_cell_13/Sigmoid_2Sigmoidlstm_cell_13/split:output:3*
T0*'
_output_shapes
:          2
lstm_cell_13/Sigmoid_2|
lstm_cell_13/Relu_1Relulstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:          2
lstm_cell_13/Relu_1а
lstm_cell_13/mul_2Mullstm_cell_13/Sigmoid_2:y:0!lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:          2
lstm_cell_13/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2
TensorArrayV2_1/element_shape╕
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterЛ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_13_matmul_readvariableop_resource-lstm_cell_13_matmul_1_readvariableop_resource,lstm_cell_13_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :          :          : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_144999*
condR
while_cond_144998*K
output_shapes:
8: : : : :          :          : : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permе
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:          2
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
:          2

Identity╚
NoOpNoOp$^lstm_cell_13/BiasAdd/ReadVariableOp#^lstm_cell_13/MatMul/ReadVariableOp%^lstm_cell_13/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         @: : : 2J
#lstm_cell_13/BiasAdd/ReadVariableOp#lstm_cell_13/BiasAdd/ReadVariableOp2H
"lstm_cell_13/MatMul/ReadVariableOp"lstm_cell_13/MatMul/ReadVariableOp2L
$lstm_cell_13/MatMul_1/ReadVariableOp$lstm_cell_13/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
р[
Ъ
B__inference_lstm_6_layer_call_and_return_conditional_losses_145504

inputs>
+lstm_cell_12_matmul_readvariableop_resource:	А@
-lstm_cell_12_matmul_1_readvariableop_resource:	@А;
,lstm_cell_12_biasadd_readvariableop_resource:	А
identityИв#lstm_cell_12/BiasAdd/ReadVariableOpв"lstm_cell_12/MatMul/ReadVariableOpв$lstm_cell_12/MatMul_1/ReadVariableOpвwhileD
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
strided_slice/stack_2т
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
B :ш2
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
zeros/packed/1Г
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
:         @2
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
B :ш2
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
zeros_1/packed/1Й
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
:         @2	
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
:         2
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_2╡
"lstm_cell_12/MatMul/ReadVariableOpReadVariableOp+lstm_cell_12_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02$
"lstm_cell_12/MatMul/ReadVariableOpн
lstm_cell_12/MatMulMatMulstrided_slice_2:output:0*lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_12/MatMul╗
$lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02&
$lstm_cell_12/MatMul_1/ReadVariableOpй
lstm_cell_12/MatMul_1MatMulzeros:output:0,lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_12/MatMul_1а
lstm_cell_12/addAddV2lstm_cell_12/MatMul:product:0lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_cell_12/add┤
#lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#lstm_cell_12/BiasAdd/ReadVariableOpн
lstm_cell_12/BiasAddBiasAddlstm_cell_12/add:z:0+lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_12/BiasAdd~
lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_12/split/split_dimє
lstm_cell_12/splitSplit%lstm_cell_12/split/split_dim:output:0lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
lstm_cell_12/splitЖ
lstm_cell_12/SigmoidSigmoidlstm_cell_12/split:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/SigmoidК
lstm_cell_12/Sigmoid_1Sigmoidlstm_cell_12/split:output:1*
T0*'
_output_shapes
:         @2
lstm_cell_12/Sigmoid_1Л
lstm_cell_12/mulMullstm_cell_12/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/mul}
lstm_cell_12/ReluRelulstm_cell_12/split:output:2*
T0*'
_output_shapes
:         @2
lstm_cell_12/ReluЬ
lstm_cell_12/mul_1Mullstm_cell_12/Sigmoid:y:0lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/mul_1С
lstm_cell_12/add_1AddV2lstm_cell_12/mul:z:0lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/add_1К
lstm_cell_12/Sigmoid_2Sigmoidlstm_cell_12/split:output:3*
T0*'
_output_shapes
:         @2
lstm_cell_12/Sigmoid_2|
lstm_cell_12/Relu_1Relulstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/Relu_1а
lstm_cell_12/mul_2Mullstm_cell_12/Sigmoid_2:y:0!lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
TensorArrayV2_1/element_shape╕
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterЛ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_12_matmul_readvariableop_resource-lstm_cell_12_matmul_1_readvariableop_resource,lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_145420*
condR
while_cond_145419*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permе
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         @2
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
:         @2

Identity╚
NoOpNoOp$^lstm_cell_12/BiasAdd/ReadVariableOp#^lstm_cell_12/MatMul/ReadVariableOp%^lstm_cell_12/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2J
#lstm_cell_12/BiasAdd/ReadVariableOp#lstm_cell_12/BiasAdd/ReadVariableOp2H
"lstm_cell_12/MatMul/ReadVariableOp"lstm_cell_12/MatMul/ReadVariableOp2L
$lstm_cell_12/MatMul_1/ReadVariableOp$lstm_cell_12/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Ш?
╨
while_body_147548
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_13_matmul_readvariableop_resource_0:	@АH
5while_lstm_cell_13_matmul_1_readvariableop_resource_0:	 АC
4while_lstm_cell_13_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_13_matmul_readvariableop_resource:	@АF
3while_lstm_cell_13_matmul_1_readvariableop_resource:	 АA
2while_lstm_cell_13_biasadd_readvariableop_resource:	АИв)while/lstm_cell_13/BiasAdd/ReadVariableOpв(while/lstm_cell_13/MatMul/ReadVariableOpв*while/lstm_cell_13/MatMul_1/ReadVariableOp├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         @*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem╔
(while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02*
(while/lstm_cell_13/MatMul/ReadVariableOp╫
while/lstm_cell_13/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_13/MatMul╧
*while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02,
*while/lstm_cell_13/MatMul_1/ReadVariableOp└
while/lstm_cell_13/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_13/MatMul_1╕
while/lstm_cell_13/addAddV2#while/lstm_cell_13/MatMul:product:0%while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_13/add╚
)while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02+
)while/lstm_cell_13/BiasAdd/ReadVariableOp┼
while/lstm_cell_13/BiasAddBiasAddwhile/lstm_cell_13/add:z:01while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_13/BiasAddК
"while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_13/split/split_dimЛ
while/lstm_cell_13/splitSplit+while/lstm_cell_13/split/split_dim:output:0#while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/lstm_cell_13/splitШ
while/lstm_cell_13/SigmoidSigmoid!while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:          2
while/lstm_cell_13/SigmoidЬ
while/lstm_cell_13/Sigmoid_1Sigmoid!while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:          2
while/lstm_cell_13/Sigmoid_1а
while/lstm_cell_13/mulMul while/lstm_cell_13/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/lstm_cell_13/mulП
while/lstm_cell_13/ReluRelu!while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:          2
while/lstm_cell_13/Relu┤
while/lstm_cell_13/mul_1Mulwhile/lstm_cell_13/Sigmoid:y:0%while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:          2
while/lstm_cell_13/mul_1й
while/lstm_cell_13/add_1AddV2while/lstm_cell_13/mul:z:0while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:          2
while/lstm_cell_13/add_1Ь
while/lstm_cell_13/Sigmoid_2Sigmoid!while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:          2
while/lstm_cell_13/Sigmoid_2О
while/lstm_cell_13/Relu_1Reluwhile/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:          2
while/lstm_cell_13/Relu_1╕
while/lstm_cell_13/mul_2Mul while/lstm_cell_13/Sigmoid_2:y:0'while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:          2
while/lstm_cell_13/mul_2р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_13/mul_2:z:0*
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
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3Н
while/Identity_4Identitywhile/lstm_cell_13/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:          2
while/Identity_4Н
while/Identity_5Identitywhile/lstm_cell_13/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:          2
while/Identity_5▐

while/NoOpNoOp*^while/lstm_cell_13/BiasAdd/ReadVariableOp)^while/lstm_cell_13/MatMul/ReadVariableOp+^while/lstm_cell_13/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_13_biasadd_readvariableop_resource4while_lstm_cell_13_biasadd_readvariableop_resource_0"l
3while_lstm_cell_13_matmul_1_readvariableop_resource5while_lstm_cell_13_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_13_matmul_readvariableop_resource3while_lstm_cell_13_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :          :          : : : : : 2V
)while/lstm_cell_13/BiasAdd/ReadVariableOp)while/lstm_cell_13/BiasAdd/ReadVariableOp2T
(while/lstm_cell_13/MatMul/ReadVariableOp(while/lstm_cell_13/MatMul/ReadVariableOp2X
*while/lstm_cell_13/MatMul_1/ReadVariableOp*while/lstm_cell_13/MatMul_1/ReadVariableOp: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
Я\
Ь
B__inference_lstm_6_layer_call_and_return_conditional_losses_146531
inputs_0>
+lstm_cell_12_matmul_readvariableop_resource:	А@
-lstm_cell_12_matmul_1_readvariableop_resource:	@А;
,lstm_cell_12_biasadd_readvariableop_resource:	А
identityИв#lstm_cell_12/BiasAdd/ReadVariableOpв"lstm_cell_12/MatMul/ReadVariableOpв$lstm_cell_12/MatMul_1/ReadVariableOpвwhileF
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
strided_slice/stack_2т
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
B :ш2
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
zeros/packed/1Г
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
:         @2
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
B :ш2
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
zeros_1/packed/1Й
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
:         @2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЕ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  2
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_2╡
"lstm_cell_12/MatMul/ReadVariableOpReadVariableOp+lstm_cell_12_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02$
"lstm_cell_12/MatMul/ReadVariableOpн
lstm_cell_12/MatMulMatMulstrided_slice_2:output:0*lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_12/MatMul╗
$lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02&
$lstm_cell_12/MatMul_1/ReadVariableOpй
lstm_cell_12/MatMul_1MatMulzeros:output:0,lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_12/MatMul_1а
lstm_cell_12/addAddV2lstm_cell_12/MatMul:product:0lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_cell_12/add┤
#lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#lstm_cell_12/BiasAdd/ReadVariableOpн
lstm_cell_12/BiasAddBiasAddlstm_cell_12/add:z:0+lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_12/BiasAdd~
lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_12/split/split_dimє
lstm_cell_12/splitSplit%lstm_cell_12/split/split_dim:output:0lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
lstm_cell_12/splitЖ
lstm_cell_12/SigmoidSigmoidlstm_cell_12/split:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/SigmoidК
lstm_cell_12/Sigmoid_1Sigmoidlstm_cell_12/split:output:1*
T0*'
_output_shapes
:         @2
lstm_cell_12/Sigmoid_1Л
lstm_cell_12/mulMullstm_cell_12/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/mul}
lstm_cell_12/ReluRelulstm_cell_12/split:output:2*
T0*'
_output_shapes
:         @2
lstm_cell_12/ReluЬ
lstm_cell_12/mul_1Mullstm_cell_12/Sigmoid:y:0lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/mul_1С
lstm_cell_12/add_1AddV2lstm_cell_12/mul:z:0lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/add_1К
lstm_cell_12/Sigmoid_2Sigmoidlstm_cell_12/split:output:3*
T0*'
_output_shapes
:         @2
lstm_cell_12/Sigmoid_2|
lstm_cell_12/Relu_1Relulstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/Relu_1а
lstm_cell_12/mul_2Mullstm_cell_12/Sigmoid_2:y:0!lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
TensorArrayV2_1/element_shape╕
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterЛ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_12_matmul_readvariableop_resource-lstm_cell_12_matmul_1_readvariableop_resource,lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_146447*
condR
while_cond_146446*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  @*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permо
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  @2
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
 :                  @2

Identity╚
NoOpNoOp$^lstm_cell_12/BiasAdd/ReadVariableOp#^lstm_cell_12/MatMul/ReadVariableOp%^lstm_cell_12/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2J
#lstm_cell_12/BiasAdd/ReadVariableOp#lstm_cell_12/BiasAdd/ReadVariableOp2H
"lstm_cell_12/MatMul/ReadVariableOp"lstm_cell_12/MatMul/ReadVariableOp2L
$lstm_cell_12/MatMul_1/ReadVariableOp$lstm_cell_12/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
╝
╢
'__inference_lstm_7_layer_call_fn_147006
inputs_0
unknown:	@А
	unknown_0:	 А
	unknown_1:	А
identityИвStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_7_layer_call_and_return_conditional_losses_1445062
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  @: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  @
"
_user_specified_name
inputs/0
Ш?
╨
while_body_144999
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_13_matmul_readvariableop_resource_0:	@АH
5while_lstm_cell_13_matmul_1_readvariableop_resource_0:	 АC
4while_lstm_cell_13_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_13_matmul_readvariableop_resource:	@АF
3while_lstm_cell_13_matmul_1_readvariableop_resource:	 АA
2while_lstm_cell_13_biasadd_readvariableop_resource:	АИв)while/lstm_cell_13/BiasAdd/ReadVariableOpв(while/lstm_cell_13/MatMul/ReadVariableOpв*while/lstm_cell_13/MatMul_1/ReadVariableOp├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         @*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem╔
(while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02*
(while/lstm_cell_13/MatMul/ReadVariableOp╫
while/lstm_cell_13/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_13/MatMul╧
*while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02,
*while/lstm_cell_13/MatMul_1/ReadVariableOp└
while/lstm_cell_13/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_13/MatMul_1╕
while/lstm_cell_13/addAddV2#while/lstm_cell_13/MatMul:product:0%while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_13/add╚
)while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02+
)while/lstm_cell_13/BiasAdd/ReadVariableOp┼
while/lstm_cell_13/BiasAddBiasAddwhile/lstm_cell_13/add:z:01while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_13/BiasAddК
"while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_13/split/split_dimЛ
while/lstm_cell_13/splitSplit+while/lstm_cell_13/split/split_dim:output:0#while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/lstm_cell_13/splitШ
while/lstm_cell_13/SigmoidSigmoid!while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:          2
while/lstm_cell_13/SigmoidЬ
while/lstm_cell_13/Sigmoid_1Sigmoid!while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:          2
while/lstm_cell_13/Sigmoid_1а
while/lstm_cell_13/mulMul while/lstm_cell_13/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/lstm_cell_13/mulП
while/lstm_cell_13/ReluRelu!while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:          2
while/lstm_cell_13/Relu┤
while/lstm_cell_13/mul_1Mulwhile/lstm_cell_13/Sigmoid:y:0%while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:          2
while/lstm_cell_13/mul_1й
while/lstm_cell_13/add_1AddV2while/lstm_cell_13/mul:z:0while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:          2
while/lstm_cell_13/add_1Ь
while/lstm_cell_13/Sigmoid_2Sigmoid!while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:          2
while/lstm_cell_13/Sigmoid_2О
while/lstm_cell_13/Relu_1Reluwhile/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:          2
while/lstm_cell_13/Relu_1╕
while/lstm_cell_13/mul_2Mul while/lstm_cell_13/Sigmoid_2:y:0'while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:          2
while/lstm_cell_13/mul_2р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_13/mul_2:z:0*
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
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3Н
while/Identity_4Identitywhile/lstm_cell_13/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:          2
while/Identity_4Н
while/Identity_5Identitywhile/lstm_cell_13/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:          2
while/Identity_5▐

while/NoOpNoOp*^while/lstm_cell_13/BiasAdd/ReadVariableOp)^while/lstm_cell_13/MatMul/ReadVariableOp+^while/lstm_cell_13/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_13_biasadd_readvariableop_resource4while_lstm_cell_13_biasadd_readvariableop_resource_0"l
3while_lstm_cell_13_matmul_1_readvariableop_resource5while_lstm_cell_13_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_13_matmul_readvariableop_resource3while_lstm_cell_13_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :          :          : : : : : 2V
)while/lstm_cell_13/BiasAdd/ReadVariableOp)while/lstm_cell_13/BiasAdd/ReadVariableOp2T
(while/lstm_cell_13/MatMul/ReadVariableOp(while/lstm_cell_13/MatMul/ReadVariableOp2X
*while/lstm_cell_13/MatMul_1/ReadVariableOp*while/lstm_cell_13/MatMul_1/ReadVariableOp: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
х[
Ъ
B__inference_lstm_7_layer_call_and_return_conditional_losses_147481

inputs>
+lstm_cell_13_matmul_readvariableop_resource:	@А@
-lstm_cell_13_matmul_1_readvariableop_resource:	 А;
,lstm_cell_13_biasadd_readvariableop_resource:	А
identityИв#lstm_cell_13/BiasAdd/ReadVariableOpв"lstm_cell_13/MatMul/ReadVariableOpв$lstm_cell_13/MatMul_1/ReadVariableOpвwhileD
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
strided_slice/stack_2т
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
B :ш2
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
zeros/packed/1Г
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
:          2
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
B :ш2
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
zeros_1/packed/1Й
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
:          2	
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
:         @2
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slice_2╡
"lstm_cell_13/MatMul/ReadVariableOpReadVariableOp+lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	@А*
dtype02$
"lstm_cell_13/MatMul/ReadVariableOpн
lstm_cell_13/MatMulMatMulstrided_slice_2:output:0*lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_13/MatMul╗
$lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02&
$lstm_cell_13/MatMul_1/ReadVariableOpй
lstm_cell_13/MatMul_1MatMulzeros:output:0,lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_13/MatMul_1а
lstm_cell_13/addAddV2lstm_cell_13/MatMul:product:0lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_cell_13/add┤
#lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#lstm_cell_13/BiasAdd/ReadVariableOpн
lstm_cell_13/BiasAddBiasAddlstm_cell_13/add:z:0+lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_13/BiasAdd~
lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_13/split/split_dimє
lstm_cell_13/splitSplit%lstm_cell_13/split/split_dim:output:0lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
lstm_cell_13/splitЖ
lstm_cell_13/SigmoidSigmoidlstm_cell_13/split:output:0*
T0*'
_output_shapes
:          2
lstm_cell_13/SigmoidК
lstm_cell_13/Sigmoid_1Sigmoidlstm_cell_13/split:output:1*
T0*'
_output_shapes
:          2
lstm_cell_13/Sigmoid_1Л
lstm_cell_13/mulMullstm_cell_13/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
lstm_cell_13/mul}
lstm_cell_13/ReluRelulstm_cell_13/split:output:2*
T0*'
_output_shapes
:          2
lstm_cell_13/ReluЬ
lstm_cell_13/mul_1Mullstm_cell_13/Sigmoid:y:0lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:          2
lstm_cell_13/mul_1С
lstm_cell_13/add_1AddV2lstm_cell_13/mul:z:0lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:          2
lstm_cell_13/add_1К
lstm_cell_13/Sigmoid_2Sigmoidlstm_cell_13/split:output:3*
T0*'
_output_shapes
:          2
lstm_cell_13/Sigmoid_2|
lstm_cell_13/Relu_1Relulstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:          2
lstm_cell_13/Relu_1а
lstm_cell_13/mul_2Mullstm_cell_13/Sigmoid_2:y:0!lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:          2
lstm_cell_13/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2
TensorArrayV2_1/element_shape╕
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterЛ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_13_matmul_readvariableop_resource-lstm_cell_13_matmul_1_readvariableop_resource,lstm_cell_13_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :          :          : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_147397*
condR
while_cond_147396*K
output_shapes:
8: : : : :          :          : : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permе
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:          2
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
:          2

Identity╚
NoOpNoOp$^lstm_cell_13/BiasAdd/ReadVariableOp#^lstm_cell_13/MatMul/ReadVariableOp%^lstm_cell_13/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         @: : : 2J
#lstm_cell_13/BiasAdd/ReadVariableOp#lstm_cell_13/BiasAdd/ReadVariableOp2H
"lstm_cell_13/MatMul/ReadVariableOp"lstm_cell_13/MatMul/ReadVariableOp2L
$lstm_cell_13/MatMul_1/ReadVariableOp$lstm_cell_13/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
и

╧
lstm_6_while_cond_146090*
&lstm_6_while_lstm_6_while_loop_counter0
,lstm_6_while_lstm_6_while_maximum_iterations
lstm_6_while_placeholder
lstm_6_while_placeholder_1
lstm_6_while_placeholder_2
lstm_6_while_placeholder_3,
(lstm_6_while_less_lstm_6_strided_slice_1B
>lstm_6_while_lstm_6_while_cond_146090___redundant_placeholder0B
>lstm_6_while_lstm_6_while_cond_146090___redundant_placeholder1B
>lstm_6_while_lstm_6_while_cond_146090___redundant_placeholder2B
>lstm_6_while_lstm_6_while_cond_146090___redundant_placeholder3
lstm_6_while_identity
У
lstm_6/while/LessLesslstm_6_while_placeholder(lstm_6_while_less_lstm_6_strided_slice_1*
T0*
_output_shapes
: 2
lstm_6/while/Lessr
lstm_6/while/IdentityIdentitylstm_6/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_6/while/Identity"7
lstm_6_while_identitylstm_6/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         @:         @: ::::: 
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
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
╒
├
while_cond_145246
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_145246___redundant_placeholder04
0while_while_cond_145246___redundant_placeholder14
0while_while_cond_145246___redundant_placeholder24
0while_while_cond_145246___redundant_placeholder3
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
@: : : : :          :          : ::::: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
д
┤
'__inference_lstm_7_layer_call_fn_147028

inputs
unknown:	@А
	unknown_0:	 А
	unknown_1:	А
identityИвStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_7_layer_call_and_return_conditional_losses_1453312
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         @: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         @
 
_user_specified_nameinputs
а
c
*__inference_dropout_3_layer_call_fn_147642

inputs
identityИвStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_1451642
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:          22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:          
 
_user_specified_nameinputs
Ы\
Ь
B__inference_lstm_7_layer_call_and_return_conditional_losses_147179
inputs_0>
+lstm_cell_13_matmul_readvariableop_resource:	@А@
-lstm_cell_13_matmul_1_readvariableop_resource:	 А;
,lstm_cell_13_biasadd_readvariableop_resource:	А
identityИв#lstm_cell_13/BiasAdd/ReadVariableOpв"lstm_cell_13/MatMul/ReadVariableOpв$lstm_cell_13/MatMul_1/ReadVariableOpвwhileF
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
strided_slice/stack_2т
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
B :ш2
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
zeros/packed/1Г
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
:          2
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
B :ш2
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
zeros_1/packed/1Й
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
:          2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЕ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  @2
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slice_2╡
"lstm_cell_13/MatMul/ReadVariableOpReadVariableOp+lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	@А*
dtype02$
"lstm_cell_13/MatMul/ReadVariableOpн
lstm_cell_13/MatMulMatMulstrided_slice_2:output:0*lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_13/MatMul╗
$lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02&
$lstm_cell_13/MatMul_1/ReadVariableOpй
lstm_cell_13/MatMul_1MatMulzeros:output:0,lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_13/MatMul_1а
lstm_cell_13/addAddV2lstm_cell_13/MatMul:product:0lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_cell_13/add┤
#lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#lstm_cell_13/BiasAdd/ReadVariableOpн
lstm_cell_13/BiasAddBiasAddlstm_cell_13/add:z:0+lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_13/BiasAdd~
lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_13/split/split_dimє
lstm_cell_13/splitSplit%lstm_cell_13/split/split_dim:output:0lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
lstm_cell_13/splitЖ
lstm_cell_13/SigmoidSigmoidlstm_cell_13/split:output:0*
T0*'
_output_shapes
:          2
lstm_cell_13/SigmoidК
lstm_cell_13/Sigmoid_1Sigmoidlstm_cell_13/split:output:1*
T0*'
_output_shapes
:          2
lstm_cell_13/Sigmoid_1Л
lstm_cell_13/mulMullstm_cell_13/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          2
lstm_cell_13/mul}
lstm_cell_13/ReluRelulstm_cell_13/split:output:2*
T0*'
_output_shapes
:          2
lstm_cell_13/ReluЬ
lstm_cell_13/mul_1Mullstm_cell_13/Sigmoid:y:0lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:          2
lstm_cell_13/mul_1С
lstm_cell_13/add_1AddV2lstm_cell_13/mul:z:0lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:          2
lstm_cell_13/add_1К
lstm_cell_13/Sigmoid_2Sigmoidlstm_cell_13/split:output:3*
T0*'
_output_shapes
:          2
lstm_cell_13/Sigmoid_2|
lstm_cell_13/Relu_1Relulstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:          2
lstm_cell_13/Relu_1а
lstm_cell_13/mul_2Mullstm_cell_13/Sigmoid_2:y:0!lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:          2
lstm_cell_13/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2
TensorArrayV2_1/element_shape╕
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterЛ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_13_matmul_readvariableop_resource-lstm_cell_13_matmul_1_readvariableop_resource,lstm_cell_13_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :          :          : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_147095*
condR
while_cond_147094*K
output_shapes:
8: : : : :          :          : : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                   *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permо
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                   2
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
:          2

Identity╚
NoOpNoOp$^lstm_cell_13/BiasAdd/ReadVariableOp#^lstm_cell_13/MatMul/ReadVariableOp%^lstm_cell_13/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  @: : : 2J
#lstm_cell_13/BiasAdd/ReadVariableOp#lstm_cell_13/BiasAdd/ReadVariableOp2H
"lstm_cell_13/MatMul/ReadVariableOp"lstm_cell_13/MatMul/ReadVariableOp2L
$lstm_cell_13/MatMul_1/ReadVariableOp$lstm_cell_13/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  @
"
_user_specified_name
inputs/0
р[
Ъ
B__inference_lstm_6_layer_call_and_return_conditional_losses_146833

inputs>
+lstm_cell_12_matmul_readvariableop_resource:	А@
-lstm_cell_12_matmul_1_readvariableop_resource:	@А;
,lstm_cell_12_biasadd_readvariableop_resource:	А
identityИв#lstm_cell_12/BiasAdd/ReadVariableOpв"lstm_cell_12/MatMul/ReadVariableOpв$lstm_cell_12/MatMul_1/ReadVariableOpвwhileD
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
strided_slice/stack_2т
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
B :ш2
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
zeros/packed/1Г
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
:         @2
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
B :ш2
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
zeros_1/packed/1Й
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
:         @2	
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
:         2
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_2╡
"lstm_cell_12/MatMul/ReadVariableOpReadVariableOp+lstm_cell_12_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02$
"lstm_cell_12/MatMul/ReadVariableOpн
lstm_cell_12/MatMulMatMulstrided_slice_2:output:0*lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_12/MatMul╗
$lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02&
$lstm_cell_12/MatMul_1/ReadVariableOpй
lstm_cell_12/MatMul_1MatMulzeros:output:0,lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_12/MatMul_1а
lstm_cell_12/addAddV2lstm_cell_12/MatMul:product:0lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_cell_12/add┤
#lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#lstm_cell_12/BiasAdd/ReadVariableOpн
lstm_cell_12/BiasAddBiasAddlstm_cell_12/add:z:0+lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_cell_12/BiasAdd~
lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_12/split/split_dimє
lstm_cell_12/splitSplit%lstm_cell_12/split/split_dim:output:0lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
lstm_cell_12/splitЖ
lstm_cell_12/SigmoidSigmoidlstm_cell_12/split:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/SigmoidК
lstm_cell_12/Sigmoid_1Sigmoidlstm_cell_12/split:output:1*
T0*'
_output_shapes
:         @2
lstm_cell_12/Sigmoid_1Л
lstm_cell_12/mulMullstm_cell_12/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/mul}
lstm_cell_12/ReluRelulstm_cell_12/split:output:2*
T0*'
_output_shapes
:         @2
lstm_cell_12/ReluЬ
lstm_cell_12/mul_1Mullstm_cell_12/Sigmoid:y:0lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/mul_1С
lstm_cell_12/add_1AddV2lstm_cell_12/mul:z:0lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/add_1К
lstm_cell_12/Sigmoid_2Sigmoidlstm_cell_12/split:output:3*
T0*'
_output_shapes
:         @2
lstm_cell_12/Sigmoid_2|
lstm_cell_12/Relu_1Relulstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/Relu_1а
lstm_cell_12/mul_2Mullstm_cell_12/Sigmoid_2:y:0!lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:         @2
lstm_cell_12/mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
TensorArrayV2_1/element_shape╕
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterЛ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_12_matmul_readvariableop_resource-lstm_cell_12_matmul_1_readvariableop_resource,lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_146749*
condR
while_cond_146748*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permе
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         @2
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
:         @2

Identity╚
NoOpNoOp$^lstm_cell_12/BiasAdd/ReadVariableOp#^lstm_cell_12/MatMul/ReadVariableOp%^lstm_cell_12/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2J
#lstm_cell_12/BiasAdd/ReadVariableOp#lstm_cell_12/BiasAdd/ReadVariableOp2H
"lstm_cell_12/MatMul/ReadVariableOp"lstm_cell_12/MatMul/ReadVariableOp2L
$lstm_cell_12/MatMul_1/ReadVariableOp$lstm_cell_12/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ЪF
Д
B__inference_lstm_7_layer_call_and_return_conditional_losses_144296

inputs&
lstm_cell_13_144214:	@А&
lstm_cell_13_144216:	 А"
lstm_cell_13_144218:	А
identityИв$lstm_cell_13/StatefulPartitionedCallвwhileD
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
strided_slice/stack_2т
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
B :ш2
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
zeros/packed/1Г
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
:          2
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
B :ш2
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
zeros_1/packed/1Й
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
:          2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  @2
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slice_2Э
$lstm_cell_13/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_13_144214lstm_cell_13_144216lstm_cell_13_144218*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:          :          :          *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_13_layer_call_and_return_conditional_losses_1442132&
$lstm_cell_13/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2
TensorArrayV2_1/element_shape╕
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter└
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_13_144214lstm_cell_13_144216lstm_cell_13_144218*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :          :          : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_144227*
condR
while_cond_144226*K
output_shapes:
8: : : : :          :          : : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                   *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permо
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                   2
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
:          2

Identity}
NoOpNoOp%^lstm_cell_13/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  @: : : 2L
$lstm_cell_13/StatefulPartitionedCall$lstm_cell_13/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  @
 
_user_specified_nameinputs
╒
├
while_cond_144226
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_144226___redundant_placeholder04
0while_while_cond_144226___redundant_placeholder14
0while_while_cond_144226___redundant_placeholder24
0while_while_cond_144226___redundant_placeholder3
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
@: : : : :          :          : ::::: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
Ш?
╨
while_body_146447
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_12_matmul_readvariableop_resource_0:	АH
5while_lstm_cell_12_matmul_1_readvariableop_resource_0:	@АC
4while_lstm_cell_12_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_12_matmul_readvariableop_resource:	АF
3while_lstm_cell_12_matmul_1_readvariableop_resource:	@АA
2while_lstm_cell_12_biasadd_readvariableop_resource:	АИв)while/lstm_cell_12/BiasAdd/ReadVariableOpв(while/lstm_cell_12/MatMul/ReadVariableOpв*while/lstm_cell_12/MatMul_1/ReadVariableOp├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem╔
(while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02*
(while/lstm_cell_12/MatMul/ReadVariableOp╫
while/lstm_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_12/MatMul╧
*while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02,
*while/lstm_cell_12/MatMul_1/ReadVariableOp└
while/lstm_cell_12/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_12/MatMul_1╕
while/lstm_cell_12/addAddV2#while/lstm_cell_12/MatMul:product:0%while/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_12/add╚
)while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02+
)while/lstm_cell_12/BiasAdd/ReadVariableOp┼
while/lstm_cell_12/BiasAddBiasAddwhile/lstm_cell_12/add:z:01while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_12/BiasAddК
"while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_12/split/split_dimЛ
while/lstm_cell_12/splitSplit+while/lstm_cell_12/split/split_dim:output:0#while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
while/lstm_cell_12/splitШ
while/lstm_cell_12/SigmoidSigmoid!while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/SigmoidЬ
while/lstm_cell_12/Sigmoid_1Sigmoid!while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/Sigmoid_1а
while/lstm_cell_12/mulMul while/lstm_cell_12/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/mulП
while/lstm_cell_12/ReluRelu!while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/Relu┤
while/lstm_cell_12/mul_1Mulwhile/lstm_cell_12/Sigmoid:y:0%while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/mul_1й
while/lstm_cell_12/add_1AddV2while/lstm_cell_12/mul:z:0while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/add_1Ь
while/lstm_cell_12/Sigmoid_2Sigmoid!while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/Sigmoid_2О
while/lstm_cell_12/Relu_1Reluwhile/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/Relu_1╕
while/lstm_cell_12/mul_2Mul while/lstm_cell_12/Sigmoid_2:y:0'while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/mul_2р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_12/mul_2:z:0*
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
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3Н
while/Identity_4Identitywhile/lstm_cell_12/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         @2
while/Identity_4Н
while/Identity_5Identitywhile/lstm_cell_12/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         @2
while/Identity_5▐

while/NoOpNoOp*^while/lstm_cell_12/BiasAdd/ReadVariableOp)^while/lstm_cell_12/MatMul/ReadVariableOp+^while/lstm_cell_12/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_12_biasadd_readvariableop_resource4while_lstm_cell_12_biasadd_readvariableop_resource_0"l
3while_lstm_cell_12_matmul_1_readvariableop_resource5while_lstm_cell_12_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_12_matmul_readvariableop_resource3while_lstm_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         @:         @: : : : : 2V
)while/lstm_cell_12/BiasAdd/ReadVariableOp)while/lstm_cell_12/BiasAdd/ReadVariableOp2T
(while/lstm_cell_12/MatMul/ReadVariableOp(while/lstm_cell_12/MatMul/ReadVariableOp2X
*while/lstm_cell_12/MatMul_1/ReadVariableOp*while/lstm_cell_12/MatMul_1/ReadVariableOp: 
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
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
ЧI
░

lstm_6_while_body_145786*
&lstm_6_while_lstm_6_while_loop_counter0
,lstm_6_while_lstm_6_while_maximum_iterations
lstm_6_while_placeholder
lstm_6_while_placeholder_1
lstm_6_while_placeholder_2
lstm_6_while_placeholder_3)
%lstm_6_while_lstm_6_strided_slice_1_0e
alstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_6_while_lstm_cell_12_matmul_readvariableop_resource_0:	АO
<lstm_6_while_lstm_cell_12_matmul_1_readvariableop_resource_0:	@АJ
;lstm_6_while_lstm_cell_12_biasadd_readvariableop_resource_0:	А
lstm_6_while_identity
lstm_6_while_identity_1
lstm_6_while_identity_2
lstm_6_while_identity_3
lstm_6_while_identity_4
lstm_6_while_identity_5'
#lstm_6_while_lstm_6_strided_slice_1c
_lstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensorK
8lstm_6_while_lstm_cell_12_matmul_readvariableop_resource:	АM
:lstm_6_while_lstm_cell_12_matmul_1_readvariableop_resource:	@АH
9lstm_6_while_lstm_cell_12_biasadd_readvariableop_resource:	АИв0lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOpв/lstm_6/while/lstm_cell_12/MatMul/ReadVariableOpв1lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOp╤
>lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2@
>lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shape¤
0lstm_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0lstm_6_while_placeholderGlstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype022
0lstm_6/while/TensorArrayV2Read/TensorListGetItem▐
/lstm_6/while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp:lstm_6_while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype021
/lstm_6/while/lstm_cell_12/MatMul/ReadVariableOpє
 lstm_6/while/lstm_cell_12/MatMulMatMul7lstm_6/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_6/while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2"
 lstm_6/while/lstm_cell_12/MatMulф
1lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp<lstm_6_while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes
:	@А*
dtype023
1lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOp▄
"lstm_6/while/lstm_cell_12/MatMul_1MatMullstm_6_while_placeholder_29lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2$
"lstm_6/while/lstm_cell_12/MatMul_1╘
lstm_6/while/lstm_cell_12/addAddV2*lstm_6/while/lstm_cell_12/MatMul:product:0,lstm_6/while/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_6/while/lstm_cell_12/add▌
0lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp;lstm_6_while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype022
0lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOpс
!lstm_6/while/lstm_cell_12/BiasAddBiasAdd!lstm_6/while/lstm_cell_12/add:z:08lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2#
!lstm_6/while/lstm_cell_12/BiasAddШ
)lstm_6/while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2+
)lstm_6/while/lstm_cell_12/split/split_dimз
lstm_6/while/lstm_cell_12/splitSplit2lstm_6/while/lstm_cell_12/split/split_dim:output:0*lstm_6/while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2!
lstm_6/while/lstm_cell_12/splitн
!lstm_6/while/lstm_cell_12/SigmoidSigmoid(lstm_6/while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:         @2#
!lstm_6/while/lstm_cell_12/Sigmoid▒
#lstm_6/while/lstm_cell_12/Sigmoid_1Sigmoid(lstm_6/while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:         @2%
#lstm_6/while/lstm_cell_12/Sigmoid_1╝
lstm_6/while/lstm_cell_12/mulMul'lstm_6/while/lstm_cell_12/Sigmoid_1:y:0lstm_6_while_placeholder_3*
T0*'
_output_shapes
:         @2
lstm_6/while/lstm_cell_12/mulд
lstm_6/while/lstm_cell_12/ReluRelu(lstm_6/while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:         @2 
lstm_6/while/lstm_cell_12/Relu╨
lstm_6/while/lstm_cell_12/mul_1Mul%lstm_6/while/lstm_cell_12/Sigmoid:y:0,lstm_6/while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:         @2!
lstm_6/while/lstm_cell_12/mul_1┼
lstm_6/while/lstm_cell_12/add_1AddV2!lstm_6/while/lstm_cell_12/mul:z:0#lstm_6/while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:         @2!
lstm_6/while/lstm_cell_12/add_1▒
#lstm_6/while/lstm_cell_12/Sigmoid_2Sigmoid(lstm_6/while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:         @2%
#lstm_6/while/lstm_cell_12/Sigmoid_2г
 lstm_6/while/lstm_cell_12/Relu_1Relu#lstm_6/while/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:         @2"
 lstm_6/while/lstm_cell_12/Relu_1╘
lstm_6/while/lstm_cell_12/mul_2Mul'lstm_6/while/lstm_cell_12/Sigmoid_2:y:0.lstm_6/while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:         @2!
lstm_6/while/lstm_cell_12/mul_2Г
1lstm_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_6_while_placeholder_1lstm_6_while_placeholder#lstm_6/while/lstm_cell_12/mul_2:z:0*
_output_shapes
: *
element_dtype023
1lstm_6/while/TensorArrayV2Write/TensorListSetItemj
lstm_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_6/while/add/yЕ
lstm_6/while/addAddV2lstm_6_while_placeholderlstm_6/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_6/while/addn
lstm_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_6/while/add_1/yЩ
lstm_6/while/add_1AddV2&lstm_6_while_lstm_6_while_loop_counterlstm_6/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_6/while/add_1З
lstm_6/while/IdentityIdentitylstm_6/while/add_1:z:0^lstm_6/while/NoOp*
T0*
_output_shapes
: 2
lstm_6/while/Identityб
lstm_6/while/Identity_1Identity,lstm_6_while_lstm_6_while_maximum_iterations^lstm_6/while/NoOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_1Й
lstm_6/while/Identity_2Identitylstm_6/while/add:z:0^lstm_6/while/NoOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_2╢
lstm_6/while/Identity_3IdentityAlstm_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_6/while/NoOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_3й
lstm_6/while/Identity_4Identity#lstm_6/while/lstm_cell_12/mul_2:z:0^lstm_6/while/NoOp*
T0*'
_output_shapes
:         @2
lstm_6/while/Identity_4й
lstm_6/while/Identity_5Identity#lstm_6/while/lstm_cell_12/add_1:z:0^lstm_6/while/NoOp*
T0*'
_output_shapes
:         @2
lstm_6/while/Identity_5Б
lstm_6/while/NoOpNoOp1^lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOp0^lstm_6/while/lstm_cell_12/MatMul/ReadVariableOp2^lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_6/while/NoOp"7
lstm_6_while_identitylstm_6/while/Identity:output:0";
lstm_6_while_identity_1 lstm_6/while/Identity_1:output:0";
lstm_6_while_identity_2 lstm_6/while/Identity_2:output:0";
lstm_6_while_identity_3 lstm_6/while/Identity_3:output:0";
lstm_6_while_identity_4 lstm_6/while/Identity_4:output:0";
lstm_6_while_identity_5 lstm_6/while/Identity_5:output:0"L
#lstm_6_while_lstm_6_strided_slice_1%lstm_6_while_lstm_6_strided_slice_1_0"x
9lstm_6_while_lstm_cell_12_biasadd_readvariableop_resource;lstm_6_while_lstm_cell_12_biasadd_readvariableop_resource_0"z
:lstm_6_while_lstm_cell_12_matmul_1_readvariableop_resource<lstm_6_while_lstm_cell_12_matmul_1_readvariableop_resource_0"v
8lstm_6_while_lstm_cell_12_matmul_readvariableop_resource:lstm_6_while_lstm_cell_12_matmul_readvariableop_resource_0"─
_lstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensoralstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         @:         @: : : : : 2d
0lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOp0lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOp2b
/lstm_6/while/lstm_cell_12/MatMul/ReadVariableOp/lstm_6/while/lstm_cell_12/MatMul/ReadVariableOp2f
1lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOp1lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOp: 
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
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
Ш?
╨
while_body_145420
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_12_matmul_readvariableop_resource_0:	АH
5while_lstm_cell_12_matmul_1_readvariableop_resource_0:	@АC
4while_lstm_cell_12_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_12_matmul_readvariableop_resource:	АF
3while_lstm_cell_12_matmul_1_readvariableop_resource:	@АA
2while_lstm_cell_12_biasadd_readvariableop_resource:	АИв)while/lstm_cell_12/BiasAdd/ReadVariableOpв(while/lstm_cell_12/MatMul/ReadVariableOpв*while/lstm_cell_12/MatMul_1/ReadVariableOp├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem╔
(while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02*
(while/lstm_cell_12/MatMul/ReadVariableOp╫
while/lstm_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_12/MatMul╧
*while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02,
*while/lstm_cell_12/MatMul_1/ReadVariableOp└
while/lstm_cell_12/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_12/MatMul_1╕
while/lstm_cell_12/addAddV2#while/lstm_cell_12/MatMul:product:0%while/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_12/add╚
)while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02+
)while/lstm_cell_12/BiasAdd/ReadVariableOp┼
while/lstm_cell_12/BiasAddBiasAddwhile/lstm_cell_12/add:z:01while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_12/BiasAddК
"while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_12/split/split_dimЛ
while/lstm_cell_12/splitSplit+while/lstm_cell_12/split/split_dim:output:0#while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
while/lstm_cell_12/splitШ
while/lstm_cell_12/SigmoidSigmoid!while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/SigmoidЬ
while/lstm_cell_12/Sigmoid_1Sigmoid!while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/Sigmoid_1а
while/lstm_cell_12/mulMul while/lstm_cell_12/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/mulП
while/lstm_cell_12/ReluRelu!while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/Relu┤
while/lstm_cell_12/mul_1Mulwhile/lstm_cell_12/Sigmoid:y:0%while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/mul_1й
while/lstm_cell_12/add_1AddV2while/lstm_cell_12/mul:z:0while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/add_1Ь
while/lstm_cell_12/Sigmoid_2Sigmoid!while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/Sigmoid_2О
while/lstm_cell_12/Relu_1Reluwhile/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/Relu_1╕
while/lstm_cell_12/mul_2Mul while/lstm_cell_12/Sigmoid_2:y:0'while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/mul_2р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_12/mul_2:z:0*
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
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3Н
while/Identity_4Identitywhile/lstm_cell_12/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         @2
while/Identity_4Н
while/Identity_5Identitywhile/lstm_cell_12/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         @2
while/Identity_5▐

while/NoOpNoOp*^while/lstm_cell_12/BiasAdd/ReadVariableOp)^while/lstm_cell_12/MatMul/ReadVariableOp+^while/lstm_cell_12/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_12_biasadd_readvariableop_resource4while_lstm_cell_12_biasadd_readvariableop_resource_0"l
3while_lstm_cell_12_matmul_1_readvariableop_resource5while_lstm_cell_12_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_12_matmul_readvariableop_resource3while_lstm_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         @:         @: : : : : 2V
)while/lstm_cell_12/BiasAdd/ReadVariableOp)while/lstm_cell_12/BiasAdd/ReadVariableOp2T
(while/lstm_cell_12/MatMul/ReadVariableOp(while/lstm_cell_12/MatMul/ReadVariableOp2X
*while/lstm_cell_12/MatMul_1/ReadVariableOp*while/lstm_cell_12/MatMul_1/ReadVariableOp: 
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
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
є
Д
H__inference_lstm_cell_12_layer_call_and_return_conditional_losses_143583

inputs

states
states_11
matmul_readvariableop_resource:	А3
 matmul_1_readvariableop_resource:	@А.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim┐
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         @2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         @2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         @2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:         @2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         @2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         @2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         @2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         @2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         @2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         @2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         @2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         @2

Identity_2Щ
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
?:         :         @:         @: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         @
 
_user_specified_namestates:OK
'
_output_shapes
:         @
 
_user_specified_namestates
Ш?
╨
while_body_147397
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_13_matmul_readvariableop_resource_0:	@АH
5while_lstm_cell_13_matmul_1_readvariableop_resource_0:	 АC
4while_lstm_cell_13_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_13_matmul_readvariableop_resource:	@АF
3while_lstm_cell_13_matmul_1_readvariableop_resource:	 АA
2while_lstm_cell_13_biasadd_readvariableop_resource:	АИв)while/lstm_cell_13/BiasAdd/ReadVariableOpв(while/lstm_cell_13/MatMul/ReadVariableOpв*while/lstm_cell_13/MatMul_1/ReadVariableOp├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         @*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem╔
(while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02*
(while/lstm_cell_13/MatMul/ReadVariableOp╫
while/lstm_cell_13/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_13/MatMul╧
*while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02,
*while/lstm_cell_13/MatMul_1/ReadVariableOp└
while/lstm_cell_13/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_13/MatMul_1╕
while/lstm_cell_13/addAddV2#while/lstm_cell_13/MatMul:product:0%while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_13/add╚
)while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02+
)while/lstm_cell_13/BiasAdd/ReadVariableOp┼
while/lstm_cell_13/BiasAddBiasAddwhile/lstm_cell_13/add:z:01while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_13/BiasAddК
"while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_13/split/split_dimЛ
while/lstm_cell_13/splitSplit+while/lstm_cell_13/split/split_dim:output:0#while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
while/lstm_cell_13/splitШ
while/lstm_cell_13/SigmoidSigmoid!while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:          2
while/lstm_cell_13/SigmoidЬ
while/lstm_cell_13/Sigmoid_1Sigmoid!while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:          2
while/lstm_cell_13/Sigmoid_1а
while/lstm_cell_13/mulMul while/lstm_cell_13/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          2
while/lstm_cell_13/mulП
while/lstm_cell_13/ReluRelu!while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:          2
while/lstm_cell_13/Relu┤
while/lstm_cell_13/mul_1Mulwhile/lstm_cell_13/Sigmoid:y:0%while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:          2
while/lstm_cell_13/mul_1й
while/lstm_cell_13/add_1AddV2while/lstm_cell_13/mul:z:0while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:          2
while/lstm_cell_13/add_1Ь
while/lstm_cell_13/Sigmoid_2Sigmoid!while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:          2
while/lstm_cell_13/Sigmoid_2О
while/lstm_cell_13/Relu_1Reluwhile/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:          2
while/lstm_cell_13/Relu_1╕
while/lstm_cell_13/mul_2Mul while/lstm_cell_13/Sigmoid_2:y:0'while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:          2
while/lstm_cell_13/mul_2р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_13/mul_2:z:0*
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
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3Н
while/Identity_4Identitywhile/lstm_cell_13/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:          2
while/Identity_4Н
while/Identity_5Identitywhile/lstm_cell_13/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:          2
while/Identity_5▐

while/NoOpNoOp*^while/lstm_cell_13/BiasAdd/ReadVariableOp)^while/lstm_cell_13/MatMul/ReadVariableOp+^while/lstm_cell_13/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_13_biasadd_readvariableop_resource4while_lstm_cell_13_biasadd_readvariableop_resource_0"l
3while_lstm_cell_13_matmul_1_readvariableop_resource5while_lstm_cell_13_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_13_matmul_readvariableop_resource3while_lstm_cell_13_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :          :          : : : : : 2V
)while/lstm_cell_13/BiasAdd/ReadVariableOp)while/lstm_cell_13/BiasAdd/ReadVariableOp2T
(while/lstm_cell_13/MatMul/ReadVariableOp(while/lstm_cell_13/MatMul/ReadVariableOp2X
*while/lstm_cell_13/MatMul_1/ReadVariableOp*while/lstm_cell_13/MatMul_1/ReadVariableOp: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
л
d
E__inference_dropout_3_layer_call_and_return_conditional_losses_145164

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:          2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape┤
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:          *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2
dropout/GreaterEqual/y╛
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:          2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:          2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:          :O K
'
_output_shapes
:          
 
_user_specified_nameinputs
п
╙
%sequential_3_lstm_6_while_cond_143269D
@sequential_3_lstm_6_while_sequential_3_lstm_6_while_loop_counterJ
Fsequential_3_lstm_6_while_sequential_3_lstm_6_while_maximum_iterations)
%sequential_3_lstm_6_while_placeholder+
'sequential_3_lstm_6_while_placeholder_1+
'sequential_3_lstm_6_while_placeholder_2+
'sequential_3_lstm_6_while_placeholder_3F
Bsequential_3_lstm_6_while_less_sequential_3_lstm_6_strided_slice_1\
Xsequential_3_lstm_6_while_sequential_3_lstm_6_while_cond_143269___redundant_placeholder0\
Xsequential_3_lstm_6_while_sequential_3_lstm_6_while_cond_143269___redundant_placeholder1\
Xsequential_3_lstm_6_while_sequential_3_lstm_6_while_cond_143269___redundant_placeholder2\
Xsequential_3_lstm_6_while_sequential_3_lstm_6_while_cond_143269___redundant_placeholder3&
"sequential_3_lstm_6_while_identity
╘
sequential_3/lstm_6/while/LessLess%sequential_3_lstm_6_while_placeholderBsequential_3_lstm_6_while_less_sequential_3_lstm_6_strided_slice_1*
T0*
_output_shapes
: 2 
sequential_3/lstm_6/while/LessЩ
"sequential_3/lstm_6/while/IdentityIdentity"sequential_3/lstm_6/while/Less:z:0*
T0
*
_output_shapes
: 2$
"sequential_3/lstm_6/while/Identity"Q
"sequential_3_lstm_6_while_identity+sequential_3/lstm_6/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         @:         @: ::::: 
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
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
е

Ї
C__inference_dense_3_layer_call_and_return_conditional_losses_147678

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:          
 
_user_specified_nameinputs
╫
╢
'__inference_lstm_6_layer_call_fn_146347
inputs_0
unknown:	А
	unknown_0:	@А
	unknown_1:	А
identityИвStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_1436662
StatefulPartitionedCallИ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
▄[
╨
%sequential_3_lstm_6_while_body_143270D
@sequential_3_lstm_6_while_sequential_3_lstm_6_while_loop_counterJ
Fsequential_3_lstm_6_while_sequential_3_lstm_6_while_maximum_iterations)
%sequential_3_lstm_6_while_placeholder+
'sequential_3_lstm_6_while_placeholder_1+
'sequential_3_lstm_6_while_placeholder_2+
'sequential_3_lstm_6_while_placeholder_3C
?sequential_3_lstm_6_while_sequential_3_lstm_6_strided_slice_1_0
{sequential_3_lstm_6_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_6_tensorarrayunstack_tensorlistfromtensor_0Z
Gsequential_3_lstm_6_while_lstm_cell_12_matmul_readvariableop_resource_0:	А\
Isequential_3_lstm_6_while_lstm_cell_12_matmul_1_readvariableop_resource_0:	@АW
Hsequential_3_lstm_6_while_lstm_cell_12_biasadd_readvariableop_resource_0:	А&
"sequential_3_lstm_6_while_identity(
$sequential_3_lstm_6_while_identity_1(
$sequential_3_lstm_6_while_identity_2(
$sequential_3_lstm_6_while_identity_3(
$sequential_3_lstm_6_while_identity_4(
$sequential_3_lstm_6_while_identity_5A
=sequential_3_lstm_6_while_sequential_3_lstm_6_strided_slice_1}
ysequential_3_lstm_6_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_6_tensorarrayunstack_tensorlistfromtensorX
Esequential_3_lstm_6_while_lstm_cell_12_matmul_readvariableop_resource:	АZ
Gsequential_3_lstm_6_while_lstm_cell_12_matmul_1_readvariableop_resource:	@АU
Fsequential_3_lstm_6_while_lstm_cell_12_biasadd_readvariableop_resource:	АИв=sequential_3/lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOpв<sequential_3/lstm_6/while/lstm_cell_12/MatMul/ReadVariableOpв>sequential_3/lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOpы
Ksequential_3/lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2M
Ksequential_3/lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shape╦
=sequential_3/lstm_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_3_lstm_6_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_6_tensorarrayunstack_tensorlistfromtensor_0%sequential_3_lstm_6_while_placeholderTsequential_3/lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02?
=sequential_3/lstm_6/while/TensorArrayV2Read/TensorListGetItemЕ
<sequential_3/lstm_6/while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOpGsequential_3_lstm_6_while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02>
<sequential_3/lstm_6/while/lstm_cell_12/MatMul/ReadVariableOpз
-sequential_3/lstm_6/while/lstm_cell_12/MatMulMatMulDsequential_3/lstm_6/while/TensorArrayV2Read/TensorListGetItem:item:0Dsequential_3/lstm_6/while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2/
-sequential_3/lstm_6/while/lstm_cell_12/MatMulЛ
>sequential_3/lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOpIsequential_3_lstm_6_while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02@
>sequential_3/lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOpР
/sequential_3/lstm_6/while/lstm_cell_12/MatMul_1MatMul'sequential_3_lstm_6_while_placeholder_2Fsequential_3/lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А21
/sequential_3/lstm_6/while/lstm_cell_12/MatMul_1И
*sequential_3/lstm_6/while/lstm_cell_12/addAddV27sequential_3/lstm_6/while/lstm_cell_12/MatMul:product:09sequential_3/lstm_6/while/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:         А2,
*sequential_3/lstm_6/while/lstm_cell_12/addД
=sequential_3/lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOpHsequential_3_lstm_6_while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02?
=sequential_3/lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOpХ
.sequential_3/lstm_6/while/lstm_cell_12/BiasAddBiasAdd.sequential_3/lstm_6/while/lstm_cell_12/add:z:0Esequential_3/lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А20
.sequential_3/lstm_6/while/lstm_cell_12/BiasAdd▓
6sequential_3/lstm_6/while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :28
6sequential_3/lstm_6/while/lstm_cell_12/split/split_dim█
,sequential_3/lstm_6/while/lstm_cell_12/splitSplit?sequential_3/lstm_6/while/lstm_cell_12/split/split_dim:output:07sequential_3/lstm_6/while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2.
,sequential_3/lstm_6/while/lstm_cell_12/split╘
.sequential_3/lstm_6/while/lstm_cell_12/SigmoidSigmoid5sequential_3/lstm_6/while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:         @20
.sequential_3/lstm_6/while/lstm_cell_12/Sigmoid╪
0sequential_3/lstm_6/while/lstm_cell_12/Sigmoid_1Sigmoid5sequential_3/lstm_6/while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:         @22
0sequential_3/lstm_6/while/lstm_cell_12/Sigmoid_1Ё
*sequential_3/lstm_6/while/lstm_cell_12/mulMul4sequential_3/lstm_6/while/lstm_cell_12/Sigmoid_1:y:0'sequential_3_lstm_6_while_placeholder_3*
T0*'
_output_shapes
:         @2,
*sequential_3/lstm_6/while/lstm_cell_12/mul╦
+sequential_3/lstm_6/while/lstm_cell_12/ReluRelu5sequential_3/lstm_6/while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:         @2-
+sequential_3/lstm_6/while/lstm_cell_12/ReluД
,sequential_3/lstm_6/while/lstm_cell_12/mul_1Mul2sequential_3/lstm_6/while/lstm_cell_12/Sigmoid:y:09sequential_3/lstm_6/while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:         @2.
,sequential_3/lstm_6/while/lstm_cell_12/mul_1∙
,sequential_3/lstm_6/while/lstm_cell_12/add_1AddV2.sequential_3/lstm_6/while/lstm_cell_12/mul:z:00sequential_3/lstm_6/while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:         @2.
,sequential_3/lstm_6/while/lstm_cell_12/add_1╪
0sequential_3/lstm_6/while/lstm_cell_12/Sigmoid_2Sigmoid5sequential_3/lstm_6/while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:         @22
0sequential_3/lstm_6/while/lstm_cell_12/Sigmoid_2╩
-sequential_3/lstm_6/while/lstm_cell_12/Relu_1Relu0sequential_3/lstm_6/while/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:         @2/
-sequential_3/lstm_6/while/lstm_cell_12/Relu_1И
,sequential_3/lstm_6/while/lstm_cell_12/mul_2Mul4sequential_3/lstm_6/while/lstm_cell_12/Sigmoid_2:y:0;sequential_3/lstm_6/while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:         @2.
,sequential_3/lstm_6/while/lstm_cell_12/mul_2─
>sequential_3/lstm_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_3_lstm_6_while_placeholder_1%sequential_3_lstm_6_while_placeholder0sequential_3/lstm_6/while/lstm_cell_12/mul_2:z:0*
_output_shapes
: *
element_dtype02@
>sequential_3/lstm_6/while/TensorArrayV2Write/TensorListSetItemД
sequential_3/lstm_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_3/lstm_6/while/add/y╣
sequential_3/lstm_6/while/addAddV2%sequential_3_lstm_6_while_placeholder(sequential_3/lstm_6/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_3/lstm_6/while/addИ
!sequential_3/lstm_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_3/lstm_6/while/add_1/y┌
sequential_3/lstm_6/while/add_1AddV2@sequential_3_lstm_6_while_sequential_3_lstm_6_while_loop_counter*sequential_3/lstm_6/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
sequential_3/lstm_6/while/add_1╗
"sequential_3/lstm_6/while/IdentityIdentity#sequential_3/lstm_6/while/add_1:z:0^sequential_3/lstm_6/while/NoOp*
T0*
_output_shapes
: 2$
"sequential_3/lstm_6/while/Identityт
$sequential_3/lstm_6/while/Identity_1IdentityFsequential_3_lstm_6_while_sequential_3_lstm_6_while_maximum_iterations^sequential_3/lstm_6/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_3/lstm_6/while/Identity_1╜
$sequential_3/lstm_6/while/Identity_2Identity!sequential_3/lstm_6/while/add:z:0^sequential_3/lstm_6/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_3/lstm_6/while/Identity_2ъ
$sequential_3/lstm_6/while/Identity_3IdentityNsequential_3/lstm_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_3/lstm_6/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_3/lstm_6/while/Identity_3▌
$sequential_3/lstm_6/while/Identity_4Identity0sequential_3/lstm_6/while/lstm_cell_12/mul_2:z:0^sequential_3/lstm_6/while/NoOp*
T0*'
_output_shapes
:         @2&
$sequential_3/lstm_6/while/Identity_4▌
$sequential_3/lstm_6/while/Identity_5Identity0sequential_3/lstm_6/while/lstm_cell_12/add_1:z:0^sequential_3/lstm_6/while/NoOp*
T0*'
_output_shapes
:         @2&
$sequential_3/lstm_6/while/Identity_5┬
sequential_3/lstm_6/while/NoOpNoOp>^sequential_3/lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOp=^sequential_3/lstm_6/while/lstm_cell_12/MatMul/ReadVariableOp?^sequential_3/lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2 
sequential_3/lstm_6/while/NoOp"Q
"sequential_3_lstm_6_while_identity+sequential_3/lstm_6/while/Identity:output:0"U
$sequential_3_lstm_6_while_identity_1-sequential_3/lstm_6/while/Identity_1:output:0"U
$sequential_3_lstm_6_while_identity_2-sequential_3/lstm_6/while/Identity_2:output:0"U
$sequential_3_lstm_6_while_identity_3-sequential_3/lstm_6/while/Identity_3:output:0"U
$sequential_3_lstm_6_while_identity_4-sequential_3/lstm_6/while/Identity_4:output:0"U
$sequential_3_lstm_6_while_identity_5-sequential_3/lstm_6/while/Identity_5:output:0"Т
Fsequential_3_lstm_6_while_lstm_cell_12_biasadd_readvariableop_resourceHsequential_3_lstm_6_while_lstm_cell_12_biasadd_readvariableop_resource_0"Ф
Gsequential_3_lstm_6_while_lstm_cell_12_matmul_1_readvariableop_resourceIsequential_3_lstm_6_while_lstm_cell_12_matmul_1_readvariableop_resource_0"Р
Esequential_3_lstm_6_while_lstm_cell_12_matmul_readvariableop_resourceGsequential_3_lstm_6_while_lstm_cell_12_matmul_readvariableop_resource_0"А
=sequential_3_lstm_6_while_sequential_3_lstm_6_strided_slice_1?sequential_3_lstm_6_while_sequential_3_lstm_6_strided_slice_1_0"°
ysequential_3_lstm_6_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_6_tensorarrayunstack_tensorlistfromtensor{sequential_3_lstm_6_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_6_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         @:         @: : : : : 2~
=sequential_3/lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOp=sequential_3/lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOp2|
<sequential_3/lstm_6/while/lstm_cell_12/MatMul/ReadVariableOp<sequential_3/lstm_6/while/lstm_cell_12/MatMul/ReadVariableOp2А
>sequential_3/lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOp>sequential_3/lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOp: 
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
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
ЪF
Д
B__inference_lstm_7_layer_call_and_return_conditional_losses_144506

inputs&
lstm_cell_13_144424:	@А&
lstm_cell_13_144426:	 А"
lstm_cell_13_144428:	А
identityИв$lstm_cell_13/StatefulPartitionedCallвwhileD
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
strided_slice/stack_2т
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
B :ш2
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
zeros/packed/1Г
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
:          2
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
B :ш2
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
zeros_1/packed/1Й
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
:          2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  @2
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slice_2Э
$lstm_cell_13/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_13_144424lstm_cell_13_144426lstm_cell_13_144428*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:          :          :          *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_13_layer_call_and_return_conditional_losses_1443592&
$lstm_cell_13/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2
TensorArrayV2_1/element_shape╕
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter└
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_13_144424lstm_cell_13_144426lstm_cell_13_144428*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :          :          : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_144437*
condR
while_cond_144436*K
output_shapes:
8: : : : :          :          : : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                   *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permо
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                   2
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
:          2

Identity}
NoOpNoOp%^lstm_cell_13/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  @: : : 2L
$lstm_cell_13/StatefulPartitionedCall$lstm_cell_13/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  @
 
_user_specified_nameinputs
√
∙
H__inference_sequential_3_layer_call_and_return_conditional_losses_145648
lstm_6_input 
lstm_6_145627:	А 
lstm_6_145629:	@А
lstm_6_145631:	А 
lstm_7_145634:	@А 
lstm_7_145636:	 А
lstm_7_145638:	А 
dense_3_145642: 
dense_3_145644:
identityИвdense_3/StatefulPartitionedCallв!dropout_3/StatefulPartitionedCallвlstm_6/StatefulPartitionedCallвlstm_7/StatefulPartitionedCallе
lstm_6/StatefulPartitionedCallStatefulPartitionedCalllstm_6_inputlstm_6_145627lstm_6_145629lstm_6_145631*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_1455042 
lstm_6/StatefulPartitionedCall╝
lstm_7/StatefulPartitionedCallStatefulPartitionedCall'lstm_6/StatefulPartitionedCall:output:0lstm_7_145634lstm_7_145636lstm_7_145638*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_7_layer_call_and_return_conditional_losses_1453312 
lstm_7/StatefulPartitionedCallР
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_1451642#
!dropout_3/StatefulPartitionedCall│
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_3_145642dense_3_145644*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_1451082!
dense_3/StatefulPartitionedCallГ
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identity╓
NoOpNoOp ^dense_3/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall^lstm_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall2@
lstm_7/StatefulPartitionedCalllstm_7/StatefulPartitionedCall:Y U
+
_output_shapes
:         
&
_user_specified_namelstm_6_input
√
Ж
H__inference_lstm_cell_12_layer_call_and_return_conditional_losses_147776

inputs
states_0
states_11
matmul_readvariableop_resource:	А3
 matmul_1_readvariableop_resource:	@А.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim┐
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         @2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         @2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         @2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:         @2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         @2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         @2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         @2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         @2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         @2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         @2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         @2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         @2

Identity_2Щ
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
?:         :         @:         @: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         @
"
_user_specified_name
states/0:QM
'
_output_shapes
:         @
"
_user_specified_name
states/1
Ш?
╨
while_body_146598
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_12_matmul_readvariableop_resource_0:	АH
5while_lstm_cell_12_matmul_1_readvariableop_resource_0:	@АC
4while_lstm_cell_12_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_12_matmul_readvariableop_resource:	АF
3while_lstm_cell_12_matmul_1_readvariableop_resource:	@АA
2while_lstm_cell_12_biasadd_readvariableop_resource:	АИв)while/lstm_cell_12/BiasAdd/ReadVariableOpв(while/lstm_cell_12/MatMul/ReadVariableOpв*while/lstm_cell_12/MatMul_1/ReadVariableOp├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem╔
(while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	А*
dtype02*
(while/lstm_cell_12/MatMul/ReadVariableOp╫
while/lstm_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_12/MatMul╧
*while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02,
*while/lstm_cell_12/MatMul_1/ReadVariableOp└
while/lstm_cell_12/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_12/MatMul_1╕
while/lstm_cell_12/addAddV2#while/lstm_cell_12/MatMul:product:0%while/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_12/add╚
)while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02+
)while/lstm_cell_12/BiasAdd/ReadVariableOp┼
while/lstm_cell_12/BiasAddBiasAddwhile/lstm_cell_12/add:z:01while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
while/lstm_cell_12/BiasAddК
"while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_12/split/split_dimЛ
while/lstm_cell_12/splitSplit+while/lstm_cell_12/split/split_dim:output:0#while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
while/lstm_cell_12/splitШ
while/lstm_cell_12/SigmoidSigmoid!while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/SigmoidЬ
while/lstm_cell_12/Sigmoid_1Sigmoid!while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/Sigmoid_1а
while/lstm_cell_12/mulMul while/lstm_cell_12/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/mulП
while/lstm_cell_12/ReluRelu!while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/Relu┤
while/lstm_cell_12/mul_1Mulwhile/lstm_cell_12/Sigmoid:y:0%while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/mul_1й
while/lstm_cell_12/add_1AddV2while/lstm_cell_12/mul:z:0while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/add_1Ь
while/lstm_cell_12/Sigmoid_2Sigmoid!while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/Sigmoid_2О
while/lstm_cell_12/Relu_1Reluwhile/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/Relu_1╕
while/lstm_cell_12/mul_2Mul while/lstm_cell_12/Sigmoid_2:y:0'while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:         @2
while/lstm_cell_12/mul_2р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_12/mul_2:z:0*
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
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3Н
while/Identity_4Identitywhile/lstm_cell_12/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         @2
while/Identity_4Н
while/Identity_5Identitywhile/lstm_cell_12/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         @2
while/Identity_5▐

while/NoOpNoOp*^while/lstm_cell_12/BiasAdd/ReadVariableOp)^while/lstm_cell_12/MatMul/ReadVariableOp+^while/lstm_cell_12/MatMul_1/ReadVariableOp*"
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
2while_lstm_cell_12_biasadd_readvariableop_resource4while_lstm_cell_12_biasadd_readvariableop_resource_0"l
3while_lstm_cell_12_matmul_1_readvariableop_resource5while_lstm_cell_12_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_12_matmul_readvariableop_resource3while_lstm_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         @:         @: : : : : 2V
)while/lstm_cell_12/BiasAdd/ReadVariableOp)while/lstm_cell_12/BiasAdd/ReadVariableOp2T
(while/lstm_cell_12/MatMul/ReadVariableOp(while/lstm_cell_12/MatMul/ReadVariableOp2X
*while/lstm_cell_12/MatMul_1/ReadVariableOp*while/lstm_cell_12/MatMul_1/ReadVariableOp: 
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
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
╒
├
while_cond_147094
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_147094___redundant_placeholder04
0while_while_cond_147094___redundant_placeholder14
0while_while_cond_147094___redundant_placeholder24
0while_while_cond_147094___redundant_placeholder3
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
@: : : : :          :          : ::::: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
ЮF
Д
B__inference_lstm_6_layer_call_and_return_conditional_losses_143876

inputs&
lstm_cell_12_143794:	А&
lstm_cell_12_143796:	@А"
lstm_cell_12_143798:	А
identityИв$lstm_cell_12/StatefulPartitionedCallвwhileD
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
strided_slice/stack_2т
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
B :ш2
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
zeros/packed/1Г
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
:         @2
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
B :ш2
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
zeros_1/packed/1Й
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
:         @2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  2
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Е
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_2/stack_2№
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_2Э
$lstm_cell_12/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_12_143794lstm_cell_12_143796lstm_cell_12_143798*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         @:         @:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_12_layer_call_and_return_conditional_losses_1437292&
$lstm_cell_12/StatefulPartitionedCallП
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
TensorArrayV2_1/element_shape╕
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter└
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_12_143794lstm_cell_12_143796lstm_cell_12_143798*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_143807*
condR
while_cond_143806*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  @*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
strided_slice_3/stack_2Ъ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permо
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  @2
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
 :                  @2

Identity}
NoOpNoOp%^lstm_cell_12/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2L
$lstm_cell_12/StatefulPartitionedCall$lstm_cell_12/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
╪%
у
while_body_143807
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_12_143831_0:	А.
while_lstm_cell_12_143833_0:	@А*
while_lstm_cell_12_143835_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_12_143831:	А,
while_lstm_cell_12_143833:	@А(
while_lstm_cell_12_143835:	АИв*while/lstm_cell_12/StatefulPartitionedCall├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemс
*while/lstm_cell_12/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_12_143831_0while_lstm_cell_12_143833_0while_lstm_cell_12_143835_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         @:         @:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_12_layer_call_and_return_conditional_losses_1437292,
*while/lstm_cell_12/StatefulPartitionedCallў
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_12/StatefulPartitionedCall:output:0*
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
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3д
while/Identity_4Identity3while/lstm_cell_12/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         @2
while/Identity_4д
while/Identity_5Identity3while/lstm_cell_12/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         @2
while/Identity_5З

while/NoOpNoOp+^while/lstm_cell_12/StatefulPartitionedCall*"
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
while_lstm_cell_12_143831while_lstm_cell_12_143831_0"8
while_lstm_cell_12_143833while_lstm_cell_12_143833_0"8
while_lstm_cell_12_143835while_lstm_cell_12_143835_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         @:         @: : : : : 2X
*while/lstm_cell_12/StatefulPartitionedCall*while/lstm_cell_12/StatefulPartitionedCall: 
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
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: 
╪%
у
while_body_144437
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_13_144461_0:	@А.
while_lstm_cell_13_144463_0:	 А*
while_lstm_cell_13_144465_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_13_144461:	@А,
while_lstm_cell_13_144463:	 А(
while_lstm_cell_13_144465:	АИв*while/lstm_cell_13/StatefulPartitionedCall├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         @*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemс
*while/lstm_cell_13/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_13_144461_0while_lstm_cell_13_144463_0while_lstm_cell_13_144465_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:          :          :          *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_13_layer_call_and_return_conditional_losses_1443592,
*while/lstm_cell_13/StatefulPartitionedCallў
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_13/StatefulPartitionedCall:output:0*
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
while/Identity_2Ъ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3д
while/Identity_4Identity3while/lstm_cell_13/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:          2
while/Identity_4д
while/Identity_5Identity3while/lstm_cell_13/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:          2
while/Identity_5З

while/NoOpNoOp+^while/lstm_cell_13/StatefulPartitionedCall*"
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
while_lstm_cell_13_144461while_lstm_cell_13_144461_0"8
while_lstm_cell_13_144463while_lstm_cell_13_144463_0"8
while_lstm_cell_13_144465while_lstm_cell_13_144465_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :          :          : : : : : 2X
*while/lstm_cell_13/StatefulPartitionedCall*while/lstm_cell_13/StatefulPartitionedCall: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
х╫
э
H__inference_sequential_3_layer_call_and_return_conditional_losses_146024

inputsE
2lstm_6_lstm_cell_12_matmul_readvariableop_resource:	АG
4lstm_6_lstm_cell_12_matmul_1_readvariableop_resource:	@АB
3lstm_6_lstm_cell_12_biasadd_readvariableop_resource:	АE
2lstm_7_lstm_cell_13_matmul_readvariableop_resource:	@АG
4lstm_7_lstm_cell_13_matmul_1_readvariableop_resource:	 АB
3lstm_7_lstm_cell_13_biasadd_readvariableop_resource:	А8
&dense_3_matmul_readvariableop_resource: 5
'dense_3_biasadd_readvariableop_resource:
identityИвdense_3/BiasAdd/ReadVariableOpвdense_3/MatMul/ReadVariableOpв*lstm_6/lstm_cell_12/BiasAdd/ReadVariableOpв)lstm_6/lstm_cell_12/MatMul/ReadVariableOpв+lstm_6/lstm_cell_12/MatMul_1/ReadVariableOpвlstm_6/whileв*lstm_7/lstm_cell_13/BiasAdd/ReadVariableOpв)lstm_7/lstm_cell_13/MatMul/ReadVariableOpв+lstm_7/lstm_cell_13/MatMul_1/ReadVariableOpвlstm_7/whileR
lstm_6/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_6/ShapeВ
lstm_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_6/strided_slice/stackЖ
lstm_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_6/strided_slice/stack_1Ж
lstm_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_6/strided_slice/stack_2М
lstm_6/strided_sliceStridedSlicelstm_6/Shape:output:0#lstm_6/strided_slice/stack:output:0%lstm_6/strided_slice/stack_1:output:0%lstm_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_6/strided_slicej
lstm_6/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_6/zeros/mul/yИ
lstm_6/zeros/mulMullstm_6/strided_slice:output:0lstm_6/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_6/zeros/mulm
lstm_6/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_6/zeros/Less/yГ
lstm_6/zeros/LessLesslstm_6/zeros/mul:z:0lstm_6/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_6/zeros/Lessp
lstm_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_6/zeros/packed/1Я
lstm_6/zeros/packedPacklstm_6/strided_slice:output:0lstm_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_6/zeros/packedm
lstm_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_6/zeros/ConstС
lstm_6/zerosFilllstm_6/zeros/packed:output:0lstm_6/zeros/Const:output:0*
T0*'
_output_shapes
:         @2
lstm_6/zerosn
lstm_6/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm_6/zeros_1/mul/yО
lstm_6/zeros_1/mulMullstm_6/strided_slice:output:0lstm_6/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_6/zeros_1/mulq
lstm_6/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_6/zeros_1/Less/yЛ
lstm_6/zeros_1/LessLesslstm_6/zeros_1/mul:z:0lstm_6/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_6/zeros_1/Lesst
lstm_6/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm_6/zeros_1/packed/1е
lstm_6/zeros_1/packedPacklstm_6/strided_slice:output:0 lstm_6/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_6/zeros_1/packedq
lstm_6/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_6/zeros_1/ConstЩ
lstm_6/zeros_1Filllstm_6/zeros_1/packed:output:0lstm_6/zeros_1/Const:output:0*
T0*'
_output_shapes
:         @2
lstm_6/zeros_1Г
lstm_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_6/transpose/permП
lstm_6/transpose	Transposeinputslstm_6/transpose/perm:output:0*
T0*+
_output_shapes
:         2
lstm_6/transposed
lstm_6/Shape_1Shapelstm_6/transpose:y:0*
T0*
_output_shapes
:2
lstm_6/Shape_1Ж
lstm_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_6/strided_slice_1/stackК
lstm_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_1/stack_1К
lstm_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_1/stack_2Ш
lstm_6/strided_slice_1StridedSlicelstm_6/Shape_1:output:0%lstm_6/strided_slice_1/stack:output:0'lstm_6/strided_slice_1/stack_1:output:0'lstm_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_6/strided_slice_1У
"lstm_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2$
"lstm_6/TensorArrayV2/element_shape╬
lstm_6/TensorArrayV2TensorListReserve+lstm_6/TensorArrayV2/element_shape:output:0lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_6/TensorArrayV2═
<lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2>
<lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shapeФ
.lstm_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_6/transpose:y:0Elstm_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_6/TensorArrayUnstack/TensorListFromTensorЖ
lstm_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_6/strided_slice_2/stackК
lstm_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_2/stack_1К
lstm_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_2/stack_2ж
lstm_6/strided_slice_2StridedSlicelstm_6/transpose:y:0%lstm_6/strided_slice_2/stack:output:0'lstm_6/strided_slice_2/stack_1:output:0'lstm_6/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
lstm_6/strided_slice_2╩
)lstm_6/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp2lstm_6_lstm_cell_12_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02+
)lstm_6/lstm_cell_12/MatMul/ReadVariableOp╔
lstm_6/lstm_cell_12/MatMulMatMullstm_6/strided_slice_2:output:01lstm_6/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_6/lstm_cell_12/MatMul╨
+lstm_6/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp4lstm_6_lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02-
+lstm_6/lstm_cell_12/MatMul_1/ReadVariableOp┼
lstm_6/lstm_cell_12/MatMul_1MatMullstm_6/zeros:output:03lstm_6/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_6/lstm_cell_12/MatMul_1╝
lstm_6/lstm_cell_12/addAddV2$lstm_6/lstm_cell_12/MatMul:product:0&lstm_6/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_6/lstm_cell_12/add╔
*lstm_6/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp3lstm_6_lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*lstm_6/lstm_cell_12/BiasAdd/ReadVariableOp╔
lstm_6/lstm_cell_12/BiasAddBiasAddlstm_6/lstm_cell_12/add:z:02lstm_6/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_6/lstm_cell_12/BiasAddМ
#lstm_6/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#lstm_6/lstm_cell_12/split/split_dimП
lstm_6/lstm_cell_12/splitSplit,lstm_6/lstm_cell_12/split/split_dim:output:0$lstm_6/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
lstm_6/lstm_cell_12/splitЫ
lstm_6/lstm_cell_12/SigmoidSigmoid"lstm_6/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:         @2
lstm_6/lstm_cell_12/SigmoidЯ
lstm_6/lstm_cell_12/Sigmoid_1Sigmoid"lstm_6/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:         @2
lstm_6/lstm_cell_12/Sigmoid_1з
lstm_6/lstm_cell_12/mulMul!lstm_6/lstm_cell_12/Sigmoid_1:y:0lstm_6/zeros_1:output:0*
T0*'
_output_shapes
:         @2
lstm_6/lstm_cell_12/mulТ
lstm_6/lstm_cell_12/ReluRelu"lstm_6/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:         @2
lstm_6/lstm_cell_12/Relu╕
lstm_6/lstm_cell_12/mul_1Mullstm_6/lstm_cell_12/Sigmoid:y:0&lstm_6/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:         @2
lstm_6/lstm_cell_12/mul_1н
lstm_6/lstm_cell_12/add_1AddV2lstm_6/lstm_cell_12/mul:z:0lstm_6/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:         @2
lstm_6/lstm_cell_12/add_1Я
lstm_6/lstm_cell_12/Sigmoid_2Sigmoid"lstm_6/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:         @2
lstm_6/lstm_cell_12/Sigmoid_2С
lstm_6/lstm_cell_12/Relu_1Relulstm_6/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:         @2
lstm_6/lstm_cell_12/Relu_1╝
lstm_6/lstm_cell_12/mul_2Mul!lstm_6/lstm_cell_12/Sigmoid_2:y:0(lstm_6/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:         @2
lstm_6/lstm_cell_12/mul_2Э
$lstm_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm_6/TensorArrayV2_1/element_shape╘
lstm_6/TensorArrayV2_1TensorListReserve-lstm_6/TensorArrayV2_1/element_shape:output:0lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_6/TensorArrayV2_1\
lstm_6/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_6/timeН
lstm_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2!
lstm_6/while/maximum_iterationsx
lstm_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_6/while/loop_counterЇ
lstm_6/whileWhile"lstm_6/while/loop_counter:output:0(lstm_6/while/maximum_iterations:output:0lstm_6/time:output:0lstm_6/TensorArrayV2_1:handle:0lstm_6/zeros:output:0lstm_6/zeros_1:output:0lstm_6/strided_slice_1:output:0>lstm_6/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_6_lstm_cell_12_matmul_readvariableop_resource4lstm_6_lstm_cell_12_matmul_1_readvariableop_resource3lstm_6_lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_6_while_body_145786*$
condR
lstm_6_while_cond_145785*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations 2
lstm_6/while├
7lstm_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   29
7lstm_6/TensorArrayV2Stack/TensorListStack/element_shapeД
)lstm_6/TensorArrayV2Stack/TensorListStackTensorListStacklstm_6/while:output:3@lstm_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype02+
)lstm_6/TensorArrayV2Stack/TensorListStackП
lstm_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
lstm_6/strided_slice_3/stackК
lstm_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_6/strided_slice_3/stack_1К
lstm_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_3/stack_2─
lstm_6/strided_slice_3StridedSlice2lstm_6/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_6/strided_slice_3/stack:output:0'lstm_6/strided_slice_3/stack_1:output:0'lstm_6/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
lstm_6/strided_slice_3З
lstm_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_6/transpose_1/perm┴
lstm_6/transpose_1	Transpose2lstm_6/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_6/transpose_1/perm:output:0*
T0*+
_output_shapes
:         @2
lstm_6/transpose_1t
lstm_6/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_6/runtimeb
lstm_7/ShapeShapelstm_6/transpose_1:y:0*
T0*
_output_shapes
:2
lstm_7/ShapeВ
lstm_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_7/strided_slice/stackЖ
lstm_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_7/strided_slice/stack_1Ж
lstm_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_7/strided_slice/stack_2М
lstm_7/strided_sliceStridedSlicelstm_7/Shape:output:0#lstm_7/strided_slice/stack:output:0%lstm_7/strided_slice/stack_1:output:0%lstm_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_7/strided_slicej
lstm_7/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_7/zeros/mul/yИ
lstm_7/zeros/mulMullstm_7/strided_slice:output:0lstm_7/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_7/zeros/mulm
lstm_7/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_7/zeros/Less/yГ
lstm_7/zeros/LessLesslstm_7/zeros/mul:z:0lstm_7/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_7/zeros/Lessp
lstm_7/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_7/zeros/packed/1Я
lstm_7/zeros/packedPacklstm_7/strided_slice:output:0lstm_7/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_7/zeros/packedm
lstm_7/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_7/zeros/ConstС
lstm_7/zerosFilllstm_7/zeros/packed:output:0lstm_7/zeros/Const:output:0*
T0*'
_output_shapes
:          2
lstm_7/zerosn
lstm_7/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_7/zeros_1/mul/yО
lstm_7/zeros_1/mulMullstm_7/strided_slice:output:0lstm_7/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_7/zeros_1/mulq
lstm_7/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
lstm_7/zeros_1/Less/yЛ
lstm_7/zeros_1/LessLesslstm_7/zeros_1/mul:z:0lstm_7/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_7/zeros_1/Lesst
lstm_7/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm_7/zeros_1/packed/1е
lstm_7/zeros_1/packedPacklstm_7/strided_slice:output:0 lstm_7/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_7/zeros_1/packedq
lstm_7/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_7/zeros_1/ConstЩ
lstm_7/zeros_1Filllstm_7/zeros_1/packed:output:0lstm_7/zeros_1/Const:output:0*
T0*'
_output_shapes
:          2
lstm_7/zeros_1Г
lstm_7/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_7/transpose/permЯ
lstm_7/transpose	Transposelstm_6/transpose_1:y:0lstm_7/transpose/perm:output:0*
T0*+
_output_shapes
:         @2
lstm_7/transposed
lstm_7/Shape_1Shapelstm_7/transpose:y:0*
T0*
_output_shapes
:2
lstm_7/Shape_1Ж
lstm_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_7/strided_slice_1/stackК
lstm_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_7/strided_slice_1/stack_1К
lstm_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_7/strided_slice_1/stack_2Ш
lstm_7/strided_slice_1StridedSlicelstm_7/Shape_1:output:0%lstm_7/strided_slice_1/stack:output:0'lstm_7/strided_slice_1/stack_1:output:0'lstm_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_7/strided_slice_1У
"lstm_7/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2$
"lstm_7/TensorArrayV2/element_shape╬
lstm_7/TensorArrayV2TensorListReserve+lstm_7/TensorArrayV2/element_shape:output:0lstm_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_7/TensorArrayV2═
<lstm_7/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2>
<lstm_7/TensorArrayUnstack/TensorListFromTensor/element_shapeФ
.lstm_7/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_7/transpose:y:0Elstm_7/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_7/TensorArrayUnstack/TensorListFromTensorЖ
lstm_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_7/strided_slice_2/stackК
lstm_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_7/strided_slice_2/stack_1К
lstm_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_7/strided_slice_2/stack_2ж
lstm_7/strided_slice_2StridedSlicelstm_7/transpose:y:0%lstm_7/strided_slice_2/stack:output:0'lstm_7/strided_slice_2/stack_1:output:0'lstm_7/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
lstm_7/strided_slice_2╩
)lstm_7/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp2lstm_7_lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	@А*
dtype02+
)lstm_7/lstm_cell_13/MatMul/ReadVariableOp╔
lstm_7/lstm_cell_13/MatMulMatMullstm_7/strided_slice_2:output:01lstm_7/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_7/lstm_cell_13/MatMul╨
+lstm_7/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp4lstm_7_lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02-
+lstm_7/lstm_cell_13/MatMul_1/ReadVariableOp┼
lstm_7/lstm_cell_13/MatMul_1MatMullstm_7/zeros:output:03lstm_7/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_7/lstm_cell_13/MatMul_1╝
lstm_7/lstm_cell_13/addAddV2$lstm_7/lstm_cell_13/MatMul:product:0&lstm_7/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_7/lstm_cell_13/add╔
*lstm_7/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp3lstm_7_lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*lstm_7/lstm_cell_13/BiasAdd/ReadVariableOp╔
lstm_7/lstm_cell_13/BiasAddBiasAddlstm_7/lstm_cell_13/add:z:02lstm_7/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
lstm_7/lstm_cell_13/BiasAddМ
#lstm_7/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#lstm_7/lstm_cell_13/split/split_dimП
lstm_7/lstm_cell_13/splitSplit,lstm_7/lstm_cell_13/split/split_dim:output:0$lstm_7/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
lstm_7/lstm_cell_13/splitЫ
lstm_7/lstm_cell_13/SigmoidSigmoid"lstm_7/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:          2
lstm_7/lstm_cell_13/SigmoidЯ
lstm_7/lstm_cell_13/Sigmoid_1Sigmoid"lstm_7/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:          2
lstm_7/lstm_cell_13/Sigmoid_1з
lstm_7/lstm_cell_13/mulMul!lstm_7/lstm_cell_13/Sigmoid_1:y:0lstm_7/zeros_1:output:0*
T0*'
_output_shapes
:          2
lstm_7/lstm_cell_13/mulТ
lstm_7/lstm_cell_13/ReluRelu"lstm_7/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:          2
lstm_7/lstm_cell_13/Relu╕
lstm_7/lstm_cell_13/mul_1Mullstm_7/lstm_cell_13/Sigmoid:y:0&lstm_7/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:          2
lstm_7/lstm_cell_13/mul_1н
lstm_7/lstm_cell_13/add_1AddV2lstm_7/lstm_cell_13/mul:z:0lstm_7/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:          2
lstm_7/lstm_cell_13/add_1Я
lstm_7/lstm_cell_13/Sigmoid_2Sigmoid"lstm_7/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:          2
lstm_7/lstm_cell_13/Sigmoid_2С
lstm_7/lstm_cell_13/Relu_1Relulstm_7/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:          2
lstm_7/lstm_cell_13/Relu_1╝
lstm_7/lstm_cell_13/mul_2Mul!lstm_7/lstm_cell_13/Sigmoid_2:y:0(lstm_7/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:          2
lstm_7/lstm_cell_13/mul_2Э
$lstm_7/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        2&
$lstm_7/TensorArrayV2_1/element_shape╘
lstm_7/TensorArrayV2_1TensorListReserve-lstm_7/TensorArrayV2_1/element_shape:output:0lstm_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_7/TensorArrayV2_1\
lstm_7/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_7/timeН
lstm_7/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2!
lstm_7/while/maximum_iterationsx
lstm_7/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_7/while/loop_counterЇ
lstm_7/whileWhile"lstm_7/while/loop_counter:output:0(lstm_7/while/maximum_iterations:output:0lstm_7/time:output:0lstm_7/TensorArrayV2_1:handle:0lstm_7/zeros:output:0lstm_7/zeros_1:output:0lstm_7/strided_slice_1:output:0>lstm_7/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_7_lstm_cell_13_matmul_readvariableop_resource4lstm_7_lstm_cell_13_matmul_1_readvariableop_resource3lstm_7_lstm_cell_13_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :          :          : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_7_while_body_145933*$
condR
lstm_7_while_cond_145932*K
output_shapes:
8: : : : :          :          : : : : : *
parallel_iterations 2
lstm_7/while├
7lstm_7/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        29
7lstm_7/TensorArrayV2Stack/TensorListStack/element_shapeД
)lstm_7/TensorArrayV2Stack/TensorListStackTensorListStacklstm_7/while:output:3@lstm_7/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:          *
element_dtype02+
)lstm_7/TensorArrayV2Stack/TensorListStackП
lstm_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
lstm_7/strided_slice_3/stackК
lstm_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_7/strided_slice_3/stack_1К
lstm_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_7/strided_slice_3/stack_2─
lstm_7/strided_slice_3StridedSlice2lstm_7/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_7/strided_slice_3/stack:output:0'lstm_7/strided_slice_3/stack_1:output:0'lstm_7/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_mask2
lstm_7/strided_slice_3З
lstm_7/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_7/transpose_1/perm┴
lstm_7/transpose_1	Transpose2lstm_7/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_7/transpose_1/perm:output:0*
T0*+
_output_shapes
:          2
lstm_7/transpose_1t
lstm_7/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_7/runtimeЗ
dropout_3/IdentityIdentitylstm_7/strided_slice_3:output:0*
T0*'
_output_shapes
:          2
dropout_3/Identityе
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_3/MatMul/ReadVariableOpа
dense_3/MatMulMatMuldropout_3/Identity:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_3/MatMulд
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOpб
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_3/BiasAdds
IdentityIdentitydense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         2

Identity╗
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp+^lstm_6/lstm_cell_12/BiasAdd/ReadVariableOp*^lstm_6/lstm_cell_12/MatMul/ReadVariableOp,^lstm_6/lstm_cell_12/MatMul_1/ReadVariableOp^lstm_6/while+^lstm_7/lstm_cell_13/BiasAdd/ReadVariableOp*^lstm_7/lstm_cell_13/MatMul/ReadVariableOp,^lstm_7/lstm_cell_13/MatMul_1/ReadVariableOp^lstm_7/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : : : : : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2X
*lstm_6/lstm_cell_12/BiasAdd/ReadVariableOp*lstm_6/lstm_cell_12/BiasAdd/ReadVariableOp2V
)lstm_6/lstm_cell_12/MatMul/ReadVariableOp)lstm_6/lstm_cell_12/MatMul/ReadVariableOp2Z
+lstm_6/lstm_cell_12/MatMul_1/ReadVariableOp+lstm_6/lstm_cell_12/MatMul_1/ReadVariableOp2
lstm_6/whilelstm_6/while2X
*lstm_7/lstm_cell_13/BiasAdd/ReadVariableOp*lstm_7/lstm_cell_13/BiasAdd/ReadVariableOp2V
)lstm_7/lstm_cell_13/MatMul/ReadVariableOp)lstm_7/lstm_cell_13/MatMul/ReadVariableOp2Z
+lstm_7/lstm_cell_13/MatMul_1/ReadVariableOp+lstm_7/lstm_cell_13/MatMul_1/ReadVariableOp2
lstm_7/whilelstm_7/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╒
├
while_cond_144840
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_144840___redundant_placeholder04
0while_while_cond_144840___redundant_placeholder14
0while_while_cond_144840___redundant_placeholder24
0while_while_cond_144840___redundant_placeholder3
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
@: : : : :         @:         @: ::::: 
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
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
:
√
Ж
H__inference_lstm_cell_13_layer_call_and_return_conditional_losses_147874

inputs
states_0
states_11
matmul_readvariableop_resource:	@А3
 matmul_1_readvariableop_resource:	 А.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim┐
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:          2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:          2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:          2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:          2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:          2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:          2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:          2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:          2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:          2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:          2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:          2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:          2

Identity_2Щ
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
?:         @:          :          : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs:QM
'
_output_shapes
:          
"
_user_specified_name
states/0:QM
'
_output_shapes
:          
"
_user_specified_name
states/1
м
┤
'__inference_lstm_6_layer_call_fn_146380

inputs
unknown:	А
	unknown_0:	@А
	unknown_1:	А
identityИвStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_1455042
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
и

╧
lstm_7_while_cond_145932*
&lstm_7_while_lstm_7_while_loop_counter0
,lstm_7_while_lstm_7_while_maximum_iterations
lstm_7_while_placeholder
lstm_7_while_placeholder_1
lstm_7_while_placeholder_2
lstm_7_while_placeholder_3,
(lstm_7_while_less_lstm_7_strided_slice_1B
>lstm_7_while_lstm_7_while_cond_145932___redundant_placeholder0B
>lstm_7_while_lstm_7_while_cond_145932___redundant_placeholder1B
>lstm_7_while_lstm_7_while_cond_145932___redundant_placeholder2B
>lstm_7_while_lstm_7_while_cond_145932___redundant_placeholder3
lstm_7_while_identity
У
lstm_7/while/LessLesslstm_7_while_placeholder(lstm_7_while_less_lstm_7_strided_slice_1*
T0*
_output_shapes
: 2
lstm_7/while/Lessr
lstm_7/while/IdentityIdentitylstm_7/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_7/while/Identity"7
lstm_7_while_identitylstm_7/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :          :          : ::::: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
ЧI
░

lstm_7_while_body_146238*
&lstm_7_while_lstm_7_while_loop_counter0
,lstm_7_while_lstm_7_while_maximum_iterations
lstm_7_while_placeholder
lstm_7_while_placeholder_1
lstm_7_while_placeholder_2
lstm_7_while_placeholder_3)
%lstm_7_while_lstm_7_strided_slice_1_0e
alstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_7_while_lstm_cell_13_matmul_readvariableop_resource_0:	@АO
<lstm_7_while_lstm_cell_13_matmul_1_readvariableop_resource_0:	 АJ
;lstm_7_while_lstm_cell_13_biasadd_readvariableop_resource_0:	А
lstm_7_while_identity
lstm_7_while_identity_1
lstm_7_while_identity_2
lstm_7_while_identity_3
lstm_7_while_identity_4
lstm_7_while_identity_5'
#lstm_7_while_lstm_7_strided_slice_1c
_lstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensorK
8lstm_7_while_lstm_cell_13_matmul_readvariableop_resource:	@АM
:lstm_7_while_lstm_cell_13_matmul_1_readvariableop_resource:	 АH
9lstm_7_while_lstm_cell_13_biasadd_readvariableop_resource:	АИв0lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOpв/lstm_7/while/lstm_cell_13/MatMul/ReadVariableOpв1lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOp╤
>lstm_7/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2@
>lstm_7/while/TensorArrayV2Read/TensorListGetItem/element_shape¤
0lstm_7/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensor_0lstm_7_while_placeholderGlstm_7/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         @*
element_dtype022
0lstm_7/while/TensorArrayV2Read/TensorListGetItem▐
/lstm_7/while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp:lstm_7_while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	@А*
dtype021
/lstm_7/while/lstm_cell_13/MatMul/ReadVariableOpє
 lstm_7/while/lstm_cell_13/MatMulMatMul7lstm_7/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_7/while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2"
 lstm_7/while/lstm_cell_13/MatMulф
1lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp<lstm_7_while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype023
1lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOp▄
"lstm_7/while/lstm_cell_13/MatMul_1MatMullstm_7_while_placeholder_29lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2$
"lstm_7/while/lstm_cell_13/MatMul_1╘
lstm_7/while/lstm_cell_13/addAddV2*lstm_7/while/lstm_cell_13/MatMul:product:0,lstm_7/while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:         А2
lstm_7/while/lstm_cell_13/add▌
0lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp;lstm_7_while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype022
0lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOpс
!lstm_7/while/lstm_cell_13/BiasAddBiasAdd!lstm_7/while/lstm_cell_13/add:z:08lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2#
!lstm_7/while/lstm_cell_13/BiasAddШ
)lstm_7/while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2+
)lstm_7/while/lstm_cell_13/split/split_dimз
lstm_7/while/lstm_cell_13/splitSplit2lstm_7/while/lstm_cell_13/split/split_dim:output:0*lstm_7/while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2!
lstm_7/while/lstm_cell_13/splitн
!lstm_7/while/lstm_cell_13/SigmoidSigmoid(lstm_7/while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:          2#
!lstm_7/while/lstm_cell_13/Sigmoid▒
#lstm_7/while/lstm_cell_13/Sigmoid_1Sigmoid(lstm_7/while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:          2%
#lstm_7/while/lstm_cell_13/Sigmoid_1╝
lstm_7/while/lstm_cell_13/mulMul'lstm_7/while/lstm_cell_13/Sigmoid_1:y:0lstm_7_while_placeholder_3*
T0*'
_output_shapes
:          2
lstm_7/while/lstm_cell_13/mulд
lstm_7/while/lstm_cell_13/ReluRelu(lstm_7/while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:          2 
lstm_7/while/lstm_cell_13/Relu╨
lstm_7/while/lstm_cell_13/mul_1Mul%lstm_7/while/lstm_cell_13/Sigmoid:y:0,lstm_7/while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:          2!
lstm_7/while/lstm_cell_13/mul_1┼
lstm_7/while/lstm_cell_13/add_1AddV2!lstm_7/while/lstm_cell_13/mul:z:0#lstm_7/while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:          2!
lstm_7/while/lstm_cell_13/add_1▒
#lstm_7/while/lstm_cell_13/Sigmoid_2Sigmoid(lstm_7/while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:          2%
#lstm_7/while/lstm_cell_13/Sigmoid_2г
 lstm_7/while/lstm_cell_13/Relu_1Relu#lstm_7/while/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:          2"
 lstm_7/while/lstm_cell_13/Relu_1╘
lstm_7/while/lstm_cell_13/mul_2Mul'lstm_7/while/lstm_cell_13/Sigmoid_2:y:0.lstm_7/while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:          2!
lstm_7/while/lstm_cell_13/mul_2Г
1lstm_7/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_7_while_placeholder_1lstm_7_while_placeholder#lstm_7/while/lstm_cell_13/mul_2:z:0*
_output_shapes
: *
element_dtype023
1lstm_7/while/TensorArrayV2Write/TensorListSetItemj
lstm_7/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_7/while/add/yЕ
lstm_7/while/addAddV2lstm_7_while_placeholderlstm_7/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_7/while/addn
lstm_7/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_7/while/add_1/yЩ
lstm_7/while/add_1AddV2&lstm_7_while_lstm_7_while_loop_counterlstm_7/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_7/while/add_1З
lstm_7/while/IdentityIdentitylstm_7/while/add_1:z:0^lstm_7/while/NoOp*
T0*
_output_shapes
: 2
lstm_7/while/Identityб
lstm_7/while/Identity_1Identity,lstm_7_while_lstm_7_while_maximum_iterations^lstm_7/while/NoOp*
T0*
_output_shapes
: 2
lstm_7/while/Identity_1Й
lstm_7/while/Identity_2Identitylstm_7/while/add:z:0^lstm_7/while/NoOp*
T0*
_output_shapes
: 2
lstm_7/while/Identity_2╢
lstm_7/while/Identity_3IdentityAlstm_7/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_7/while/NoOp*
T0*
_output_shapes
: 2
lstm_7/while/Identity_3й
lstm_7/while/Identity_4Identity#lstm_7/while/lstm_cell_13/mul_2:z:0^lstm_7/while/NoOp*
T0*'
_output_shapes
:          2
lstm_7/while/Identity_4й
lstm_7/while/Identity_5Identity#lstm_7/while/lstm_cell_13/add_1:z:0^lstm_7/while/NoOp*
T0*'
_output_shapes
:          2
lstm_7/while/Identity_5Б
lstm_7/while/NoOpNoOp1^lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOp0^lstm_7/while/lstm_cell_13/MatMul/ReadVariableOp2^lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_7/while/NoOp"7
lstm_7_while_identitylstm_7/while/Identity:output:0";
lstm_7_while_identity_1 lstm_7/while/Identity_1:output:0";
lstm_7_while_identity_2 lstm_7/while/Identity_2:output:0";
lstm_7_while_identity_3 lstm_7/while/Identity_3:output:0";
lstm_7_while_identity_4 lstm_7/while/Identity_4:output:0";
lstm_7_while_identity_5 lstm_7/while/Identity_5:output:0"L
#lstm_7_while_lstm_7_strided_slice_1%lstm_7_while_lstm_7_strided_slice_1_0"x
9lstm_7_while_lstm_cell_13_biasadd_readvariableop_resource;lstm_7_while_lstm_cell_13_biasadd_readvariableop_resource_0"z
:lstm_7_while_lstm_cell_13_matmul_1_readvariableop_resource<lstm_7_while_lstm_cell_13_matmul_1_readvariableop_resource_0"v
8lstm_7_while_lstm_cell_13_matmul_readvariableop_resource:lstm_7_while_lstm_cell_13_matmul_readvariableop_resource_0"─
_lstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensoralstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :          :          : : : : : 2d
0lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOp0lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOp2b
/lstm_7/while/lstm_cell_13/MatMul/ReadVariableOp/lstm_7/while/lstm_cell_13/MatMul/ReadVariableOp2f
1lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOp1lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOp: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
є
Д
H__inference_lstm_cell_12_layer_call_and_return_conditional_losses_143729

inputs

states
states_11
matmul_readvariableop_resource:	А3
 matmul_1_readvariableop_resource:	@А.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulФ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@А*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         А2
addН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim┐
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         @2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         @2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         @2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:         @2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         @2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         @2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         @2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         @2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         @2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         @2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         @2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         @2

Identity_2Щ
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
?:         :         @:         @: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         @
 
_user_specified_namestates:OK
'
_output_shapes
:         @
 
_user_specified_namestates
╢
Ў
-__inference_lstm_cell_12_layer_call_fn_147695

inputs
states_0
states_1
unknown:	А
	unknown_0:	@А
	unknown_1:	А
identity

identity_1

identity_2ИвStatefulPartitionedCall├
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         @:         @:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_12_layer_call_and_return_conditional_losses_1435832
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         @2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         @2

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
?:         :         @:         @: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         @
"
_user_specified_name
states/0:QM
'
_output_shapes
:         @
"
_user_specified_name
states/1
╒
├
while_cond_147396
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_147396___redundant_placeholder04
0while_while_cond_147396___redundant_placeholder14
0while_while_cond_147396___redundant_placeholder24
0while_while_cond_147396___redundant_placeholder3
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
@: : : : :          :          : ::::: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
╒
├
while_cond_147547
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_147547___redundant_placeholder04
0while_while_cond_147547___redundant_placeholder14
0while_while_cond_147547___redundant_placeholder24
0while_while_cond_147547___redundant_placeholder3
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
@: : : : :          :          : ::::: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
Щ

╠
-__inference_sequential_3_layer_call_fn_145134
lstm_6_input
unknown:	А
	unknown_0:	@А
	unknown_1:	А
	unknown_2:	@А
	unknown_3:	 А
	unknown_4:	А
	unknown_5: 
	unknown_6:
identityИвStatefulPartitionedCall╠
StatefulPartitionedCallStatefulPartitionedCalllstm_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_1451152
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:         
&
_user_specified_namelstm_6_input
▄[
╨
%sequential_3_lstm_7_while_body_143417D
@sequential_3_lstm_7_while_sequential_3_lstm_7_while_loop_counterJ
Fsequential_3_lstm_7_while_sequential_3_lstm_7_while_maximum_iterations)
%sequential_3_lstm_7_while_placeholder+
'sequential_3_lstm_7_while_placeholder_1+
'sequential_3_lstm_7_while_placeholder_2+
'sequential_3_lstm_7_while_placeholder_3C
?sequential_3_lstm_7_while_sequential_3_lstm_7_strided_slice_1_0
{sequential_3_lstm_7_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_7_tensorarrayunstack_tensorlistfromtensor_0Z
Gsequential_3_lstm_7_while_lstm_cell_13_matmul_readvariableop_resource_0:	@А\
Isequential_3_lstm_7_while_lstm_cell_13_matmul_1_readvariableop_resource_0:	 АW
Hsequential_3_lstm_7_while_lstm_cell_13_biasadd_readvariableop_resource_0:	А&
"sequential_3_lstm_7_while_identity(
$sequential_3_lstm_7_while_identity_1(
$sequential_3_lstm_7_while_identity_2(
$sequential_3_lstm_7_while_identity_3(
$sequential_3_lstm_7_while_identity_4(
$sequential_3_lstm_7_while_identity_5A
=sequential_3_lstm_7_while_sequential_3_lstm_7_strided_slice_1}
ysequential_3_lstm_7_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_7_tensorarrayunstack_tensorlistfromtensorX
Esequential_3_lstm_7_while_lstm_cell_13_matmul_readvariableop_resource:	@АZ
Gsequential_3_lstm_7_while_lstm_cell_13_matmul_1_readvariableop_resource:	 АU
Fsequential_3_lstm_7_while_lstm_cell_13_biasadd_readvariableop_resource:	АИв=sequential_3/lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOpв<sequential_3/lstm_7/while/lstm_cell_13/MatMul/ReadVariableOpв>sequential_3/lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOpы
Ksequential_3/lstm_7/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2M
Ksequential_3/lstm_7/while/TensorArrayV2Read/TensorListGetItem/element_shape╦
=sequential_3/lstm_7/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_3_lstm_7_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_7_tensorarrayunstack_tensorlistfromtensor_0%sequential_3_lstm_7_while_placeholderTsequential_3/lstm_7/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         @*
element_dtype02?
=sequential_3/lstm_7/while/TensorArrayV2Read/TensorListGetItemЕ
<sequential_3/lstm_7/while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOpGsequential_3_lstm_7_while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	@А*
dtype02>
<sequential_3/lstm_7/while/lstm_cell_13/MatMul/ReadVariableOpз
-sequential_3/lstm_7/while/lstm_cell_13/MatMulMatMulDsequential_3/lstm_7/while/TensorArrayV2Read/TensorListGetItem:item:0Dsequential_3/lstm_7/while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2/
-sequential_3/lstm_7/while/lstm_cell_13/MatMulЛ
>sequential_3/lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOpIsequential_3_lstm_7_while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype02@
>sequential_3/lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOpР
/sequential_3/lstm_7/while/lstm_cell_13/MatMul_1MatMul'sequential_3_lstm_7_while_placeholder_2Fsequential_3/lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А21
/sequential_3/lstm_7/while/lstm_cell_13/MatMul_1И
*sequential_3/lstm_7/while/lstm_cell_13/addAddV27sequential_3/lstm_7/while/lstm_cell_13/MatMul:product:09sequential_3/lstm_7/while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:         А2,
*sequential_3/lstm_7/while/lstm_cell_13/addД
=sequential_3/lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOpHsequential_3_lstm_7_while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype02?
=sequential_3/lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOpХ
.sequential_3/lstm_7/while/lstm_cell_13/BiasAddBiasAdd.sequential_3/lstm_7/while/lstm_cell_13/add:z:0Esequential_3/lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А20
.sequential_3/lstm_7/while/lstm_cell_13/BiasAdd▓
6sequential_3/lstm_7/while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :28
6sequential_3/lstm_7/while/lstm_cell_13/split/split_dim█
,sequential_3/lstm_7/while/lstm_cell_13/splitSplit?sequential_3/lstm_7/while/lstm_cell_13/split/split_dim:output:07sequential_3/lstm_7/while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:          :          :          :          *
	num_split2.
,sequential_3/lstm_7/while/lstm_cell_13/split╘
.sequential_3/lstm_7/while/lstm_cell_13/SigmoidSigmoid5sequential_3/lstm_7/while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:          20
.sequential_3/lstm_7/while/lstm_cell_13/Sigmoid╪
0sequential_3/lstm_7/while/lstm_cell_13/Sigmoid_1Sigmoid5sequential_3/lstm_7/while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:          22
0sequential_3/lstm_7/while/lstm_cell_13/Sigmoid_1Ё
*sequential_3/lstm_7/while/lstm_cell_13/mulMul4sequential_3/lstm_7/while/lstm_cell_13/Sigmoid_1:y:0'sequential_3_lstm_7_while_placeholder_3*
T0*'
_output_shapes
:          2,
*sequential_3/lstm_7/while/lstm_cell_13/mul╦
+sequential_3/lstm_7/while/lstm_cell_13/ReluRelu5sequential_3/lstm_7/while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:          2-
+sequential_3/lstm_7/while/lstm_cell_13/ReluД
,sequential_3/lstm_7/while/lstm_cell_13/mul_1Mul2sequential_3/lstm_7/while/lstm_cell_13/Sigmoid:y:09sequential_3/lstm_7/while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:          2.
,sequential_3/lstm_7/while/lstm_cell_13/mul_1∙
,sequential_3/lstm_7/while/lstm_cell_13/add_1AddV2.sequential_3/lstm_7/while/lstm_cell_13/mul:z:00sequential_3/lstm_7/while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:          2.
,sequential_3/lstm_7/while/lstm_cell_13/add_1╪
0sequential_3/lstm_7/while/lstm_cell_13/Sigmoid_2Sigmoid5sequential_3/lstm_7/while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:          22
0sequential_3/lstm_7/while/lstm_cell_13/Sigmoid_2╩
-sequential_3/lstm_7/while/lstm_cell_13/Relu_1Relu0sequential_3/lstm_7/while/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:          2/
-sequential_3/lstm_7/while/lstm_cell_13/Relu_1И
,sequential_3/lstm_7/while/lstm_cell_13/mul_2Mul4sequential_3/lstm_7/while/lstm_cell_13/Sigmoid_2:y:0;sequential_3/lstm_7/while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:          2.
,sequential_3/lstm_7/while/lstm_cell_13/mul_2─
>sequential_3/lstm_7/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_3_lstm_7_while_placeholder_1%sequential_3_lstm_7_while_placeholder0sequential_3/lstm_7/while/lstm_cell_13/mul_2:z:0*
_output_shapes
: *
element_dtype02@
>sequential_3/lstm_7/while/TensorArrayV2Write/TensorListSetItemД
sequential_3/lstm_7/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_3/lstm_7/while/add/y╣
sequential_3/lstm_7/while/addAddV2%sequential_3_lstm_7_while_placeholder(sequential_3/lstm_7/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_3/lstm_7/while/addИ
!sequential_3/lstm_7/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_3/lstm_7/while/add_1/y┌
sequential_3/lstm_7/while/add_1AddV2@sequential_3_lstm_7_while_sequential_3_lstm_7_while_loop_counter*sequential_3/lstm_7/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
sequential_3/lstm_7/while/add_1╗
"sequential_3/lstm_7/while/IdentityIdentity#sequential_3/lstm_7/while/add_1:z:0^sequential_3/lstm_7/while/NoOp*
T0*
_output_shapes
: 2$
"sequential_3/lstm_7/while/Identityт
$sequential_3/lstm_7/while/Identity_1IdentityFsequential_3_lstm_7_while_sequential_3_lstm_7_while_maximum_iterations^sequential_3/lstm_7/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_3/lstm_7/while/Identity_1╜
$sequential_3/lstm_7/while/Identity_2Identity!sequential_3/lstm_7/while/add:z:0^sequential_3/lstm_7/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_3/lstm_7/while/Identity_2ъ
$sequential_3/lstm_7/while/Identity_3IdentityNsequential_3/lstm_7/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_3/lstm_7/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_3/lstm_7/while/Identity_3▌
$sequential_3/lstm_7/while/Identity_4Identity0sequential_3/lstm_7/while/lstm_cell_13/mul_2:z:0^sequential_3/lstm_7/while/NoOp*
T0*'
_output_shapes
:          2&
$sequential_3/lstm_7/while/Identity_4▌
$sequential_3/lstm_7/while/Identity_5Identity0sequential_3/lstm_7/while/lstm_cell_13/add_1:z:0^sequential_3/lstm_7/while/NoOp*
T0*'
_output_shapes
:          2&
$sequential_3/lstm_7/while/Identity_5┬
sequential_3/lstm_7/while/NoOpNoOp>^sequential_3/lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOp=^sequential_3/lstm_7/while/lstm_cell_13/MatMul/ReadVariableOp?^sequential_3/lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2 
sequential_3/lstm_7/while/NoOp"Q
"sequential_3_lstm_7_while_identity+sequential_3/lstm_7/while/Identity:output:0"U
$sequential_3_lstm_7_while_identity_1-sequential_3/lstm_7/while/Identity_1:output:0"U
$sequential_3_lstm_7_while_identity_2-sequential_3/lstm_7/while/Identity_2:output:0"U
$sequential_3_lstm_7_while_identity_3-sequential_3/lstm_7/while/Identity_3:output:0"U
$sequential_3_lstm_7_while_identity_4-sequential_3/lstm_7/while/Identity_4:output:0"U
$sequential_3_lstm_7_while_identity_5-sequential_3/lstm_7/while/Identity_5:output:0"Т
Fsequential_3_lstm_7_while_lstm_cell_13_biasadd_readvariableop_resourceHsequential_3_lstm_7_while_lstm_cell_13_biasadd_readvariableop_resource_0"Ф
Gsequential_3_lstm_7_while_lstm_cell_13_matmul_1_readvariableop_resourceIsequential_3_lstm_7_while_lstm_cell_13_matmul_1_readvariableop_resource_0"Р
Esequential_3_lstm_7_while_lstm_cell_13_matmul_readvariableop_resourceGsequential_3_lstm_7_while_lstm_cell_13_matmul_readvariableop_resource_0"А
=sequential_3_lstm_7_while_sequential_3_lstm_7_strided_slice_1?sequential_3_lstm_7_while_sequential_3_lstm_7_strided_slice_1_0"°
ysequential_3_lstm_7_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_7_tensorarrayunstack_tensorlistfromtensor{sequential_3_lstm_7_while_tensorarrayv2read_tensorlistgetitem_sequential_3_lstm_7_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :          :          : : : : : 2~
=sequential_3/lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOp=sequential_3/lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOp2|
<sequential_3/lstm_7/while/lstm_cell_13/MatMul/ReadVariableOp<sequential_3/lstm_7/while/lstm_cell_13/MatMul/ReadVariableOp2А
>sequential_3/lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOp>sequential_3/lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOp: 
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
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
щ	
├
$__inference_signature_wrapper_145677
lstm_6_input
unknown:	А
	unknown_0:	@А
	unknown_1:	А
	unknown_2:	@А
	unknown_3:	 А
	unknown_4:	А
	unknown_5: 
	unknown_6:
identityИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCalllstm_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_1435082
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:         
&
_user_specified_namelstm_6_input"иL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╕
serving_defaultд
I
lstm_6_input9
serving_default_lstm_6_input:0         ;
dense_30
StatefulPartitionedCall:0         tensorflow/serving/predict:Дж
ш
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
├
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
├
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
е
trainable_variables
regularization_losses
	variables
	keras_api
w__call__
*x&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

kernel
bias
trainable_variables
regularization_losses
	variables
 	keras_api
y__call__
*z&call_and_return_all_conditional_losses"
_tf_keras_layer
у
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
╩
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
с
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
╣
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
с
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
╣
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
н
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
 : 2dense_3/kernel
:2dense_3/bias
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
н
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
-:+	А2lstm_6/lstm_cell_12/kernel
7:5	@А2$lstm_6/lstm_cell_12/recurrent_kernel
':%А2lstm_6/lstm_cell_12/bias
-:+	@А2lstm_7/lstm_cell_13/kernel
7:5	 А2$lstm_7/lstm_cell_13/recurrent_kernel
':%А2lstm_7/lstm_cell_13/bias
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
н
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
н
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
%:# 2Adam/dense_3/kernel/m
:2Adam/dense_3/bias/m
2:0	А2!Adam/lstm_6/lstm_cell_12/kernel/m
<::	@А2+Adam/lstm_6/lstm_cell_12/recurrent_kernel/m
,:*А2Adam/lstm_6/lstm_cell_12/bias/m
2:0	@А2!Adam/lstm_7/lstm_cell_13/kernel/m
<::	 А2+Adam/lstm_7/lstm_cell_13/recurrent_kernel/m
,:*А2Adam/lstm_7/lstm_cell_13/bias/m
%:# 2Adam/dense_3/kernel/v
:2Adam/dense_3/bias/v
2:0	А2!Adam/lstm_6/lstm_cell_12/kernel/v
<::	@А2+Adam/lstm_6/lstm_cell_12/recurrent_kernel/v
,:*А2Adam/lstm_6/lstm_cell_12/bias/v
2:0	@А2!Adam/lstm_7/lstm_cell_13/kernel/v
<::	 А2+Adam/lstm_7/lstm_cell_13/recurrent_kernel/v
,:*А2Adam/lstm_7/lstm_cell_13/bias/v
╤B╬
!__inference__wrapped_model_143508lstm_6_input"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
В2 
-__inference_sequential_3_layer_call_fn_145134
-__inference_sequential_3_layer_call_fn_145698
-__inference_sequential_3_layer_call_fn_145719
-__inference_sequential_3_layer_call_fn_145600└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ю2ы
H__inference_sequential_3_layer_call_and_return_conditional_losses_146024
H__inference_sequential_3_layer_call_and_return_conditional_losses_146336
H__inference_sequential_3_layer_call_and_return_conditional_losses_145624
H__inference_sequential_3_layer_call_and_return_conditional_losses_145648└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
 2№
'__inference_lstm_6_layer_call_fn_146347
'__inference_lstm_6_layer_call_fn_146358
'__inference_lstm_6_layer_call_fn_146369
'__inference_lstm_6_layer_call_fn_146380╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ы2ш
B__inference_lstm_6_layer_call_and_return_conditional_losses_146531
B__inference_lstm_6_layer_call_and_return_conditional_losses_146682
B__inference_lstm_6_layer_call_and_return_conditional_losses_146833
B__inference_lstm_6_layer_call_and_return_conditional_losses_146984╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
 2№
'__inference_lstm_7_layer_call_fn_146995
'__inference_lstm_7_layer_call_fn_147006
'__inference_lstm_7_layer_call_fn_147017
'__inference_lstm_7_layer_call_fn_147028╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ы2ш
B__inference_lstm_7_layer_call_and_return_conditional_losses_147179
B__inference_lstm_7_layer_call_and_return_conditional_losses_147330
B__inference_lstm_7_layer_call_and_return_conditional_losses_147481
B__inference_lstm_7_layer_call_and_return_conditional_losses_147632╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Т2П
*__inference_dropout_3_layer_call_fn_147637
*__inference_dropout_3_layer_call_fn_147642┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╚2┼
E__inference_dropout_3_layer_call_and_return_conditional_losses_147647
E__inference_dropout_3_layer_call_and_return_conditional_losses_147659┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╥2╧
(__inference_dense_3_layer_call_fn_147668в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
э2ъ
C__inference_dense_3_layer_call_and_return_conditional_losses_147678в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╨B═
$__inference_signature_wrapper_145677lstm_6_input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
в2Я
-__inference_lstm_cell_12_layer_call_fn_147695
-__inference_lstm_cell_12_layer_call_fn_147712╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╪2╒
H__inference_lstm_cell_12_layer_call_and_return_conditional_losses_147744
H__inference_lstm_cell_12_layer_call_and_return_conditional_losses_147776╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
в2Я
-__inference_lstm_cell_13_layer_call_fn_147793
-__inference_lstm_cell_13_layer_call_fn_147810╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╪2╒
H__inference_lstm_cell_13_layer_call_and_return_conditional_losses_147842
H__inference_lstm_cell_13_layer_call_and_return_conditional_losses_147874╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 Э
!__inference__wrapped_model_143508x&'()*+9в6
/в,
*К'
lstm_6_input         
к "1к.
,
dense_3!К
dense_3         г
C__inference_dense_3_layer_call_and_return_conditional_losses_147678\/в,
%в"
 К
inputs          
к "%в"
К
0         
Ъ {
(__inference_dense_3_layer_call_fn_147668O/в,
%в"
 К
inputs          
к "К         е
E__inference_dropout_3_layer_call_and_return_conditional_losses_147647\3в0
)в&
 К
inputs          
p 
к "%в"
К
0          
Ъ е
E__inference_dropout_3_layer_call_and_return_conditional_losses_147659\3в0
)в&
 К
inputs          
p
к "%в"
К
0          
Ъ }
*__inference_dropout_3_layer_call_fn_147637O3в0
)в&
 К
inputs          
p 
к "К          }
*__inference_dropout_3_layer_call_fn_147642O3в0
)в&
 К
inputs          
p
к "К          ╤
B__inference_lstm_6_layer_call_and_return_conditional_losses_146531К&'(OвL
EвB
4Ъ1
/К,
inputs/0                  

 
p 

 
к "2в/
(К%
0                  @
Ъ ╤
B__inference_lstm_6_layer_call_and_return_conditional_losses_146682К&'(OвL
EвB
4Ъ1
/К,
inputs/0                  

 
p

 
к "2в/
(К%
0                  @
Ъ ╖
B__inference_lstm_6_layer_call_and_return_conditional_losses_146833q&'(?в<
5в2
$К!
inputs         

 
p 

 
к ")в&
К
0         @
Ъ ╖
B__inference_lstm_6_layer_call_and_return_conditional_losses_146984q&'(?в<
5в2
$К!
inputs         

 
p

 
к ")в&
К
0         @
Ъ и
'__inference_lstm_6_layer_call_fn_146347}&'(OвL
EвB
4Ъ1
/К,
inputs/0                  

 
p 

 
к "%К"                  @и
'__inference_lstm_6_layer_call_fn_146358}&'(OвL
EвB
4Ъ1
/К,
inputs/0                  

 
p

 
к "%К"                  @П
'__inference_lstm_6_layer_call_fn_146369d&'(?в<
5в2
$К!
inputs         

 
p 

 
к "К         @П
'__inference_lstm_6_layer_call_fn_146380d&'(?в<
5в2
$К!
inputs         

 
p

 
к "К         @├
B__inference_lstm_7_layer_call_and_return_conditional_losses_147179})*+OвL
EвB
4Ъ1
/К,
inputs/0                  @

 
p 

 
к "%в"
К
0          
Ъ ├
B__inference_lstm_7_layer_call_and_return_conditional_losses_147330})*+OвL
EвB
4Ъ1
/К,
inputs/0                  @

 
p

 
к "%в"
К
0          
Ъ │
B__inference_lstm_7_layer_call_and_return_conditional_losses_147481m)*+?в<
5в2
$К!
inputs         @

 
p 

 
к "%в"
К
0          
Ъ │
B__inference_lstm_7_layer_call_and_return_conditional_losses_147632m)*+?в<
5в2
$К!
inputs         @

 
p

 
к "%в"
К
0          
Ъ Ы
'__inference_lstm_7_layer_call_fn_146995p)*+OвL
EвB
4Ъ1
/К,
inputs/0                  @

 
p 

 
к "К          Ы
'__inference_lstm_7_layer_call_fn_147006p)*+OвL
EвB
4Ъ1
/К,
inputs/0                  @

 
p

 
к "К          Л
'__inference_lstm_7_layer_call_fn_147017`)*+?в<
5в2
$К!
inputs         @

 
p 

 
к "К          Л
'__inference_lstm_7_layer_call_fn_147028`)*+?в<
5в2
$К!
inputs         @

 
p

 
к "К          ╩
H__inference_lstm_cell_12_layer_call_and_return_conditional_losses_147744¤&'(Ав}
vвs
 К
inputs         
KвH
"К
states/0         @
"К
states/1         @
p 
к "sвp
iвf
К
0/0         @
EЪB
К
0/1/0         @
К
0/1/1         @
Ъ ╩
H__inference_lstm_cell_12_layer_call_and_return_conditional_losses_147776¤&'(Ав}
vвs
 К
inputs         
KвH
"К
states/0         @
"К
states/1         @
p
к "sвp
iвf
К
0/0         @
EЪB
К
0/1/0         @
К
0/1/1         @
Ъ Я
-__inference_lstm_cell_12_layer_call_fn_147695э&'(Ав}
vвs
 К
inputs         
KвH
"К
states/0         @
"К
states/1         @
p 
к "cв`
К
0         @
AЪ>
К
1/0         @
К
1/1         @Я
-__inference_lstm_cell_12_layer_call_fn_147712э&'(Ав}
vвs
 К
inputs         
KвH
"К
states/0         @
"К
states/1         @
p
к "cв`
К
0         @
AЪ>
К
1/0         @
К
1/1         @╩
H__inference_lstm_cell_13_layer_call_and_return_conditional_losses_147842¤)*+Ав}
vвs
 К
inputs         @
KвH
"К
states/0          
"К
states/1          
p 
к "sвp
iвf
К
0/0          
EЪB
К
0/1/0          
К
0/1/1          
Ъ ╩
H__inference_lstm_cell_13_layer_call_and_return_conditional_losses_147874¤)*+Ав}
vвs
 К
inputs         @
KвH
"К
states/0          
"К
states/1          
p
к "sвp
iвf
К
0/0          
EЪB
К
0/1/0          
К
0/1/1          
Ъ Я
-__inference_lstm_cell_13_layer_call_fn_147793э)*+Ав}
vвs
 К
inputs         @
KвH
"К
states/0          
"К
states/1          
p 
к "cв`
К
0          
AЪ>
К
1/0          
К
1/1          Я
-__inference_lstm_cell_13_layer_call_fn_147810э)*+Ав}
vвs
 К
inputs         @
KвH
"К
states/0          
"К
states/1          
p
к "cв`
К
0          
AЪ>
К
1/0          
К
1/1          └
H__inference_sequential_3_layer_call_and_return_conditional_losses_145624t&'()*+Aв>
7в4
*К'
lstm_6_input         
p 

 
к "%в"
К
0         
Ъ └
H__inference_sequential_3_layer_call_and_return_conditional_losses_145648t&'()*+Aв>
7в4
*К'
lstm_6_input         
p

 
к "%в"
К
0         
Ъ ║
H__inference_sequential_3_layer_call_and_return_conditional_losses_146024n&'()*+;в8
1в.
$К!
inputs         
p 

 
к "%в"
К
0         
Ъ ║
H__inference_sequential_3_layer_call_and_return_conditional_losses_146336n&'()*+;в8
1в.
$К!
inputs         
p

 
к "%в"
К
0         
Ъ Ш
-__inference_sequential_3_layer_call_fn_145134g&'()*+Aв>
7в4
*К'
lstm_6_input         
p 

 
к "К         Ш
-__inference_sequential_3_layer_call_fn_145600g&'()*+Aв>
7в4
*К'
lstm_6_input         
p

 
к "К         Т
-__inference_sequential_3_layer_call_fn_145698a&'()*+;в8
1в.
$К!
inputs         
p 

 
к "К         Т
-__inference_sequential_3_layer_call_fn_145719a&'()*+;в8
1в.
$К!
inputs         
p

 
к "К         ▒
$__inference_signature_wrapper_145677И&'()*+IвF
в 
?к<
:
lstm_6_input*К'
lstm_6_input         "1к.
,
dense_3!К
dense_3         