.class public final Lcom/autonavi/amapauto/gdarcameraservice/utils/InvokeUtil;
.super Ljava/lang/Object;
.source "InvokeUtil.java"


# static fields
.field private static final INSTANCE_CONV:I = 0x2

.field private static final INSTANCE_DENIED:I = 0x0

.field private static final INSTANCE_OK:I = 0x1

.field private static final METHOD_MATCH_NONE:I = 0x0

.field private static final METHOD_MATCH_PARAMS_TYPE:I = 0x2

.field private static final METHOD_MATCH_PUBLIC:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static arrayLength([Ljava/lang/Object;)I
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)I"
        }
    .end annotation

    .prologue
    .line 170
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    array-length v0, p0

    goto :goto_0
.end method

.method private static fieldByNameRecursive(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, p0

    .line 250
    .local v1, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v2, Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    new-instance v2, Ljava/lang/NoSuchFieldException;

    invoke-direct {v2, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 252
    :cond_0
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method private static instanceOf(Ljava/lang/Object;Ljava/lang/Class;)I
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 133
    if-nez p0, :cond_2

    .line 134
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v1

    .line 137
    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 141
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p1, v4, :cond_0

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/autonavi/amapauto/gdarcameraservice/utils/InvokeUtil;->wrappedClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 145
    .local v0, "wclz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 148
    if-ne v0, p1, :cond_3

    move v2, v1

    .line 149
    goto :goto_0

    .line 151
    :cond_3
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_4

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    move v2, v3

    .line 152
    goto :goto_0

    .line 154
    :cond_4
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_6

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_5

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    :cond_5
    move v2, v3

    .line 155
    goto :goto_0

    .line 157
    :cond_6
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_7

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_7

    move v2, v3

    .line 158
    goto :goto_0

    .line 160
    :cond_7
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_8

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_8

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    :cond_8
    move v2, v3

    .line 161
    goto :goto_0

    .line 166
    .end local v0    # "wclz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_a
    move v1, v2

    goto :goto_1
.end method

.method public static varargs invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/autonavi/amapauto/gdarcameraservice/utils/InvokeUtil;->matchMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 67
    .local v0, "method":Ljava/lang/reflect/Method;
    if-nez v0, :cond_0

    .line 68
    new-instance v1, Ljava/lang/NoSuchMethodException;

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cannot find method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_0
    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static varargs invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2}, Lcom/autonavi/amapauto/gdarcameraservice/utils/InvokeUtil;->matchMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 77
    .local v0, "method":Ljava/lang/reflect/Method;
    if-nez v0, :cond_0

    .line 78
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cannot find method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static varargs matchMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 109
    invoke-static {p0, p1}, Lcom/autonavi/amapauto/gdarcameraservice/utils/InvokeUtil;->methodsForName(Ljava/lang/Class;Ljava/lang/String;)[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 110
    .local v3, "methods":[Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    array-length v6, v3

    if-nez v6, :cond_2

    :cond_0
    move-object v0, v5

    .line 129
    :cond_1
    :goto_0
    return-object v0

    .line 113
    :cond_2
    const/4 v0, 0x0

    .line 114
    .local v0, "found":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .line 115
    .local v1, "maxMatch":I
    array-length v7, v3

    const/4 v6, 0x0

    :goto_1
    if-lt v6, v7, :cond_3

    .line 123
    if-nez v1, :cond_5

    move-object v0, v5

    .line 124
    goto :goto_0

    .line 115
    :cond_3
    aget-object v2, v3, v6

    .line 116
    .local v2, "method":Ljava/lang/reflect/Method;
    invoke-static {v2, p2}, Lcom/autonavi/amapauto/gdarcameraservice/utils/InvokeUtil;->matchMethodParameterTypes(Ljava/lang/reflect/Method;[Ljava/lang/Object;)I

    move-result v4

    .line 117
    .local v4, "v":I
    if-le v4, v1, :cond_4

    .line 118
    move v1, v4

    .line 119
    move-object v0, v2

    .line 115
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 126
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "v":I
    :cond_5
    and-int/lit8 v5, v1, 0x1

    if-nez v5, :cond_1

    .line 127
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    goto :goto_0
.end method

.method private static varargs matchMethodParameterTypes(Ljava/lang/reflect/Method;[Ljava/lang/Object;)I
    .locals 20
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 174
    invoke-virtual/range {p0 .. p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    .line 175
    .local v12, "types":[Ljava/lang/Class;
    invoke-static {v12}, Lcom/autonavi/amapauto/gdarcameraservice/utils/InvokeUtil;->arrayLength([Ljava/lang/Object;)I

    move-result v11

    .line 176
    .local v11, "tlen":I
    invoke-static/range {p1 .. p1}, Lcom/autonavi/amapauto/gdarcameraservice/utils/InvokeUtil;->arrayLength([Ljava/lang/Object;)I

    move-result v7

    .line 177
    .local v7, "plen":I
    const/4 v14, 0x0

    .line 178
    .local v14, "value":I
    if-eq v11, v7, :cond_0

    .line 179
    const/16 v16, 0x0

    move v15, v14

    .line 232
    .end local v14    # "value":I
    .local v15, "value":I
    :goto_0
    return v16

    .line 181
    .end local v15    # "value":I
    .restart local v14    # "value":I
    :cond_0
    if-lez v7, :cond_1

    .line 182
    new-array v8, v7, [I

    .line 183
    .local v8, "pos":[I
    const/4 v9, 0x0

    .line 184
    .local v9, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v10, v9

    .end local v9    # "size":I
    .local v10, "size":I
    :goto_1
    if-lt v3, v7, :cond_3

    .line 196
    if-lez v10, :cond_1

    .line 197
    array-length v0, v8

    move/from16 v17, v0

    const/16 v16, 0x0

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_6

    .line 228
    .end local v3    # "i":I
    .end local v8    # "pos":[I
    .end local v10    # "size":I
    :cond_1
    or-int/lit8 v14, v14, 0x2

    .line 229
    invoke-virtual/range {p0 .. p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 230
    or-int/lit8 v14, v14, 0x1

    :cond_2
    move v15, v14

    .end local v14    # "value":I
    .restart local v15    # "value":I
    move/from16 v16, v14

    .line 232
    goto :goto_0

    .line 185
    .end local v15    # "value":I
    .restart local v3    # "i":I
    .restart local v8    # "pos":[I
    .restart local v10    # "size":I
    .restart local v14    # "value":I
    :cond_3
    aget-object v6, p1, v3

    .line 186
    .local v6, "p":Ljava/lang/Object;
    aget-object v16, v12, v3

    move-object/from16 v0, v16

    invoke-static {v6, v0}, Lcom/autonavi/amapauto/gdarcameraservice/utils/InvokeUtil;->instanceOf(Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v13

    .line 187
    .local v13, "v":I
    if-nez v13, :cond_4

    .line 188
    const/16 v16, 0x0

    move v15, v14

    .end local v14    # "value":I
    .restart local v15    # "value":I
    goto :goto_0

    .line 190
    .end local v15    # "value":I
    .restart local v14    # "value":I
    :cond_4
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v13, v0, :cond_5

    move v9, v10

    .line 184
    .end local v10    # "size":I
    .restart local v9    # "size":I
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v10, v9

    .end local v9    # "size":I
    .restart local v10    # "size":I
    goto :goto_1

    .line 193
    :cond_5
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "size":I
    .restart local v9    # "size":I
    aput v3, v8, v10

    goto :goto_3

    .line 197
    .end local v6    # "p":Ljava/lang/Object;
    .end local v9    # "size":I
    .end local v13    # "v":I
    .restart local v10    # "size":I
    :cond_6
    aget v4, v8, v16

    .line 198
    .local v4, "index":I
    aget-object v6, p1, v4

    .line 199
    .restart local v6    # "p":Ljava/lang/Object;
    instance-of v0, v6, Ljava/lang/Number;

    move/from16 v18, v0

    if-eqz v18, :cond_d

    move-object v5, v6

    .line 200
    check-cast v5, Ljava/lang/Number;

    .line 201
    .local v5, "n":Ljava/lang/Number;
    aget-object v18, v12, v4

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 202
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, p1, v4

    .line 197
    .end local v5    # "n":Ljava/lang/Number;
    .end local v6    # "p":Ljava/lang/Object;
    :cond_7
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 203
    .restart local v5    # "n":Ljava/lang/Number;
    .restart local v6    # "p":Ljava/lang/Object;
    :cond_8
    aget-object v18, v12, v4

    sget-object v19, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 204
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, p1, v4

    goto :goto_4

    .line 205
    :cond_9
    aget-object v18, v12, v4

    sget-object v19, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 206
    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    aput-object v18, p1, v4

    goto :goto_4

    .line 207
    :cond_a
    aget-object v18, v12, v4

    sget-object v19, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 208
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    aput-object v18, p1, v4

    goto :goto_4

    .line 209
    :cond_b
    aget-object v18, v12, v4

    sget-object v19, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 210
    invoke-virtual {v5}, Ljava/lang/Number;->byteValue()B

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v18

    aput-object v18, p1, v4

    goto :goto_4

    .line 211
    :cond_c
    aget-object v18, v12, v4

    sget-object v19, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 212
    invoke-virtual {v5}, Ljava/lang/Number;->shortValue()S

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v18

    aput-object v18, p1, v4

    goto :goto_4

    .line 213
    .end local v5    # "n":Ljava/lang/Number;
    :cond_d
    instance-of v0, v6, Ljava/lang/Character;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 214
    check-cast v6, Ljava/lang/Character;

    .end local v6    # "p":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v2

    .line 215
    .local v2, "c":C
    aget-object v18, v12, v4

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 216
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, p1, v4

    goto/16 :goto_4

    .line 217
    :cond_e
    aget-object v18, v12, v4

    sget-object v19, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 218
    int-to-long v0, v2

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, p1, v4

    goto/16 :goto_4

    .line 219
    :cond_f
    aget-object v18, v12, v4

    sget-object v19, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_10

    .line 220
    int-to-byte v0, v2

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v18

    aput-object v18, p1, v4

    goto/16 :goto_4

    .line 221
    :cond_10
    aget-object v18, v12, v4

    sget-object v19, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 222
    int-to-short v0, v2

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v18

    aput-object v18, p1, v4

    goto/16 :goto_4
.end method

.method public static methodsForName(Ljava/lang/Class;Ljava/lang/String;)[Ljava/lang/reflect/Method;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 92
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 93
    .local v1, "methods":[Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    array-length v4, v1

    if-nez v4, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-object v3

    .line 96
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v2, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    array-length v6, v1

    move v4, v5

    :goto_1
    if-lt v4, v6, :cond_2

    .line 102
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    new-array v3, v5, [Ljava/lang/reflect/Method;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/reflect/Method;

    goto :goto_0

    .line 97
    :cond_2
    aget-object v0, v1, v4

    .line 98
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 99
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static varargs newInstanceOrThrow(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    const/4 v8, 0x0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 27
    .local v2, "constructors":[Ljava/lang/reflect/Constructor;
    if-eqz v2, :cond_0

    array-length v7, v2

    if-nez v7, :cond_1

    .line 28
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Can\'t get even one available constructor for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 30
    :cond_1
    const/4 v3, 0x0

    .line 31
    .local v3, "found":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    array-length v9, v2

    move v7, v8

    :goto_0
    if-lt v7, v9, :cond_2

    .line 56
    :goto_1
    if-eqz v3, :cond_8

    .line 57
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 58
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    return-object v7

    .line 31
    :cond_2
    aget-object v1, v2, v7

    .line 32
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 33
    .local v0, "arrayOfClass":[Ljava/lang/Class;
    array-length v10, v0

    array-length v11, p1

    if-eq v10, v11, :cond_4

    .line 31
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 36
    :cond_4
    array-length v10, p1

    if-nez v10, :cond_5

    .line 37
    move-object v3, v1

    .line 38
    goto :goto_1

    .line 41
    :cond_5
    const/4 v5, 0x1

    .line 42
    .local v5, "matched":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v10, p1

    if-lt v4, v10, :cond_6

    .line 50
    :goto_3
    if-eqz v5, :cond_3

    .line 51
    move-object v3, v1

    .line 52
    goto :goto_1

    .line 43
    :cond_6
    aget-object v10, p1, v8

    aget-object v11, v0, v4

    invoke-static {v10, v11}, Lcom/autonavi/amapauto/gdarcameraservice/utils/InvokeUtil;->instanceOf(Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v6

    .line 44
    .local v6, "v":I
    if-nez v6, :cond_7

    .line 45
    const/4 v5, 0x0

    .line 46
    goto :goto_3

    .line 42
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 61
    .end local v0    # "arrayOfClass":[Ljava/lang/Class;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "i":I
    .end local v5    # "matched":Z
    .end local v6    # "v":I
    :cond_8
    new-instance v7, Ljava/util/NoSuchElementException;

    const-string v8, "no Constructor match it!!"

    invoke-direct {v7, v8}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static setValueOfField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 237
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "param fieldName is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 240
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 241
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0, p1}, Lcom/autonavi/amapauto/gdarcameraservice/utils/InvokeUtil;->fieldByNameRecursive(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 242
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 243
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 245
    :cond_2
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 246
    return-void
.end method

.method public static wrappedClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 85
    :try_start_0
    const-string v1, "TYPE"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-object v1

    .line 86
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v2

    .line 87
    goto :goto_0
.end method
