��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
�
ArgMax

input"T
	dimension"Tidx
output"output_type"!
Ttype:
2	
"
Tidxtype0:
2	"!
output_typetype0	:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
A
BroadcastArgs
s0"T
s1"T
r0"T"
Ttype0:
2	
Z
BroadcastTo

input"T
shape"Tidx
output"T"	
Ttype"
Tidxtype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
0
Neg
x"T
y"T"
Ttype:
2
	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
�
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
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
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
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
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
-
Tanh
x"T
y"T"
Ttype:

2
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.9.12v2.9.0-18-gd8ce9f9c3018�
�
ValueNetwork/dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameValueNetwork/dense_4/bias
�
-ValueNetwork/dense_4/bias/Read/ReadVariableOpReadVariableOpValueNetwork/dense_4/bias*
_output_shapes
:*
dtype0
�
ValueNetwork/dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*,
shared_nameValueNetwork/dense_4/kernel
�
/ValueNetwork/dense_4/kernel/Read/ReadVariableOpReadVariableOpValueNetwork/dense_4/kernel*
_output_shapes

:*
dtype0
�
)ValueNetwork/EncodingNetwork/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*:
shared_name+)ValueNetwork/EncodingNetwork/dense_3/bias
�
=ValueNetwork/EncodingNetwork/dense_3/bias/Read/ReadVariableOpReadVariableOp)ValueNetwork/EncodingNetwork/dense_3/bias*
_output_shapes
:*
dtype0
�
+ValueNetwork/EncodingNetwork/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*<
shared_name-+ValueNetwork/EncodingNetwork/dense_3/kernel
�
?ValueNetwork/EncodingNetwork/dense_3/kernel/Read/ReadVariableOpReadVariableOp+ValueNetwork/EncodingNetwork/dense_3/kernel*
_output_shapes

:*
dtype0
�
)ValueNetwork/EncodingNetwork/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*:
shared_name+)ValueNetwork/EncodingNetwork/dense_2/bias
�
=ValueNetwork/EncodingNetwork/dense_2/bias/Read/ReadVariableOpReadVariableOp)ValueNetwork/EncodingNetwork/dense_2/bias*
_output_shapes
:*
dtype0
�
+ValueNetwork/EncodingNetwork/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	*<
shared_name-+ValueNetwork/EncodingNetwork/dense_2/kernel
�
?ValueNetwork/EncodingNetwork/dense_2/kernel/Read/ReadVariableOpReadVariableOp+ValueNetwork/EncodingNetwork/dense_2/kernel*
_output_shapes

:	*
dtype0
l

m2_carry_0VarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_name
m2_carry_0
e
m2_carry_0/Read/ReadVariableOpReadVariableOp
m2_carry_0*
_output_shapes
:	*
dtype0
`
m2_0VarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_namem2_0
Y
m2_0/Read/ReadVariableOpReadVariableOpm2_0*
_output_shapes
:	*
dtype0
f
count_0VarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_name	count_0
_
count_0/Read/ReadVariableOpReadVariableOpcount_0*
_output_shapes
:	*
dtype0
b
avg_0VarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_nameavg_0
[
avg_0/Read/ReadVariableOpReadVariableOpavg_0*
_output_shapes
:	*
dtype0
�
AActorDistributionNetwork/CategoricalProjectionNetwork/logits/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*R
shared_nameCAActorDistributionNetwork/CategoricalProjectionNetwork/logits/bias
�
UActorDistributionNetwork/CategoricalProjectionNetwork/logits/bias/Read/ReadVariableOpReadVariableOpAActorDistributionNetwork/CategoricalProjectionNetwork/logits/bias*
_output_shapes	
:�*
dtype0
�
CActorDistributionNetwork/CategoricalProjectionNetwork/logits/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*T
shared_nameECActorDistributionNetwork/CategoricalProjectionNetwork/logits/kernel
�
WActorDistributionNetwork/CategoricalProjectionNetwork/logits/kernel/Read/ReadVariableOpReadVariableOpCActorDistributionNetwork/CategoricalProjectionNetwork/logits/kernel*
_output_shapes
:	�*
dtype0
�
5ActorDistributionNetwork/EncodingNetwork/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*F
shared_name75ActorDistributionNetwork/EncodingNetwork/dense_1/bias
�
IActorDistributionNetwork/EncodingNetwork/dense_1/bias/Read/ReadVariableOpReadVariableOp5ActorDistributionNetwork/EncodingNetwork/dense_1/bias*
_output_shapes
:*
dtype0
�
7ActorDistributionNetwork/EncodingNetwork/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*H
shared_name97ActorDistributionNetwork/EncodingNetwork/dense_1/kernel
�
KActorDistributionNetwork/EncodingNetwork/dense_1/kernel/Read/ReadVariableOpReadVariableOp7ActorDistributionNetwork/EncodingNetwork/dense_1/kernel*
_output_shapes

:*
dtype0
�
3ActorDistributionNetwork/EncodingNetwork/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*D
shared_name53ActorDistributionNetwork/EncodingNetwork/dense/bias
�
GActorDistributionNetwork/EncodingNetwork/dense/bias/Read/ReadVariableOpReadVariableOp3ActorDistributionNetwork/EncodingNetwork/dense/bias*
_output_shapes
:*
dtype0
�
5ActorDistributionNetwork/EncodingNetwork/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	*F
shared_name75ActorDistributionNetwork/EncodingNetwork/dense/kernel
�
IActorDistributionNetwork/EncodingNetwork/dense/kernel/Read/ReadVariableOpReadVariableOp5ActorDistributionNetwork/EncodingNetwork/dense/kernel*
_output_shapes

:	*
dtype0
d
VariableVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
Variable
]
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
: *
dtype0	

NoOpNoOp
�L
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�K
value�KB�K B�K
�

train_step
metadata
model_variables
_all_assets

action
distribution
get_initial_state
get_metadata
	get_train_step


signatures*
GA
VARIABLE_VALUEVariable%train_step/.ATTRIBUTES/VARIABLE_VALUE*
* 
z
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
13
14
15*

_wrapped_policy*

trace_0
trace_1* 

trace_0* 

trace_0* 
* 
* 
K

 action
!get_initial_state
"get_train_step
#get_metadata* 
{u
VARIABLE_VALUE5ActorDistributionNetwork/EncodingNetwork/dense/kernel,model_variables/0/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE3ActorDistributionNetwork/EncodingNetwork/dense/bias,model_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE7ActorDistributionNetwork/EncodingNetwork/dense_1/kernel,model_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUE5ActorDistributionNetwork/EncodingNetwork/dense_1/bias,model_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUECActorDistributionNetwork/CategoricalProjectionNetwork/logits/kernel,model_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAActorDistributionNetwork/CategoricalProjectionNetwork/logits/bias,model_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEavg_0,model_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEcount_0,model_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUEm2_0,model_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUE
m2_carry_0,model_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE+ValueNetwork/EncodingNetwork/dense_2/kernel-model_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE)ValueNetwork/EncodingNetwork/dense_2/bias-model_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE+ValueNetwork/EncodingNetwork/dense_3/kernel-model_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE)ValueNetwork/EncodingNetwork/dense_3/bias-model_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEValueNetwork/dense_4/kernel-model_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEValueNetwork/dense_4/bias-model_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
I
$_actor_network
%_observation_normalizer
&_value_network*
* 
* 
* 
* 
* 
* 
* 
* 
�
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses
-_encoder
._projection_networks*
K
/_flat_variable_spec

0_count
1_avg
2_m2
3	_m2_carry*
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses
:_encoder
;_postprocessing_layers*
.
0
1
2
3
4
5*
.
0
1
2
3
4
5*
* 
�
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*
* 
* 
�
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses
G_postprocessing_layers*
�
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses
N_projection_layer*
* 

0*

0*

0*

0*
.
0
1
2
3
4
5*
.
0
1
2
3
4
5*
* 
�
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses*
* 
* 
�
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses
Z_postprocessing_layers*
�
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses

kernel
bias*
* 

-0
.1*
* 
* 
* 
 
0
1
2
3*
 
0
1
2
3*
* 
�
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses*
* 
* 

f0
g1
h2*

0
1*

0
1*
* 
�
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses*
* 
* 
�
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses

kernel
bias*
* 

:0
;1*
* 
* 
* 
 
0
1
2
3*
 
0
1
2
3*
* 
�
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses*
* 
* 

y0
z1
{2*

0
1*

0
1*
* 
�
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
�layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses*
* 
* 
* 

f0
g1
h2*
* 
* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias*
* 

N0*
* 
* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses*
* 
* 
* 

y0
z1
{2*
* 
* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias*
* 
* 
* 
* 
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
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
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
l
action_0_discountPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
w
action_0_observationPlaceholder*'
_output_shapes
:���������	*
dtype0*
shape:���������	
j
action_0_rewardPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
m
action_0_step_typePlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallaction_0_discountaction_0_observationaction_0_rewardaction_0_step_typem2_0count_0avg_05ActorDistributionNetwork/EncodingNetwork/dense/kernel3ActorDistributionNetwork/EncodingNetwork/dense/bias7ActorDistributionNetwork/EncodingNetwork/dense_1/kernel5ActorDistributionNetwork/EncodingNetwork/dense_1/biasCActorDistributionNetwork/CategoricalProjectionNetwork/logits/kernelAActorDistributionNetwork/CategoricalProjectionNetwork/logits/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������*+
_read_only_resource_inputs
		
*2
config_proto" 

CPU

GPU2 *0J 8� *.
f)R'
%__inference_signature_wrapper_1113756
]
get_initial_state_batch_sizePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
PartitionedCallPartitionedCallget_initial_state_batch_size*
Tin
2*

Tout
 *
_collective_manager_ids
 * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *.
f)R'
%__inference_signature_wrapper_1113768
�
PartitionedCall_1PartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *.
f)R'
%__inference_signature_wrapper_1113790
�
StatefulPartitionedCall_1StatefulPartitionedCallVariable*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *.
f)R'
%__inference_signature_wrapper_1113783
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable/Read/ReadVariableOpIActorDistributionNetwork/EncodingNetwork/dense/kernel/Read/ReadVariableOpGActorDistributionNetwork/EncodingNetwork/dense/bias/Read/ReadVariableOpKActorDistributionNetwork/EncodingNetwork/dense_1/kernel/Read/ReadVariableOpIActorDistributionNetwork/EncodingNetwork/dense_1/bias/Read/ReadVariableOpWActorDistributionNetwork/CategoricalProjectionNetwork/logits/kernel/Read/ReadVariableOpUActorDistributionNetwork/CategoricalProjectionNetwork/logits/bias/Read/ReadVariableOpavg_0/Read/ReadVariableOpcount_0/Read/ReadVariableOpm2_0/Read/ReadVariableOpm2_carry_0/Read/ReadVariableOp?ValueNetwork/EncodingNetwork/dense_2/kernel/Read/ReadVariableOp=ValueNetwork/EncodingNetwork/dense_2/bias/Read/ReadVariableOp?ValueNetwork/EncodingNetwork/dense_3/kernel/Read/ReadVariableOp=ValueNetwork/EncodingNetwork/dense_3/bias/Read/ReadVariableOp/ValueNetwork/dense_4/kernel/Read/ReadVariableOp-ValueNetwork/dense_4/bias/Read/ReadVariableOpConst*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *)
f$R"
 __inference__traced_save_1114090
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameVariable5ActorDistributionNetwork/EncodingNetwork/dense/kernel3ActorDistributionNetwork/EncodingNetwork/dense/bias7ActorDistributionNetwork/EncodingNetwork/dense_1/kernel5ActorDistributionNetwork/EncodingNetwork/dense_1/biasCActorDistributionNetwork/CategoricalProjectionNetwork/logits/kernelAActorDistributionNetwork/CategoricalProjectionNetwork/logits/biasavg_0count_0m2_0
m2_carry_0+ValueNetwork/EncodingNetwork/dense_2/kernel)ValueNetwork/EncodingNetwork/dense_2/bias+ValueNetwork/EncodingNetwork/dense_3/kernel)ValueNetwork/EncodingNetwork/dense_3/biasValueNetwork/dense_4/kernelValueNetwork/dense_4/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *,
f'R%
#__inference__traced_restore_1114151��
�
7
%__inference_signature_wrapper_1113768

batch_size�
PartitionedCallPartitionedCall
batch_size*
Tin
2*

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *4
f/R-
+__inference_function_with_signature_1113763*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
�
=
+__inference_function_with_signature_1113763

batch_size�
PartitionedCallPartitionedCall
batch_size*
Tin
2*

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *.
f)R'
%__inference_get_initial_state_1113762*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
�
'
%__inference_signature_wrapper_1113790�
PartitionedCallPartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *4
f/R-
+__inference_function_with_signature_1113786*(
_construction_contextkEagerRuntime*
_input_shapes 
�~
�
)__inference_polymorphic_action_fn_1113871
	step_type

reward
discount
observationF
8normalize_observations_normalize_readvariableop_resource:	N
@normalize_observations_normalize_truediv_readvariableop_resource:	X
Jnormalize_observations_normalize_normalized_tensor_readvariableop_resource:	_
Mactordistributionnetwork_encodingnetwork_dense_matmul_readvariableop_resource:	\
Nactordistributionnetwork_encodingnetwork_dense_biasadd_readvariableop_resource:a
Oactordistributionnetwork_encodingnetwork_dense_1_matmul_readvariableop_resource:^
Pactordistributionnetwork_encodingnetwork_dense_1_biasadd_readvariableop_resource:n
[actordistributionnetwork_categoricalprojectionnetwork_logits_matmul_readvariableop_resource:	�k
\actordistributionnetwork_categoricalprojectionnetwork_logits_biasadd_readvariableop_resource:	�
identity��SActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp�RActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp�EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp�DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp�GActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp�FActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp�/normalize_observations/normalize/ReadVariableOp�Anormalize_observations/normalize/normalized_tensor/ReadVariableOp�7normalize_observations/normalize/truediv/ReadVariableOp�
/normalize_observations/normalize/ReadVariableOpReadVariableOp8normalize_observations_normalize_readvariableop_resource*
_output_shapes
:	*
dtype0�
7normalize_observations/normalize/truediv/ReadVariableOpReadVariableOp@normalize_observations_normalize_truediv_readvariableop_resource*
_output_shapes
:	*
dtype0�
(normalize_observations/normalize/truedivRealDiv7normalize_observations/normalize/ReadVariableOp:value:0?normalize_observations/normalize/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
:	}
8normalize_observations/normalize/normalized_tensor/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
6normalize_observations/normalize/normalized_tensor/addAddV2,normalize_observations/normalize/truediv:z:0Anormalize_observations/normalize/normalized_tensor/add/y:output:0*
T0*
_output_shapes
:	�
8normalize_observations/normalize/normalized_tensor/RsqrtRsqrt:normalize_observations/normalize/normalized_tensor/add:z:0*
T0*
_output_shapes
:	�
6normalize_observations/normalize/normalized_tensor/mulMulobservation<normalize_observations/normalize/normalized_tensor/Rsqrt:y:0*
T0*'
_output_shapes
:���������	�
Anormalize_observations/normalize/normalized_tensor/ReadVariableOpReadVariableOpJnormalize_observations_normalize_normalized_tensor_readvariableop_resource*
_output_shapes
:	*
dtype0�
6normalize_observations/normalize/normalized_tensor/NegNegInormalize_observations/normalize/normalized_tensor/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
8normalize_observations/normalize/normalized_tensor/mul_1Mul:normalize_observations/normalize/normalized_tensor/Neg:y:0<normalize_observations/normalize/normalized_tensor/Rsqrt:y:0*
T0*
_output_shapes
:	�
8normalize_observations/normalize/normalized_tensor/add_1AddV2:normalize_observations/normalize/normalized_tensor/mul:z:0<normalize_observations/normalize/normalized_tensor/mul_1:z:0*
T0*'
_output_shapes
:���������	�
Dnormalize_observations/normalize/clipped_normalized_tensor/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �@�
Bnormalize_observations/normalize/clipped_normalized_tensor/MinimumMinimum<normalize_observations/normalize/normalized_tensor/add_1:z:0Mnormalize_observations/normalize/clipped_normalized_tensor/Minimum/y:output:0*
T0*'
_output_shapes
:���������	�
<normalize_observations/normalize/clipped_normalized_tensor/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ���
:normalize_observations/normalize/clipped_normalized_tensorMaximumFnormalize_observations/normalize/clipped_normalized_tensor/Minimum:z:0Enormalize_observations/normalize/clipped_normalized_tensor/y:output:0*
T0*'
_output_shapes
:���������	�
6ActorDistributionNetwork/EncodingNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����	   �
8ActorDistributionNetwork/EncodingNetwork/flatten/ReshapeReshape>normalize_observations/normalize/clipped_normalized_tensor:z:0?ActorDistributionNetwork/EncodingNetwork/flatten/Const:output:0*
T0*'
_output_shapes
:���������	�
DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpReadVariableOpMactordistributionnetwork_encodingnetwork_dense_matmul_readvariableop_resource*
_output_shapes

:	*
dtype0�
5ActorDistributionNetwork/EncodingNetwork/dense/MatMulMatMulAActorDistributionNetwork/EncodingNetwork/flatten/Reshape:output:0LActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpReadVariableOpNactordistributionnetwork_encodingnetwork_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
6ActorDistributionNetwork/EncodingNetwork/dense/BiasAddBiasAdd?ActorDistributionNetwork/EncodingNetwork/dense/MatMul:product:0MActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
3ActorDistributionNetwork/EncodingNetwork/dense/TanhTanh?ActorDistributionNetwork/EncodingNetwork/dense/BiasAdd:output:0*
T0*'
_output_shapes
:����������
FActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpReadVariableOpOactordistributionnetwork_encodingnetwork_dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
7ActorDistributionNetwork/EncodingNetwork/dense_1/MatMulMatMul7ActorDistributionNetwork/EncodingNetwork/dense/Tanh:y:0NActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
GActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpReadVariableOpPactordistributionnetwork_encodingnetwork_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
8ActorDistributionNetwork/EncodingNetwork/dense_1/BiasAddBiasAddAActorDistributionNetwork/EncodingNetwork/dense_1/MatMul:product:0OActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
5ActorDistributionNetwork/EncodingNetwork/dense_1/TanhTanhAActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:����������
RActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOpReadVariableOp[actordistributionnetwork_categoricalprojectionnetwork_logits_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
CActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMulMatMul9ActorDistributionNetwork/EncodingNetwork/dense_1/Tanh:y:0ZActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
SActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpReadVariableOp\actordistributionnetwork_categoricalprojectionnetwork_logits_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
DActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAddBiasAddMActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul:product:0[ActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
CActorDistributionNetwork/CategoricalProjectionNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����  �
=ActorDistributionNetwork/CategoricalProjectionNetwork/ReshapeReshapeMActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd:output:0LActorDistributionNetwork/CategoricalProjectionNetwork/Reshape/shape:output:0*
T0*(
_output_shapes
:�����������
fCategorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
����������
\Categorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/ArgMaxArgMaxFActorDistributionNetwork/CategoricalProjectionNetwork/Reshape:output:0oCategorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/ArgMax/dimension:output:0*
T0*#
_output_shapes
:����������
ZCategorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/CastCasteCategorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/ArgMax:output:0*

DstT0*

SrcT0	*#
_output_shapes
:���������T
Deterministic/atolConst*
_output_shapes
: *
dtype0*
value	B : T
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
value	B : d
!Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB �
Deterministic/sample/ShapeShape^Categorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/Cast:y:0*
T0*
_output_shapes
:\
Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : r
(Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"Deterministic/sample/strided_sliceStridedSlice#Deterministic/sample/Shape:output:01Deterministic/sample/strided_slice/stack:output:03Deterministic/sample/strided_slice/stack_1:output:03Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskh
%Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB j
'Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
"Deterministic/sample/BroadcastArgsBroadcastArgs0Deterministic/sample/BroadcastArgs/s0_1:output:0+Deterministic/sample/strided_slice:output:0*
_output_shapes
:n
$Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:g
$Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB b
 Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Deterministic/sample/concatConcatV2-Deterministic/sample/concat/values_0:output:0'Deterministic/sample/BroadcastArgs:r0:0-Deterministic/sample/concat/values_2:output:0)Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:�
 Deterministic/sample/BroadcastToBroadcastTo^Categorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/Cast:y:0$Deterministic/sample/concat:output:0*
T0*'
_output_shapes
:���������u
Deterministic/sample/Shape_1Shape)Deterministic/sample/BroadcastTo:output:0*
T0*
_output_shapes
:t
*Deterministic/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,Deterministic/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,Deterministic/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$Deterministic/sample/strided_slice_1StridedSlice%Deterministic/sample/Shape_1:output:03Deterministic/sample/strided_slice_1/stack:output:05Deterministic/sample/strided_slice_1/stack_1:output:05Deterministic/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskd
"Deterministic/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Deterministic/sample/concat_1ConcatV2*Deterministic/sample/sample_shape:output:0-Deterministic/sample/strided_slice_1:output:0+Deterministic/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Deterministic/sample/ReshapeReshape)Deterministic/sample/BroadcastTo:output:0&Deterministic/sample/concat_1:output:0*
T0*#
_output_shapes
:���������Z
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
value
B :��
clip_by_value/MinimumMinimum%Deterministic/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0*#
_output_shapes
:���������Q
clip_by_value/yConst*
_output_shapes
: *
dtype0*
value	B : {
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*#
_output_shapes
:���������\
IdentityIdentityclip_by_value:z:0^NoOp*
T0*#
_output_shapes
:����������
NoOpNoOpT^ActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpS^ActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOpF^ActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpE^ActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpH^ActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpG^ActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp0^normalize_observations/normalize/ReadVariableOpB^normalize_observations/normalize/normalized_tensor/ReadVariableOp8^normalize_observations/normalize/truediv/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:���������:���������:���������:���������	: : : : : : : : : 2�
SActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpSActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp2�
RActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOpRActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp2�
EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpEActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp2�
DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpDActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp2�
GActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpGActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp2�
FActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpFActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp2b
/normalize_observations/normalize/ReadVariableOp/normalize_observations/normalize/ReadVariableOp2�
Anormalize_observations/normalize/normalized_tensor/ReadVariableOpAnormalize_observations/normalize/normalized_tensor/ReadVariableOp2r
7normalize_observations/normalize/truediv/ReadVariableOp7normalize_observations/normalize/truediv/ReadVariableOp:N J
#
_output_shapes
:���������
#
_user_specified_name	step_type:KG
#
_output_shapes
:���������
 
_user_specified_namereward:MI
#
_output_shapes
:���������
"
_user_specified_name
discount:TP
'
_output_shapes
:���������	
%
_user_specified_nameobservation
�~
�
)__inference_polymorphic_action_fn_1113707
	time_step
time_step_1
time_step_2
time_step_3F
8normalize_observations_normalize_readvariableop_resource:	N
@normalize_observations_normalize_truediv_readvariableop_resource:	X
Jnormalize_observations_normalize_normalized_tensor_readvariableop_resource:	_
Mactordistributionnetwork_encodingnetwork_dense_matmul_readvariableop_resource:	\
Nactordistributionnetwork_encodingnetwork_dense_biasadd_readvariableop_resource:a
Oactordistributionnetwork_encodingnetwork_dense_1_matmul_readvariableop_resource:^
Pactordistributionnetwork_encodingnetwork_dense_1_biasadd_readvariableop_resource:n
[actordistributionnetwork_categoricalprojectionnetwork_logits_matmul_readvariableop_resource:	�k
\actordistributionnetwork_categoricalprojectionnetwork_logits_biasadd_readvariableop_resource:	�
identity��SActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp�RActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp�EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp�DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp�GActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp�FActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp�/normalize_observations/normalize/ReadVariableOp�Anormalize_observations/normalize/normalized_tensor/ReadVariableOp�7normalize_observations/normalize/truediv/ReadVariableOp�
/normalize_observations/normalize/ReadVariableOpReadVariableOp8normalize_observations_normalize_readvariableop_resource*
_output_shapes
:	*
dtype0�
7normalize_observations/normalize/truediv/ReadVariableOpReadVariableOp@normalize_observations_normalize_truediv_readvariableop_resource*
_output_shapes
:	*
dtype0�
(normalize_observations/normalize/truedivRealDiv7normalize_observations/normalize/ReadVariableOp:value:0?normalize_observations/normalize/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
:	}
8normalize_observations/normalize/normalized_tensor/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
6normalize_observations/normalize/normalized_tensor/addAddV2,normalize_observations/normalize/truediv:z:0Anormalize_observations/normalize/normalized_tensor/add/y:output:0*
T0*
_output_shapes
:	�
8normalize_observations/normalize/normalized_tensor/RsqrtRsqrt:normalize_observations/normalize/normalized_tensor/add:z:0*
T0*
_output_shapes
:	�
6normalize_observations/normalize/normalized_tensor/mulMultime_step_3<normalize_observations/normalize/normalized_tensor/Rsqrt:y:0*
T0*'
_output_shapes
:���������	�
Anormalize_observations/normalize/normalized_tensor/ReadVariableOpReadVariableOpJnormalize_observations_normalize_normalized_tensor_readvariableop_resource*
_output_shapes
:	*
dtype0�
6normalize_observations/normalize/normalized_tensor/NegNegInormalize_observations/normalize/normalized_tensor/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
8normalize_observations/normalize/normalized_tensor/mul_1Mul:normalize_observations/normalize/normalized_tensor/Neg:y:0<normalize_observations/normalize/normalized_tensor/Rsqrt:y:0*
T0*
_output_shapes
:	�
8normalize_observations/normalize/normalized_tensor/add_1AddV2:normalize_observations/normalize/normalized_tensor/mul:z:0<normalize_observations/normalize/normalized_tensor/mul_1:z:0*
T0*'
_output_shapes
:���������	�
Dnormalize_observations/normalize/clipped_normalized_tensor/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �@�
Bnormalize_observations/normalize/clipped_normalized_tensor/MinimumMinimum<normalize_observations/normalize/normalized_tensor/add_1:z:0Mnormalize_observations/normalize/clipped_normalized_tensor/Minimum/y:output:0*
T0*'
_output_shapes
:���������	�
<normalize_observations/normalize/clipped_normalized_tensor/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ���
:normalize_observations/normalize/clipped_normalized_tensorMaximumFnormalize_observations/normalize/clipped_normalized_tensor/Minimum:z:0Enormalize_observations/normalize/clipped_normalized_tensor/y:output:0*
T0*'
_output_shapes
:���������	�
6ActorDistributionNetwork/EncodingNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����	   �
8ActorDistributionNetwork/EncodingNetwork/flatten/ReshapeReshape>normalize_observations/normalize/clipped_normalized_tensor:z:0?ActorDistributionNetwork/EncodingNetwork/flatten/Const:output:0*
T0*'
_output_shapes
:���������	�
DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpReadVariableOpMactordistributionnetwork_encodingnetwork_dense_matmul_readvariableop_resource*
_output_shapes

:	*
dtype0�
5ActorDistributionNetwork/EncodingNetwork/dense/MatMulMatMulAActorDistributionNetwork/EncodingNetwork/flatten/Reshape:output:0LActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpReadVariableOpNactordistributionnetwork_encodingnetwork_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
6ActorDistributionNetwork/EncodingNetwork/dense/BiasAddBiasAdd?ActorDistributionNetwork/EncodingNetwork/dense/MatMul:product:0MActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
3ActorDistributionNetwork/EncodingNetwork/dense/TanhTanh?ActorDistributionNetwork/EncodingNetwork/dense/BiasAdd:output:0*
T0*'
_output_shapes
:����������
FActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpReadVariableOpOactordistributionnetwork_encodingnetwork_dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
7ActorDistributionNetwork/EncodingNetwork/dense_1/MatMulMatMul7ActorDistributionNetwork/EncodingNetwork/dense/Tanh:y:0NActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
GActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpReadVariableOpPactordistributionnetwork_encodingnetwork_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
8ActorDistributionNetwork/EncodingNetwork/dense_1/BiasAddBiasAddAActorDistributionNetwork/EncodingNetwork/dense_1/MatMul:product:0OActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
5ActorDistributionNetwork/EncodingNetwork/dense_1/TanhTanhAActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:����������
RActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOpReadVariableOp[actordistributionnetwork_categoricalprojectionnetwork_logits_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
CActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMulMatMul9ActorDistributionNetwork/EncodingNetwork/dense_1/Tanh:y:0ZActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
SActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpReadVariableOp\actordistributionnetwork_categoricalprojectionnetwork_logits_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
DActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAddBiasAddMActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul:product:0[ActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
CActorDistributionNetwork/CategoricalProjectionNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����  �
=ActorDistributionNetwork/CategoricalProjectionNetwork/ReshapeReshapeMActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd:output:0LActorDistributionNetwork/CategoricalProjectionNetwork/Reshape/shape:output:0*
T0*(
_output_shapes
:�����������
fCategorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
����������
\Categorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/ArgMaxArgMaxFActorDistributionNetwork/CategoricalProjectionNetwork/Reshape:output:0oCategorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/ArgMax/dimension:output:0*
T0*#
_output_shapes
:����������
ZCategorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/CastCasteCategorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/ArgMax:output:0*

DstT0*

SrcT0	*#
_output_shapes
:���������T
Deterministic/atolConst*
_output_shapes
: *
dtype0*
value	B : T
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
value	B : d
!Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB �
Deterministic/sample/ShapeShape^Categorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/Cast:y:0*
T0*
_output_shapes
:\
Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : r
(Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"Deterministic/sample/strided_sliceStridedSlice#Deterministic/sample/Shape:output:01Deterministic/sample/strided_slice/stack:output:03Deterministic/sample/strided_slice/stack_1:output:03Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskh
%Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB j
'Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
"Deterministic/sample/BroadcastArgsBroadcastArgs0Deterministic/sample/BroadcastArgs/s0_1:output:0+Deterministic/sample/strided_slice:output:0*
_output_shapes
:n
$Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:g
$Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB b
 Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Deterministic/sample/concatConcatV2-Deterministic/sample/concat/values_0:output:0'Deterministic/sample/BroadcastArgs:r0:0-Deterministic/sample/concat/values_2:output:0)Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:�
 Deterministic/sample/BroadcastToBroadcastTo^Categorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/Cast:y:0$Deterministic/sample/concat:output:0*
T0*'
_output_shapes
:���������u
Deterministic/sample/Shape_1Shape)Deterministic/sample/BroadcastTo:output:0*
T0*
_output_shapes
:t
*Deterministic/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,Deterministic/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,Deterministic/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$Deterministic/sample/strided_slice_1StridedSlice%Deterministic/sample/Shape_1:output:03Deterministic/sample/strided_slice_1/stack:output:05Deterministic/sample/strided_slice_1/stack_1:output:05Deterministic/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskd
"Deterministic/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Deterministic/sample/concat_1ConcatV2*Deterministic/sample/sample_shape:output:0-Deterministic/sample/strided_slice_1:output:0+Deterministic/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Deterministic/sample/ReshapeReshape)Deterministic/sample/BroadcastTo:output:0&Deterministic/sample/concat_1:output:0*
T0*#
_output_shapes
:���������Z
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
value
B :��
clip_by_value/MinimumMinimum%Deterministic/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0*#
_output_shapes
:���������Q
clip_by_value/yConst*
_output_shapes
: *
dtype0*
value	B : {
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*#
_output_shapes
:���������\
IdentityIdentityclip_by_value:z:0^NoOp*
T0*#
_output_shapes
:����������
NoOpNoOpT^ActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpS^ActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOpF^ActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpE^ActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpH^ActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpG^ActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp0^normalize_observations/normalize/ReadVariableOpB^normalize_observations/normalize/normalized_tensor/ReadVariableOp8^normalize_observations/normalize/truediv/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:���������:���������:���������:���������	: : : : : : : : : 2�
SActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpSActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp2�
RActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOpRActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp2�
EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpEActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp2�
DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpDActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp2�
GActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpGActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp2�
FActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpFActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp2b
/normalize_observations/normalize/ReadVariableOp/normalize_observations/normalize/ReadVariableOp2�
Anormalize_observations/normalize/normalized_tensor/ReadVariableOpAnormalize_observations/normalize/normalized_tensor/ReadVariableOp2r
7normalize_observations/normalize/truediv/ReadVariableOp7normalize_observations/normalize/truediv/ReadVariableOp:N J
#
_output_shapes
:���������
#
_user_specified_name	time_step:NJ
#
_output_shapes
:���������
#
_user_specified_name	time_step:NJ
#
_output_shapes
:���������
#
_user_specified_name	time_step:RN
'
_output_shapes
:���������	
#
_user_specified_name	time_step
�
c
__inference_<lambda>_1113478!
readvariableop_resource:	 
identity	��ReadVariableOp^
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	T
IdentityIdentityReadVariableOp:value:0^NoOp*
T0	*
_output_shapes
: W
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2 
ReadVariableOpReadVariableOp
]

__inference_<lambda>_1113481*(
_construction_contextkEagerRuntime*
_input_shapes 
�
�
)__inference_polymorphic_action_fn_1113952
time_step_step_type
time_step_reward
time_step_discount
time_step_observationF
8normalize_observations_normalize_readvariableop_resource:	N
@normalize_observations_normalize_truediv_readvariableop_resource:	X
Jnormalize_observations_normalize_normalized_tensor_readvariableop_resource:	_
Mactordistributionnetwork_encodingnetwork_dense_matmul_readvariableop_resource:	\
Nactordistributionnetwork_encodingnetwork_dense_biasadd_readvariableop_resource:a
Oactordistributionnetwork_encodingnetwork_dense_1_matmul_readvariableop_resource:^
Pactordistributionnetwork_encodingnetwork_dense_1_biasadd_readvariableop_resource:n
[actordistributionnetwork_categoricalprojectionnetwork_logits_matmul_readvariableop_resource:	�k
\actordistributionnetwork_categoricalprojectionnetwork_logits_biasadd_readvariableop_resource:	�
identity��SActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp�RActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp�EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp�DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp�GActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp�FActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp�/normalize_observations/normalize/ReadVariableOp�Anormalize_observations/normalize/normalized_tensor/ReadVariableOp�7normalize_observations/normalize/truediv/ReadVariableOp�
/normalize_observations/normalize/ReadVariableOpReadVariableOp8normalize_observations_normalize_readvariableop_resource*
_output_shapes
:	*
dtype0�
7normalize_observations/normalize/truediv/ReadVariableOpReadVariableOp@normalize_observations_normalize_truediv_readvariableop_resource*
_output_shapes
:	*
dtype0�
(normalize_observations/normalize/truedivRealDiv7normalize_observations/normalize/ReadVariableOp:value:0?normalize_observations/normalize/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
:	}
8normalize_observations/normalize/normalized_tensor/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
6normalize_observations/normalize/normalized_tensor/addAddV2,normalize_observations/normalize/truediv:z:0Anormalize_observations/normalize/normalized_tensor/add/y:output:0*
T0*
_output_shapes
:	�
8normalize_observations/normalize/normalized_tensor/RsqrtRsqrt:normalize_observations/normalize/normalized_tensor/add:z:0*
T0*
_output_shapes
:	�
6normalize_observations/normalize/normalized_tensor/mulMultime_step_observation<normalize_observations/normalize/normalized_tensor/Rsqrt:y:0*
T0*'
_output_shapes
:���������	�
Anormalize_observations/normalize/normalized_tensor/ReadVariableOpReadVariableOpJnormalize_observations_normalize_normalized_tensor_readvariableop_resource*
_output_shapes
:	*
dtype0�
6normalize_observations/normalize/normalized_tensor/NegNegInormalize_observations/normalize/normalized_tensor/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
8normalize_observations/normalize/normalized_tensor/mul_1Mul:normalize_observations/normalize/normalized_tensor/Neg:y:0<normalize_observations/normalize/normalized_tensor/Rsqrt:y:0*
T0*
_output_shapes
:	�
8normalize_observations/normalize/normalized_tensor/add_1AddV2:normalize_observations/normalize/normalized_tensor/mul:z:0<normalize_observations/normalize/normalized_tensor/mul_1:z:0*
T0*'
_output_shapes
:���������	�
Dnormalize_observations/normalize/clipped_normalized_tensor/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �@�
Bnormalize_observations/normalize/clipped_normalized_tensor/MinimumMinimum<normalize_observations/normalize/normalized_tensor/add_1:z:0Mnormalize_observations/normalize/clipped_normalized_tensor/Minimum/y:output:0*
T0*'
_output_shapes
:���������	�
<normalize_observations/normalize/clipped_normalized_tensor/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ���
:normalize_observations/normalize/clipped_normalized_tensorMaximumFnormalize_observations/normalize/clipped_normalized_tensor/Minimum:z:0Enormalize_observations/normalize/clipped_normalized_tensor/y:output:0*
T0*'
_output_shapes
:���������	�
6ActorDistributionNetwork/EncodingNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����	   �
8ActorDistributionNetwork/EncodingNetwork/flatten/ReshapeReshape>normalize_observations/normalize/clipped_normalized_tensor:z:0?ActorDistributionNetwork/EncodingNetwork/flatten/Const:output:0*
T0*'
_output_shapes
:���������	�
DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpReadVariableOpMactordistributionnetwork_encodingnetwork_dense_matmul_readvariableop_resource*
_output_shapes

:	*
dtype0�
5ActorDistributionNetwork/EncodingNetwork/dense/MatMulMatMulAActorDistributionNetwork/EncodingNetwork/flatten/Reshape:output:0LActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpReadVariableOpNactordistributionnetwork_encodingnetwork_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
6ActorDistributionNetwork/EncodingNetwork/dense/BiasAddBiasAdd?ActorDistributionNetwork/EncodingNetwork/dense/MatMul:product:0MActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
3ActorDistributionNetwork/EncodingNetwork/dense/TanhTanh?ActorDistributionNetwork/EncodingNetwork/dense/BiasAdd:output:0*
T0*'
_output_shapes
:����������
FActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpReadVariableOpOactordistributionnetwork_encodingnetwork_dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
7ActorDistributionNetwork/EncodingNetwork/dense_1/MatMulMatMul7ActorDistributionNetwork/EncodingNetwork/dense/Tanh:y:0NActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
GActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpReadVariableOpPactordistributionnetwork_encodingnetwork_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
8ActorDistributionNetwork/EncodingNetwork/dense_1/BiasAddBiasAddAActorDistributionNetwork/EncodingNetwork/dense_1/MatMul:product:0OActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
5ActorDistributionNetwork/EncodingNetwork/dense_1/TanhTanhAActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:����������
RActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOpReadVariableOp[actordistributionnetwork_categoricalprojectionnetwork_logits_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
CActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMulMatMul9ActorDistributionNetwork/EncodingNetwork/dense_1/Tanh:y:0ZActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
SActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpReadVariableOp\actordistributionnetwork_categoricalprojectionnetwork_logits_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
DActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAddBiasAddMActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul:product:0[ActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
CActorDistributionNetwork/CategoricalProjectionNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����  �
=ActorDistributionNetwork/CategoricalProjectionNetwork/ReshapeReshapeMActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd:output:0LActorDistributionNetwork/CategoricalProjectionNetwork/Reshape/shape:output:0*
T0*(
_output_shapes
:�����������
fCategorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
����������
\Categorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/ArgMaxArgMaxFActorDistributionNetwork/CategoricalProjectionNetwork/Reshape:output:0oCategorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/ArgMax/dimension:output:0*
T0*#
_output_shapes
:����������
ZCategorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/CastCasteCategorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/ArgMax:output:0*

DstT0*

SrcT0	*#
_output_shapes
:���������T
Deterministic/atolConst*
_output_shapes
: *
dtype0*
value	B : T
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
value	B : d
!Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB �
Deterministic/sample/ShapeShape^Categorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/Cast:y:0*
T0*
_output_shapes
:\
Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : r
(Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"Deterministic/sample/strided_sliceStridedSlice#Deterministic/sample/Shape:output:01Deterministic/sample/strided_slice/stack:output:03Deterministic/sample/strided_slice/stack_1:output:03Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskh
%Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB j
'Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB �
"Deterministic/sample/BroadcastArgsBroadcastArgs0Deterministic/sample/BroadcastArgs/s0_1:output:0+Deterministic/sample/strided_slice:output:0*
_output_shapes
:n
$Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:g
$Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB b
 Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Deterministic/sample/concatConcatV2-Deterministic/sample/concat/values_0:output:0'Deterministic/sample/BroadcastArgs:r0:0-Deterministic/sample/concat/values_2:output:0)Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:�
 Deterministic/sample/BroadcastToBroadcastTo^Categorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/Cast:y:0$Deterministic/sample/concat:output:0*
T0*'
_output_shapes
:���������u
Deterministic/sample/Shape_1Shape)Deterministic/sample/BroadcastTo:output:0*
T0*
_output_shapes
:t
*Deterministic/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,Deterministic/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,Deterministic/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$Deterministic/sample/strided_slice_1StridedSlice%Deterministic/sample/Shape_1:output:03Deterministic/sample/strided_slice_1/stack:output:05Deterministic/sample/strided_slice_1/stack_1:output:05Deterministic/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskd
"Deterministic/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Deterministic/sample/concat_1ConcatV2*Deterministic/sample/sample_shape:output:0-Deterministic/sample/strided_slice_1:output:0+Deterministic/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Deterministic/sample/ReshapeReshape)Deterministic/sample/BroadcastTo:output:0&Deterministic/sample/concat_1:output:0*
T0*#
_output_shapes
:���������Z
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
value
B :��
clip_by_value/MinimumMinimum%Deterministic/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0*#
_output_shapes
:���������Q
clip_by_value/yConst*
_output_shapes
: *
dtype0*
value	B : {
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*#
_output_shapes
:���������\
IdentityIdentityclip_by_value:z:0^NoOp*
T0*#
_output_shapes
:����������
NoOpNoOpT^ActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpS^ActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOpF^ActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpE^ActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpH^ActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpG^ActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp0^normalize_observations/normalize/ReadVariableOpB^normalize_observations/normalize/normalized_tensor/ReadVariableOp8^normalize_observations/normalize/truediv/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:���������:���������:���������:���������	: : : : : : : : : 2�
SActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpSActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp2�
RActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOpRActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp2�
EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpEActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp2�
DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpDActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp2�
GActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpGActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp2�
FActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpFActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp2b
/normalize_observations/normalize/ReadVariableOp/normalize_observations/normalize/ReadVariableOp2�
Anormalize_observations/normalize/normalized_tensor/ReadVariableOpAnormalize_observations/normalize/normalized_tensor/ReadVariableOp2r
7normalize_observations/normalize/truediv/ReadVariableOp7normalize_observations/normalize/truediv/ReadVariableOp:X T
#
_output_shapes
:���������
-
_user_specified_nametime_step/step_type:UQ
#
_output_shapes
:���������
*
_user_specified_nametime_step/reward:WS
#
_output_shapes
:���������
,
_user_specified_nametime_step/discount:^Z
'
_output_shapes
:���������	
/
_user_specified_nametime_step/observation
�
7
%__inference_get_initial_state_1114011

batch_size*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
�.
�	
 __inference__traced_save_1114090
file_prefix'
#savev2_variable_read_readvariableop	T
Psavev2_actordistributionnetwork_encodingnetwork_dense_kernel_read_readvariableopR
Nsavev2_actordistributionnetwork_encodingnetwork_dense_bias_read_readvariableopV
Rsavev2_actordistributionnetwork_encodingnetwork_dense_1_kernel_read_readvariableopT
Psavev2_actordistributionnetwork_encodingnetwork_dense_1_bias_read_readvariableopb
^savev2_actordistributionnetwork_categoricalprojectionnetwork_logits_kernel_read_readvariableop`
\savev2_actordistributionnetwork_categoricalprojectionnetwork_logits_bias_read_readvariableop$
 savev2_avg_0_read_readvariableop&
"savev2_count_0_read_readvariableop#
savev2_m2_0_read_readvariableop)
%savev2_m2_carry_0_read_readvariableopJ
Fsavev2_valuenetwork_encodingnetwork_dense_2_kernel_read_readvariableopH
Dsavev2_valuenetwork_encodingnetwork_dense_2_bias_read_readvariableopJ
Fsavev2_valuenetwork_encodingnetwork_dense_3_kernel_read_readvariableopH
Dsavev2_valuenetwork_encodingnetwork_dense_3_bias_read_readvariableop:
6savev2_valuenetwork_dense_4_kernel_read_readvariableop8
4savev2_valuenetwork_dense_4_bias_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B%train_step/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/0/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/1/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/2/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/3/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/4/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/5/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/6/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/7/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/8/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/9/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/10/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/11/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/12/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/13/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/14/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/15/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*7
value.B,B B B B B B B B B B B B B B B B B B �

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0#savev2_variable_read_readvariableopPsavev2_actordistributionnetwork_encodingnetwork_dense_kernel_read_readvariableopNsavev2_actordistributionnetwork_encodingnetwork_dense_bias_read_readvariableopRsavev2_actordistributionnetwork_encodingnetwork_dense_1_kernel_read_readvariableopPsavev2_actordistributionnetwork_encodingnetwork_dense_1_bias_read_readvariableop^savev2_actordistributionnetwork_categoricalprojectionnetwork_logits_kernel_read_readvariableop\savev2_actordistributionnetwork_categoricalprojectionnetwork_logits_bias_read_readvariableop savev2_avg_0_read_readvariableop"savev2_count_0_read_readvariableopsavev2_m2_0_read_readvariableop%savev2_m2_carry_0_read_readvariableopFsavev2_valuenetwork_encodingnetwork_dense_2_kernel_read_readvariableopDsavev2_valuenetwork_encodingnetwork_dense_2_bias_read_readvariableopFsavev2_valuenetwork_encodingnetwork_dense_3_kernel_read_readvariableopDsavev2_valuenetwork_encodingnetwork_dense_3_bias_read_readvariableop6savev2_valuenetwork_dense_4_kernel_read_readvariableop4savev2_valuenetwork_dense_4_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 * 
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: : :	::::	�:�:	:	:	:	:	:::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :$ 

_output_shapes

:	: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::%!

_output_shapes
:	�:!

_output_shapes	
:�: 

_output_shapes
:	: 	

_output_shapes
:	: 


_output_shapes
:	: 

_output_shapes
:	:$ 

_output_shapes

:	: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: 
�
�
%__inference_signature_wrapper_1113756
discount
observation

reward
	step_type
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:	�
	unknown_7:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	step_typerewarddiscountobservationunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������*+
_read_only_resource_inputs
		
*2
config_proto" 

CPU

GPU2 *0J 8� *4
f/R-
+__inference_function_with_signature_1113728k
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:���������:���������	:���������:���������: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
#
_output_shapes
:���������
$
_user_specified_name
0/discount:VR
'
_output_shapes
:���������	
'
_user_specified_name0/observation:MI
#
_output_shapes
:���������
"
_user_specified_name
0/reward:PL
#
_output_shapes
:���������
%
_user_specified_name0/step_type
�
-
+__inference_function_with_signature_1113786�
PartitionedCallPartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *%
f R
__inference_<lambda>_1113481*(
_construction_contextkEagerRuntime*
_input_shapes 
�I
�
#__inference__traced_restore_1114151
file_prefix#
assignvariableop_variable:	 Z
Hassignvariableop_1_actordistributionnetwork_encodingnetwork_dense_kernel:	T
Fassignvariableop_2_actordistributionnetwork_encodingnetwork_dense_bias:\
Jassignvariableop_3_actordistributionnetwork_encodingnetwork_dense_1_kernel:V
Hassignvariableop_4_actordistributionnetwork_encodingnetwork_dense_1_bias:i
Vassignvariableop_5_actordistributionnetwork_categoricalprojectionnetwork_logits_kernel:	�c
Tassignvariableop_6_actordistributionnetwork_categoricalprojectionnetwork_logits_bias:	�&
assignvariableop_7_avg_0:	(
assignvariableop_8_count_0:	%
assignvariableop_9_m2_0:	,
assignvariableop_10_m2_carry_0:	Q
?assignvariableop_11_valuenetwork_encodingnetwork_dense_2_kernel:	K
=assignvariableop_12_valuenetwork_encodingnetwork_dense_2_bias:Q
?assignvariableop_13_valuenetwork_encodingnetwork_dense_3_kernel:K
=assignvariableop_14_valuenetwork_encodingnetwork_dense_3_bias:A
/assignvariableop_15_valuenetwork_dense_4_kernel:;
-assignvariableop_16_valuenetwork_dense_4_bias:
identity_18��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B%train_step/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/0/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/1/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/2/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/3/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/4/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/5/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/6/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/7/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/8/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/9/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/10/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/11/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/12/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/13/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/14/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/15/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*7
value.B,B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_variableIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpHassignvariableop_1_actordistributionnetwork_encodingnetwork_dense_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpFassignvariableop_2_actordistributionnetwork_encodingnetwork_dense_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpJassignvariableop_3_actordistributionnetwork_encodingnetwork_dense_1_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpHassignvariableop_4_actordistributionnetwork_encodingnetwork_dense_1_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpVassignvariableop_5_actordistributionnetwork_categoricalprojectionnetwork_logits_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpTassignvariableop_6_actordistributionnetwork_categoricalprojectionnetwork_logits_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_avg_0Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_count_0Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_m2_0Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_m2_carry_0Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp?assignvariableop_11_valuenetwork_encodingnetwork_dense_2_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp=assignvariableop_12_valuenetwork_encodingnetwork_dense_2_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp?assignvariableop_13_valuenetwork_encodingnetwork_dense_3_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp=assignvariableop_14_valuenetwork_encodingnetwork_dense_3_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp/assignvariableop_15_valuenetwork_dense_4_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp-assignvariableop_16_valuenetwork_dense_4_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_17Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_18IdentityIdentity_17:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_18Identity_18:output:0*7
_input_shapes&
$: : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
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
�
k
+__inference_function_with_signature_1113775
unknown:	 
identity	��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallunknown*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *%
f R
__inference_<lambda>_1113478^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 22
StatefulPartitionedCallStatefulPartitionedCall
�b
�
/__inference_polymorphic_distribution_fn_1114008
	step_type

reward
discount
observationF
8normalize_observations_normalize_readvariableop_resource:	N
@normalize_observations_normalize_truediv_readvariableop_resource:	X
Jnormalize_observations_normalize_normalized_tensor_readvariableop_resource:	_
Mactordistributionnetwork_encodingnetwork_dense_matmul_readvariableop_resource:	\
Nactordistributionnetwork_encodingnetwork_dense_biasadd_readvariableop_resource:a
Oactordistributionnetwork_encodingnetwork_dense_1_matmul_readvariableop_resource:^
Pactordistributionnetwork_encodingnetwork_dense_1_biasadd_readvariableop_resource:n
[actordistributionnetwork_categoricalprojectionnetwork_logits_matmul_readvariableop_resource:	�k
\actordistributionnetwork_categoricalprojectionnetwork_logits_biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��SActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp�RActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp�EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp�DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp�GActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp�FActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp�/normalize_observations/normalize/ReadVariableOp�Anormalize_observations/normalize/normalized_tensor/ReadVariableOp�7normalize_observations/normalize/truediv/ReadVariableOp�
/normalize_observations/normalize/ReadVariableOpReadVariableOp8normalize_observations_normalize_readvariableop_resource*
_output_shapes
:	*
dtype0�
7normalize_observations/normalize/truediv/ReadVariableOpReadVariableOp@normalize_observations_normalize_truediv_readvariableop_resource*
_output_shapes
:	*
dtype0�
(normalize_observations/normalize/truedivRealDiv7normalize_observations/normalize/ReadVariableOp:value:0?normalize_observations/normalize/truediv/ReadVariableOp:value:0*
T0*
_output_shapes
:	}
8normalize_observations/normalize/normalized_tensor/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
6normalize_observations/normalize/normalized_tensor/addAddV2,normalize_observations/normalize/truediv:z:0Anormalize_observations/normalize/normalized_tensor/add/y:output:0*
T0*
_output_shapes
:	�
8normalize_observations/normalize/normalized_tensor/RsqrtRsqrt:normalize_observations/normalize/normalized_tensor/add:z:0*
T0*
_output_shapes
:	�
6normalize_observations/normalize/normalized_tensor/mulMulobservation<normalize_observations/normalize/normalized_tensor/Rsqrt:y:0*
T0*'
_output_shapes
:���������	�
Anormalize_observations/normalize/normalized_tensor/ReadVariableOpReadVariableOpJnormalize_observations_normalize_normalized_tensor_readvariableop_resource*
_output_shapes
:	*
dtype0�
6normalize_observations/normalize/normalized_tensor/NegNegInormalize_observations/normalize/normalized_tensor/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
8normalize_observations/normalize/normalized_tensor/mul_1Mul:normalize_observations/normalize/normalized_tensor/Neg:y:0<normalize_observations/normalize/normalized_tensor/Rsqrt:y:0*
T0*
_output_shapes
:	�
8normalize_observations/normalize/normalized_tensor/add_1AddV2:normalize_observations/normalize/normalized_tensor/mul:z:0<normalize_observations/normalize/normalized_tensor/mul_1:z:0*
T0*'
_output_shapes
:���������	�
Dnormalize_observations/normalize/clipped_normalized_tensor/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �@�
Bnormalize_observations/normalize/clipped_normalized_tensor/MinimumMinimum<normalize_observations/normalize/normalized_tensor/add_1:z:0Mnormalize_observations/normalize/clipped_normalized_tensor/Minimum/y:output:0*
T0*'
_output_shapes
:���������	�
<normalize_observations/normalize/clipped_normalized_tensor/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ���
:normalize_observations/normalize/clipped_normalized_tensorMaximumFnormalize_observations/normalize/clipped_normalized_tensor/Minimum:z:0Enormalize_observations/normalize/clipped_normalized_tensor/y:output:0*
T0*'
_output_shapes
:���������	�
6ActorDistributionNetwork/EncodingNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����	   �
8ActorDistributionNetwork/EncodingNetwork/flatten/ReshapeReshape>normalize_observations/normalize/clipped_normalized_tensor:z:0?ActorDistributionNetwork/EncodingNetwork/flatten/Const:output:0*
T0*'
_output_shapes
:���������	�
DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpReadVariableOpMactordistributionnetwork_encodingnetwork_dense_matmul_readvariableop_resource*
_output_shapes

:	*
dtype0�
5ActorDistributionNetwork/EncodingNetwork/dense/MatMulMatMulAActorDistributionNetwork/EncodingNetwork/flatten/Reshape:output:0LActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpReadVariableOpNactordistributionnetwork_encodingnetwork_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
6ActorDistributionNetwork/EncodingNetwork/dense/BiasAddBiasAdd?ActorDistributionNetwork/EncodingNetwork/dense/MatMul:product:0MActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
3ActorDistributionNetwork/EncodingNetwork/dense/TanhTanh?ActorDistributionNetwork/EncodingNetwork/dense/BiasAdd:output:0*
T0*'
_output_shapes
:����������
FActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpReadVariableOpOactordistributionnetwork_encodingnetwork_dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
7ActorDistributionNetwork/EncodingNetwork/dense_1/MatMulMatMul7ActorDistributionNetwork/EncodingNetwork/dense/Tanh:y:0NActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
GActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpReadVariableOpPactordistributionnetwork_encodingnetwork_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
8ActorDistributionNetwork/EncodingNetwork/dense_1/BiasAddBiasAddAActorDistributionNetwork/EncodingNetwork/dense_1/MatMul:product:0OActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
5ActorDistributionNetwork/EncodingNetwork/dense_1/TanhTanhAActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:����������
RActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOpReadVariableOp[actordistributionnetwork_categoricalprojectionnetwork_logits_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
CActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMulMatMul9ActorDistributionNetwork/EncodingNetwork/dense_1/Tanh:y:0ZActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
SActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpReadVariableOp\actordistributionnetwork_categoricalprojectionnetwork_logits_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
DActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAddBiasAddMActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul:product:0[ActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
CActorDistributionNetwork/CategoricalProjectionNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����  �
=ActorDistributionNetwork/CategoricalProjectionNetwork/ReshapeReshapeMActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd:output:0LActorDistributionNetwork/CategoricalProjectionNetwork/Reshape/shape:output:0*
T0*(
_output_shapes
:�����������
fCategorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
����������
\Categorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/ArgMaxArgMaxFActorDistributionNetwork/CategoricalProjectionNetwork/Reshape:output:0oCategorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/ArgMax/dimension:output:0*
T0*#
_output_shapes
:����������
ZCategorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/CastCasteCategorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/ArgMax:output:0*

DstT0*

SrcT0	*#
_output_shapes
:���������T
Deterministic/atolConst*
_output_shapes
: *
dtype0*
value	B : T
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
value	B : Y
IdentityIdentityDeterministic/atol:output:0^NoOp*
T0*
_output_shapes
: �

Identity_1Identity^Categorical_CONSTRUCTED_AT_ActorDistributionNetwork_CategoricalProjectionNetwork/mode/Cast:y:0^NoOp*
T0*#
_output_shapes
:���������[

Identity_2IdentityDeterministic/rtol:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOpT^ActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpS^ActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOpF^ActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpE^ActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpH^ActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpG^ActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp0^normalize_observations/normalize/ReadVariableOpB^normalize_observations/normalize/normalized_tensor/ReadVariableOp8^normalize_observations/normalize/truediv/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:���������:���������:���������:���������	: : : : : : : : : 2�
SActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOpSActorDistributionNetwork/CategoricalProjectionNetwork/logits/BiasAdd/ReadVariableOp2�
RActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOpRActorDistributionNetwork/CategoricalProjectionNetwork/logits/MatMul/ReadVariableOp2�
EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpEActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp2�
DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpDActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp2�
GActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpGActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp2�
FActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpFActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp2b
/normalize_observations/normalize/ReadVariableOp/normalize_observations/normalize/ReadVariableOp2�
Anormalize_observations/normalize/normalized_tensor/ReadVariableOpAnormalize_observations/normalize/normalized_tensor/ReadVariableOp2r
7normalize_observations/normalize/truediv/ReadVariableOp7normalize_observations/normalize/truediv/ReadVariableOp:N J
#
_output_shapes
:���������
#
_user_specified_name	step_type:KG
#
_output_shapes
:���������
 
_user_specified_namereward:MI
#
_output_shapes
:���������
"
_user_specified_name
discount:TP
'
_output_shapes
:���������	
%
_user_specified_nameobservation
�
7
%__inference_get_initial_state_1113762

batch_size*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
�
e
%__inference_signature_wrapper_1113783
unknown:	 
identity	��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallunknown*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8� *4
f/R-
+__inference_function_with_signature_1113775^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 22
StatefulPartitionedCallStatefulPartitionedCall
�
�
+__inference_function_with_signature_1113728
	step_type

reward
discount
observation
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:	�
	unknown_7:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	step_typerewarddiscountobservationunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������*+
_read_only_resource_inputs
		
*2
config_proto" 

CPU

GPU2 *0J 8� *2
f-R+
)__inference_polymorphic_action_fn_1113707k
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:���������:���������:���������:���������	: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
#
_output_shapes
:���������
%
_user_specified_name0/step_type:MI
#
_output_shapes
:���������
"
_user_specified_name
0/reward:OK
#
_output_shapes
:���������
$
_user_specified_name
0/discount:VR
'
_output_shapes
:���������	
'
_user_specified_name0/observation"�L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
action�
4

0/discount&
action_0_discount:0���������
>
0/observation-
action_0_observation:0���������	
0
0/reward$
action_0_reward:0���������
6
0/step_type'
action_0_step_type:0���������6
action,
StatefulPartitionedCall:0���������tensorflow/serving/predict*e
get_initial_stateP
2

batch_size$
get_initial_state_batch_size:0 tensorflow/serving/predict*,
get_metadatatensorflow/serving/predict*Z
get_train_stepH*
int64!
StatefulPartitionedCall_1:0	 tensorflow/serving/predict:�
�

train_step
metadata
model_variables
_all_assets

action
distribution
get_initial_state
get_metadata
	get_train_step


signatures"
_generic_user_object
:	 (2Variable
 "
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
13
14
15"
trackable_tuple_wrapper
5
_wrapped_policy"
trackable_dict_wrapper
�
trace_0
trace_12�
)__inference_polymorphic_action_fn_1113871
)__inference_polymorphic_action_fn_1113952�
���
FullArgSpec(
args �
j	time_step
jpolicy_state
varargs
 
varkw
 
defaults�
� 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0ztrace_1
�
trace_02�
/__inference_polymorphic_distribution_fn_1114008�
���
FullArgSpec(
args �
j	time_step
jpolicy_state
varargs
 
varkw
 
defaults�
� 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0
�
trace_02�
%__inference_get_initial_state_1114011�
���
FullArgSpec!
args�
jself
j
batch_size
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
 ztrace_0
�B�
__inference_<lambda>_1113481"�
���
FullArgSpec
args� 
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
__inference_<lambda>_1113478"�
���
FullArgSpec
args� 
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
`

 action
!get_initial_state
"get_train_step
#get_metadata"
signature_map
G:E	25ActorDistributionNetwork/EncodingNetwork/dense/kernel
A:?23ActorDistributionNetwork/EncodingNetwork/dense/bias
I:G27ActorDistributionNetwork/EncodingNetwork/dense_1/kernel
C:A25ActorDistributionNetwork/EncodingNetwork/dense_1/bias
V:T	�2CActorDistributionNetwork/CategoricalProjectionNetwork/logits/kernel
P:N�2AActorDistributionNetwork/CategoricalProjectionNetwork/logits/bias
:	2avg_0
:	2count_0
:	2m2_0
:	2
m2_carry_0
=:;	2+ValueNetwork/EncodingNetwork/dense_2/kernel
7:52)ValueNetwork/EncodingNetwork/dense_2/bias
=:;2+ValueNetwork/EncodingNetwork/dense_3/kernel
7:52)ValueNetwork/EncodingNetwork/dense_3/bias
-:+2ValueNetwork/dense_4/kernel
':%2ValueNetwork/dense_4/bias
c
$_actor_network
%_observation_normalizer
&_value_network"
_generic_user_object
�B�
)__inference_polymorphic_action_fn_1113871	step_typerewarddiscountobservation"�
���
FullArgSpec(
args �
j	time_step
jpolicy_state
varargs
 
varkw
 
defaults�
� 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
)__inference_polymorphic_action_fn_1113952time_step/step_typetime_step/rewardtime_step/discounttime_step/observation"�
���
FullArgSpec(
args �
j	time_step
jpolicy_state
varargs
 
varkw
 
defaults�
� 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
/__inference_polymorphic_distribution_fn_1114008	step_typerewarddiscountobservation"�
���
FullArgSpec(
args �
j	time_step
jpolicy_state
varargs
 
varkw
 
defaults�
� 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
%__inference_get_initial_state_1114011
batch_size"�
���
FullArgSpec!
args�
jself
j
batch_size
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
%__inference_signature_wrapper_1113756
0/discount0/observation0/reward0/step_type"�
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
�B�
%__inference_signature_wrapper_1113768
batch_size"�
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
�B�
%__inference_signature_wrapper_1113783"�
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
�B�
%__inference_signature_wrapper_1113790"�
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
�
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses
-_encoder
._projection_networks"
_tf_keras_layer
e
/_flat_variable_spec

0_count
1_avg
2_m2
3	_m2_carry"
_generic_user_object
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses
:_encoder
;_postprocessing_layers"
_tf_keras_layer
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
�
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpecU
argsM�J
jself
jobservations
j	step_type
jnetwork_state

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
�2��
���
FullArgSpecU
argsM�J
jself
jobservations
j	step_type
jnetwork_state

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
�
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses
G_postprocessing_layers"
_tf_keras_layer
�
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses
N_projection_layer"
_tf_keras_layer
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpecL
argsD�A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults�

 
� 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpecL
argsD�A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults�

 
� 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses
Z_postprocessing_layers"
_tf_keras_layer
�
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
 "
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
�
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpecL
argsD�A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults�

 
� 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpecL
argsD�A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults�

 
� 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
5
f0
g1
h2"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec?
args7�4
jself
jinputs
j
outer_rank

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
�2��
���
FullArgSpec?
args7�4
jself
jinputs
j
outer_rank

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
�
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
 "
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
�
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpecL
argsD�A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults�

 
� 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpecL
argsD�A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults�

 
� 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
5
y0
z1
{2"
trackable_list_wrapper
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
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
�layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
 "
trackable_list_wrapper
5
f0
g1
h2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
 "
trackable_list_wrapper
'
N0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
 "
trackable_list_wrapper
5
y0
z1
{2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
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
�2��
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
trackable_dict_wrapper;
__inference_<lambda>_1113478�

� 
� "� 	4
__inference_<lambda>_1113481�

� 
� "� R
%__inference_get_initial_state_1114011)"�
�
�

batch_size 
� "� �
)__inference_polymorphic_action_fn_1113871�	���
���
���
TimeStep,
	step_type�
	step_type���������&
reward�
reward���������*
discount�
discount���������4
observation%�"
observation���������	
� 
� "R�O

PolicyStep&
action�
action���������
state� 
info� �
)__inference_polymorphic_action_fn_1113952�	���
���
���
TimeStep6
	step_type)�&
time_step/step_type���������0
reward&�#
time_step/reward���������4
discount(�%
time_step/discount���������>
observation/�,
time_step/observation���������	
� 
� "R�O

PolicyStep&
action�
action���������
state� 
info� �
/__inference_polymorphic_distribution_fn_1114008�	���
���
���
TimeStep,
	step_type�
	step_type���������&
reward�
reward���������*
discount�
discount���������4
observation%�"
observation���������	
� 
� "���

PolicyStep�
action������
`
B�?

atol� 

loc����������

rtol� 
J�G

allow_nan_statsp

namejDeterministic_1

validate_argsp 
�
j
parameters
� 
�
jname+tfp.distributions.Deterministic_ACTTypeSpec 
state� 
info� �
%__inference_signature_wrapper_1113756�	���
� 
���
.

0/discount �

0/discount���������
8
0/observation'�$
0/observation���������	
*
0/reward�
0/reward���������
0
0/step_type!�
0/step_type���������"+�(
&
action�
action���������`
%__inference_signature_wrapper_111376870�-
� 
&�#
!

batch_size�

batch_size "� Y
%__inference_signature_wrapper_11137830�

� 
� "�

int64�
int64 	=
%__inference_signature_wrapper_1113790�

� 
� "� 