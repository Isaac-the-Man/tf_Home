Ĺţ
Ę
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
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
B
Equal
x"T
y"T
z
"
Ttype:
2	

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
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
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
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
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
ö
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
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized

s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.10.02v1.10.0-0-g656e7a2b348öČ

global_step/Initializer/zerosConst*
value	B	 R *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
k
global_step
VariableV2*
_class
loc:@global_step*
shape: *
dtype0	*
_output_shapes
: 

global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
_output_shapes
: *
T0	*
_class
loc:@global_step
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
f
PlaceholderPlaceholder*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
h
Placeholder_1Placeholder*
shape:˙˙˙˙˙˙˙˙˙*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
Placeholder_2Placeholder*
shape:˙˙˙˙˙˙˙˙˙*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ň
=linear/linear_model/num_coke/weights/part_0/Initializer/zerosConst*
dtype0*
_output_shapes

:*
valueB*    *>
_class4
20loc:@linear/linear_model/num_coke/weights/part_0
ň
+linear/linear_model/num_coke/weights/part_0VarHandleOp*
shape
:*
dtype0*
_output_shapes
: *<
shared_name-+linear/linear_model/num_coke/weights/part_0*>
_class4
20loc:@linear/linear_model/num_coke/weights/part_0
§
Llinear/linear_model/num_coke/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp+linear/linear_model/num_coke/weights/part_0*
_output_shapes
: 
˙
2linear/linear_model/num_coke/weights/part_0/AssignAssignVariableOp+linear/linear_model/num_coke/weights/part_0=linear/linear_model/num_coke/weights/part_0/Initializer/zeros*>
_class4
20loc:@linear/linear_model/num_coke/weights/part_0*
dtype0
ë
?linear/linear_model/num_coke/weights/part_0/Read/ReadVariableOpReadVariableOp+linear/linear_model/num_coke/weights/part_0*>
_class4
20loc:@linear/linear_model/num_coke/weights/part_0*
dtype0*
_output_shapes

:

:linear/linear_model_1/linear_model/num_coke/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙
Á
6linear/linear_model_1/linear_model/num_coke/ExpandDims
ExpandDimsPlaceholder_2:linear/linear_model_1/linear_model/num_coke/ExpandDims/dim*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
´
3linear/linear_model_1/linear_model/num_coke/ToFloatCast6linear/linear_model_1/linear_model/num_coke/ExpandDims*

DstT0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

SrcT0

1linear/linear_model_1/linear_model/num_coke/ShapeShape3linear/linear_model_1/linear_model/num_coke/ToFloat*
_output_shapes
:*
T0

?linear/linear_model_1/linear_model/num_coke/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Alinear/linear_model_1/linear_model/num_coke/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0

Alinear/linear_model_1/linear_model/num_coke/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

9linear/linear_model_1/linear_model/num_coke/strided_sliceStridedSlice1linear/linear_model_1/linear_model/num_coke/Shape?linear/linear_model_1/linear_model/num_coke/strided_slice/stackAlinear/linear_model_1/linear_model/num_coke/strided_slice/stack_1Alinear/linear_model_1/linear_model/num_coke/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: 
}
;linear/linear_model_1/linear_model/num_coke/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
ç
9linear/linear_model_1/linear_model/num_coke/Reshape/shapePack9linear/linear_model_1/linear_model/num_coke/strided_slice;linear/linear_model_1/linear_model/num_coke/Reshape/shape/1*
T0*
N*
_output_shapes
:
ŕ
3linear/linear_model_1/linear_model/num_coke/ReshapeReshape3linear/linear_model_1/linear_model/num_coke/ToFloat9linear/linear_model_1/linear_model/num_coke/Reshape/shape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

3linear/linear_model/num_coke/weights/ReadVariableOpReadVariableOp+linear/linear_model/num_coke/weights/part_0*
dtype0*
_output_shapes

:

$linear/linear_model/num_coke/weightsIdentity3linear/linear_model/num_coke/weights/ReadVariableOp*
T0*
_output_shapes

:
Ď
8linear/linear_model_1/linear_model/num_coke/weighted_sumMatMul3linear/linear_model_1/linear_model/num_coke/Reshape$linear/linear_model/num_coke/weights*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ô
>linear/linear_model/num_salad/weights/part_0/Initializer/zerosConst*
_output_shapes

:*
valueB*    *?
_class5
31loc:@linear/linear_model/num_salad/weights/part_0*
dtype0
ő
,linear/linear_model/num_salad/weights/part_0VarHandleOp*=
shared_name.,linear/linear_model/num_salad/weights/part_0*?
_class5
31loc:@linear/linear_model/num_salad/weights/part_0*
shape
:*
dtype0*
_output_shapes
: 
Š
Mlinear/linear_model/num_salad/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp,linear/linear_model/num_salad/weights/part_0*
_output_shapes
: 

3linear/linear_model/num_salad/weights/part_0/AssignAssignVariableOp,linear/linear_model/num_salad/weights/part_0>linear/linear_model/num_salad/weights/part_0/Initializer/zeros*?
_class5
31loc:@linear/linear_model/num_salad/weights/part_0*
dtype0
î
@linear/linear_model/num_salad/weights/part_0/Read/ReadVariableOpReadVariableOp,linear/linear_model/num_salad/weights/part_0*?
_class5
31loc:@linear/linear_model/num_salad/weights/part_0*
dtype0*
_output_shapes

:

;linear/linear_model_1/linear_model/num_salad/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Ă
7linear/linear_model_1/linear_model/num_salad/ExpandDims
ExpandDimsPlaceholder_1;linear/linear_model_1/linear_model/num_salad/ExpandDims/dim*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ś
4linear/linear_model_1/linear_model/num_salad/ToFloatCast7linear/linear_model_1/linear_model/num_salad/ExpandDims*

DstT0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

SrcT0

2linear/linear_model_1/linear_model/num_salad/ShapeShape4linear/linear_model_1/linear_model/num_salad/ToFloat*
T0*
_output_shapes
:

@linear/linear_model_1/linear_model/num_salad/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Blinear/linear_model_1/linear_model/num_salad/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Blinear/linear_model_1/linear_model/num_salad/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0

:linear/linear_model_1/linear_model/num_salad/strided_sliceStridedSlice2linear/linear_model_1/linear_model/num_salad/Shape@linear/linear_model_1/linear_model/num_salad/strided_slice/stackBlinear/linear_model_1/linear_model/num_salad/strided_slice/stack_1Blinear/linear_model_1/linear_model/num_salad/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: 
~
<linear/linear_model_1/linear_model/num_salad/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
ę
:linear/linear_model_1/linear_model/num_salad/Reshape/shapePack:linear/linear_model_1/linear_model/num_salad/strided_slice<linear/linear_model_1/linear_model/num_salad/Reshape/shape/1*
T0*
N*
_output_shapes
:
ă
4linear/linear_model_1/linear_model/num_salad/ReshapeReshape4linear/linear_model_1/linear_model/num_salad/ToFloat:linear/linear_model_1/linear_model/num_salad/Reshape/shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ą
4linear/linear_model/num_salad/weights/ReadVariableOpReadVariableOp,linear/linear_model/num_salad/weights/part_0*
dtype0*
_output_shapes

:

%linear/linear_model/num_salad/weightsIdentity4linear/linear_model/num_salad/weights/ReadVariableOp*
T0*
_output_shapes

:
Ň
9linear/linear_model_1/linear_model/num_salad/weighted_sumMatMul4linear/linear_model_1/linear_model/num_salad/Reshape%linear/linear_model/num_salad/weights*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ü
Blinear/linear_model/num_sandwitch/weights/part_0/Initializer/zerosConst*
dtype0*
_output_shapes

:*
valueB*    *C
_class9
75loc:@linear/linear_model/num_sandwitch/weights/part_0

0linear/linear_model/num_sandwitch/weights/part_0VarHandleOp*
dtype0*
_output_shapes
: *A
shared_name20linear/linear_model/num_sandwitch/weights/part_0*C
_class9
75loc:@linear/linear_model/num_sandwitch/weights/part_0*
shape
:
ą
Qlinear/linear_model/num_sandwitch/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp0linear/linear_model/num_sandwitch/weights/part_0*
_output_shapes
: 

7linear/linear_model/num_sandwitch/weights/part_0/AssignAssignVariableOp0linear/linear_model/num_sandwitch/weights/part_0Blinear/linear_model/num_sandwitch/weights/part_0/Initializer/zeros*C
_class9
75loc:@linear/linear_model/num_sandwitch/weights/part_0*
dtype0
ú
Dlinear/linear_model/num_sandwitch/weights/part_0/Read/ReadVariableOpReadVariableOp0linear/linear_model/num_sandwitch/weights/part_0*
_output_shapes

:*C
_class9
75loc:@linear/linear_model/num_sandwitch/weights/part_0*
dtype0

?linear/linear_model_1/linear_model/num_sandwitch/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
É
;linear/linear_model_1/linear_model/num_sandwitch/ExpandDims
ExpandDimsPlaceholder?linear/linear_model_1/linear_model/num_sandwitch/ExpandDims/dim*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
8linear/linear_model_1/linear_model/num_sandwitch/ToFloatCast;linear/linear_model_1/linear_model/num_sandwitch/ExpandDims*

DstT0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

SrcT0

6linear/linear_model_1/linear_model/num_sandwitch/ShapeShape8linear/linear_model_1/linear_model/num_sandwitch/ToFloat*
_output_shapes
:*
T0

Dlinear/linear_model_1/linear_model/num_sandwitch/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Flinear/linear_model_1/linear_model/num_sandwitch/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Flinear/linear_model_1/linear_model/num_sandwitch/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
˘
>linear/linear_model_1/linear_model/num_sandwitch/strided_sliceStridedSlice6linear/linear_model_1/linear_model/num_sandwitch/ShapeDlinear/linear_model_1/linear_model/num_sandwitch/strided_slice/stackFlinear/linear_model_1/linear_model/num_sandwitch/strided_slice/stack_1Flinear/linear_model_1/linear_model/num_sandwitch/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
_output_shapes
: 

@linear/linear_model_1/linear_model/num_sandwitch/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
ö
>linear/linear_model_1/linear_model/num_sandwitch/Reshape/shapePack>linear/linear_model_1/linear_model/num_sandwitch/strided_slice@linear/linear_model_1/linear_model/num_sandwitch/Reshape/shape/1*
N*
_output_shapes
:*
T0
ď
8linear/linear_model_1/linear_model/num_sandwitch/ReshapeReshape8linear/linear_model_1/linear_model/num_sandwitch/ToFloat>linear/linear_model_1/linear_model/num_sandwitch/Reshape/shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Š
8linear/linear_model/num_sandwitch/weights/ReadVariableOpReadVariableOp0linear/linear_model/num_sandwitch/weights/part_0*
dtype0*
_output_shapes

:

)linear/linear_model/num_sandwitch/weightsIdentity8linear/linear_model/num_sandwitch/weights/ReadVariableOp*
T0*
_output_shapes

:
Ţ
=linear/linear_model_1/linear_model/num_sandwitch/weighted_sumMatMul8linear/linear_model_1/linear_model/num_sandwitch/Reshape)linear/linear_model/num_sandwitch/weights*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ž
7linear/linear_model_1/linear_model/weighted_sum_no_biasAddN8linear/linear_model_1/linear_model/num_coke/weighted_sum9linear/linear_model_1/linear_model/num_salad/weighted_sum=linear/linear_model_1/linear_model/num_sandwitch/weighted_sum*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Â
9linear/linear_model/bias_weights/part_0/Initializer/zerosConst*
_output_shapes
:*
valueB*    *:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0
â
'linear/linear_model/bias_weights/part_0VarHandleOp*
dtype0*
_output_shapes
: *8
shared_name)'linear/linear_model/bias_weights/part_0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
shape:

Hlinear/linear_model/bias_weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp'linear/linear_model/bias_weights/part_0*
_output_shapes
: 
ď
.linear/linear_model/bias_weights/part_0/AssignAssignVariableOp'linear/linear_model/bias_weights/part_09linear/linear_model/bias_weights/part_0/Initializer/zeros*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0
Ű
;linear/linear_model/bias_weights/part_0/Read/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:

/linear/linear_model/bias_weights/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:

 linear/linear_model/bias_weightsIdentity/linear/linear_model/bias_weights/ReadVariableOp*
T0*
_output_shapes
:
Ç
/linear/linear_model_1/linear_model/weighted_sumBiasAdd7linear/linear_model_1/linear_model/weighted_sum_no_bias linear/linear_model/bias_weights*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
linear/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
d
linear/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
f
linear/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
f
linear/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ů
linear/strided_sliceStridedSlicelinear/ReadVariableOplinear/strided_slice/stacklinear/strided_slice/stack_1linear/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: 
\
linear/bias/tagsConst*
valueB Blinear/bias*
dtype0*
_output_shapes
: 
e
linear/biasScalarSummarylinear/bias/tagslinear/strided_slice*
_output_shapes
: *
T0

linear/Reshape/ReadVariableOpReadVariableOp+linear/linear_model/num_coke/weights/part_0*
dtype0*
_output_shapes

:
g
linear/Reshape/shapeConst*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0
s
linear/ReshapeReshapelinear/Reshape/ReadVariableOplinear/Reshape/shape*
T0*
_output_shapes
:

linear/Reshape_1/ReadVariableOpReadVariableOp,linear/linear_model/num_salad/weights/part_0*
dtype0*
_output_shapes

:
i
linear/Reshape_1/shapeConst*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0
y
linear/Reshape_1Reshapelinear/Reshape_1/ReadVariableOplinear/Reshape_1/shape*
_output_shapes
:*
T0

linear/Reshape_2/ReadVariableOpReadVariableOp0linear/linear_model/num_sandwitch/weights/part_0*
dtype0*
_output_shapes

:
i
linear/Reshape_2/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
y
linear/Reshape_2Reshapelinear/Reshape_2/ReadVariableOplinear/Reshape_2/shape*
_output_shapes
:*
T0
T
linear/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 

linear/concatConcatV2linear/Reshapelinear/Reshape_1linear/Reshape_2linear/concat/axis*
N*
_output_shapes
:*
T0
^
linear/zero_fraction/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
r
linear/zero_fraction/EqualEquallinear/concatlinear/zero_fraction/zero*
T0*
_output_shapes
:
q
linear/zero_fraction/CastCastlinear/zero_fraction/Equal*

SrcT0
*

DstT0*
_output_shapes
:
d
linear/zero_fraction/ConstConst*
_output_shapes
:*
valueB: *
dtype0
y
linear/zero_fraction/MeanMeanlinear/zero_fraction/Castlinear/zero_fraction/Const*
T0*
_output_shapes
: 

$linear/fraction_of_zero_weights/tagsConst*0
value'B% Blinear/fraction_of_zero_weights*
dtype0*
_output_shapes
: 

linear/fraction_of_zero_weightsScalarSummary$linear/fraction_of_zero_weights/tagslinear/zero_fraction/Mean*
T0*
_output_shapes
: 
w
linear/head/logits/ShapeShape/linear/linear_model_1/linear_model/weighted_sum*
T0*
_output_shapes
:
n
,linear/head/logits/assert_rank_at_least/rankConst*
value	B :*
dtype0*
_output_shapes
: 
^
Vlinear/head/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
O
Glinear/head/logits/assert_rank_at_least/static_checks_determined_all_okNoOp

initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
|
save/Read/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
X
save/IdentityIdentitysave/Read/ReadVariableOp*
T0*
_output_shapes
:
^
save/Identity_1Identitysave/Identity"/device:CPU:0*
T0*
_output_shapes
:

save/Read_1/ReadVariableOpReadVariableOp+linear/linear_model/num_coke/weights/part_0*
dtype0*
_output_shapes

:
`
save/Identity_2Identitysave/Read_1/ReadVariableOp*
T0*
_output_shapes

:
d
save/Identity_3Identitysave/Identity_2"/device:CPU:0*
T0*
_output_shapes

:

save/Read_2/ReadVariableOpReadVariableOp,linear/linear_model/num_salad/weights/part_0*
dtype0*
_output_shapes

:
`
save/Identity_4Identitysave/Read_2/ReadVariableOp*
T0*
_output_shapes

:
d
save/Identity_5Identitysave/Identity_4"/device:CPU:0*
T0*
_output_shapes

:

save/Read_3/ReadVariableOpReadVariableOp0linear/linear_model/num_sandwitch/weights/part_0*
_output_shapes

:*
dtype0
`
save/Identity_6Identitysave/Read_3/ReadVariableOp*
T0*
_output_shapes

:
d
save/Identity_7Identitysave/Identity_6"/device:CPU:0*
_output_shapes

:*
T0

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_1117edfb8387454d8765256761e2b0f0/part*
dtype0*
_output_shapes
: 
d
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
{
save/SaveV2/tensor_namesConst"/device:CPU:0* 
valueBBglobal_step*
dtype0*
_output_shapes
:
t
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_step"/device:CPU:0*
dtypes
2	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
m
save/ShardedFilename_1/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B :

save/ShardedFilename_1ShardedFilenamesave/StringJoinsave/ShardedFilename_1/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 

save/Read_4/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0"/device:CPU:0*
dtype0*
_output_shapes
:
k
save/Identity_8Identitysave/Read_4/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:
`
save/Identity_9Identitysave/Identity_8"/device:CPU:0*
T0*
_output_shapes
:

save/Read_5/ReadVariableOpReadVariableOp+linear/linear_model/num_coke/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
p
save/Identity_10Identitysave/Read_5/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_11Identitysave/Identity_10"/device:CPU:0*
T0*
_output_shapes

:

save/Read_6/ReadVariableOpReadVariableOp,linear/linear_model/num_salad/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
p
save/Identity_12Identitysave/Read_6/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_13Identitysave/Identity_12"/device:CPU:0*
_output_shapes

:*
T0

save/Read_7/ReadVariableOpReadVariableOp0linear/linear_model/num_sandwitch/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
p
save/Identity_14Identitysave/Read_7/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_15Identitysave/Identity_14"/device:CPU:0*
T0*
_output_shapes

:

save/SaveV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*Ż
valueĽB˘B linear/linear_model/bias_weightsB$linear/linear_model/num_coke/weightsB%linear/linear_model/num_salad/weightsB)linear/linear_model/num_sandwitch/weights*
dtype0
˘
save/SaveV2_1/shape_and_slicesConst"/device:CPU:0*A
value8B6B1 0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1*
dtype0*
_output_shapes
:
Ő
save/SaveV2_1SaveV2save/ShardedFilename_1save/SaveV2_1/tensor_namessave/SaveV2_1/shape_and_slicessave/Identity_9save/Identity_11save/Identity_13save/Identity_15"/device:CPU:0*
dtypes
2
¨
save/control_dependency_1Identitysave/ShardedFilename_1^save/SaveV2_1"/device:CPU:0*
_output_shapes
: *
T0*)
_class
loc:@save/ShardedFilename_1
Ô
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilenamesave/ShardedFilename_1^save/control_dependency^save/control_dependency_1"/device:CPU:0*
T0*
N*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0
¨
save/Identity_16Identity
save/Const^save/MergeV2Checkpoints^save/control_dependency^save/control_dependency_1"/device:CPU:0*
_output_shapes
: *
T0
~
save/RestoreV2/tensor_namesConst"/device:CPU:0* 
valueBBglobal_step*
dtype0*
_output_shapes
:
w
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2	
s
save/AssignAssignglobal_stepsave/RestoreV2*
T0	*
_class
loc:@global_step*
_output_shapes
: 
(
save/restore_shardNoOp^save/Assign

save/RestoreV2_1/tensor_namesConst"/device:CPU:0*Ż
valueĽB˘B linear/linear_model/bias_weightsB$linear/linear_model/num_coke/weightsB%linear/linear_model/num_salad/weightsB)linear/linear_model/num_sandwitch/weights*
dtype0*
_output_shapes
:
Ľ
!save/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*A
value8B6B1 0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1*
dtype0*
_output_shapes
:
Č
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2*8
_output_shapes&
$::::
b
save/Identity_17Identitysave/RestoreV2_1"/device:CPU:0*
_output_shapes
:*
T0

save/AssignVariableOpAssignVariableOp'linear/linear_model/bias_weights/part_0save/Identity_17"/device:CPU:0*
dtype0
h
save/Identity_18Identitysave/RestoreV2_1:1"/device:CPU:0*
_output_shapes

:*
T0

save/AssignVariableOp_1AssignVariableOp+linear/linear_model/num_coke/weights/part_0save/Identity_18"/device:CPU:0*
dtype0
h
save/Identity_19Identitysave/RestoreV2_1:2"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_2AssignVariableOp,linear/linear_model/num_salad/weights/part_0save/Identity_19"/device:CPU:0*
dtype0
h
save/Identity_20Identitysave/RestoreV2_1:3"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_3AssignVariableOp0linear/linear_model/num_sandwitch/weights/part_0save/Identity_20"/device:CPU:0*
dtype0

save/restore_shard_1NoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2^save/AssignVariableOp_3"/device:CPU:0
2
save/restore_all/NoOpNoOp^save/restore_shard
E
save/restore_all/NoOp_1NoOp^save/restore_shard_1"/device:CPU:0
J
save/restore_allNoOp^save/restore_all/NoOp^save/restore_all/NoOp_1"?
save/Const:0save/Identity_16:0save/restore_all (5 @F8"k
global_step\Z
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0"Ś	
model_variables		

-linear/linear_model/num_coke/weights/part_0:02linear/linear_model/num_coke/weights/part_0/AssignAlinear/linear_model/num_coke/weights/part_0/Read/ReadVariableOp:0"2
$linear/linear_model/num_coke/weights  "(2?linear/linear_model/num_coke/weights/part_0/Initializer/zeros:08
¤
.linear/linear_model/num_salad/weights/part_0:03linear/linear_model/num_salad/weights/part_0/AssignBlinear/linear_model/num_salad/weights/part_0/Read/ReadVariableOp:0"3
%linear/linear_model/num_salad/weights  "(2@linear/linear_model/num_salad/weights/part_0/Initializer/zeros:08
¸
2linear/linear_model/num_sandwitch/weights/part_0:07linear/linear_model/num_sandwitch/weights/part_0/AssignFlinear/linear_model/num_sandwitch/weights/part_0/Read/ReadVariableOp:0"7
)linear/linear_model/num_sandwitch/weights  "(2Dlinear/linear_model/num_sandwitch/weights/part_0/Initializer/zeros:08

)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08"Ş	
trainable_variables		

-linear/linear_model/num_coke/weights/part_0:02linear/linear_model/num_coke/weights/part_0/AssignAlinear/linear_model/num_coke/weights/part_0/Read/ReadVariableOp:0"2
$linear/linear_model/num_coke/weights  "(2?linear/linear_model/num_coke/weights/part_0/Initializer/zeros:08
¤
.linear/linear_model/num_salad/weights/part_0:03linear/linear_model/num_salad/weights/part_0/AssignBlinear/linear_model/num_salad/weights/part_0/Read/ReadVariableOp:0"3
%linear/linear_model/num_salad/weights  "(2@linear/linear_model/num_salad/weights/part_0/Initializer/zeros:08
¸
2linear/linear_model/num_sandwitch/weights/part_0:07linear/linear_model/num_sandwitch/weights/part_0/AssignFlinear/linear_model/num_sandwitch/weights/part_0/Read/ReadVariableOp:0"7
)linear/linear_model/num_sandwitch/weights  "(2Dlinear/linear_model/num_sandwitch/weights/part_0/Initializer/zeros:08

)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08"A
	summaries4
2
linear/bias:0
!linear/fraction_of_zero_weights:0"ú	
	variablesě	é	
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0

-linear/linear_model/num_coke/weights/part_0:02linear/linear_model/num_coke/weights/part_0/AssignAlinear/linear_model/num_coke/weights/part_0/Read/ReadVariableOp:0"2
$linear/linear_model/num_coke/weights  "(2?linear/linear_model/num_coke/weights/part_0/Initializer/zeros:08
¤
.linear/linear_model/num_salad/weights/part_0:03linear/linear_model/num_salad/weights/part_0/AssignBlinear/linear_model/num_salad/weights/part_0/Read/ReadVariableOp:0"3
%linear/linear_model/num_salad/weights  "(2@linear/linear_model/num_salad/weights/part_0/Initializer/zeros:08
¸
2linear/linear_model/num_sandwitch/weights/part_0:07linear/linear_model/num_sandwitch/weights/part_0/AssignFlinear/linear_model/num_sandwitch/weights/part_0/Read/ReadVariableOp:0"7
)linear/linear_model/num_sandwitch/weights  "(2Dlinear/linear_model/num_sandwitch/weights/part_0/Initializer/zeros:08

)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08" 
legacy_init_op


group_deps*
predict
1
num_sandwitch 
Placeholder:0˙˙˙˙˙˙˙˙˙
/
	num_salad"
Placeholder_1:0˙˙˙˙˙˙˙˙˙
.
num_coke"
Placeholder_2:0˙˙˙˙˙˙˙˙˙W
predictionsH
1linear/linear_model_1/linear_model/weighted_sum:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict