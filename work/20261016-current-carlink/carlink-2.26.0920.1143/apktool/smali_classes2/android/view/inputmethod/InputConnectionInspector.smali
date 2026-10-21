.class public final Landroid/view/inputmethod/InputConnectionInspector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputConnectionInspector$MissingMethodFlags;
    }
.end annotation


# static fields
.field private static final sMissingMethodsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/view/inputmethod/InputConnectionInspector;->sMissingMethodsMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMissingMethodFlags(Landroid/view/inputmethod/InputConnection;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p0, Landroid/view/inputmethod/BaseInputConnection;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    return v0

    .line 10
    :cond_1
    instance-of v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    check-cast p0, Landroid/view/inputmethod/InputConnectionWrapper;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->getMissingMethodFlags()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->getMissingMethodFlagsInternal(Ljava/lang/Class;)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public static getMissingMethodFlagsAsString(I)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    and-int/lit8 v1, p0, 0x1

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string v1, "getSelectedText(int)"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move v1, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x1

    .line 19
    :goto_0
    and-int/lit8 v3, p0, 0x2

    .line 20
    .line 21
    const-string v4, ","

    .line 22
    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    :cond_1
    const-string v1, "setComposingRegion(int, int)"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    move v1, v2

    .line 36
    :cond_2
    and-int/lit8 v3, p0, 0x4

    .line 37
    .line 38
    if-eqz v3, :cond_4

    .line 39
    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    :cond_3
    const-string v1, "commitCorrection(CorrectionInfo)"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move v1, v2

    .line 51
    :cond_4
    and-int/lit8 v3, p0, 0x8

    .line 52
    .line 53
    if-eqz v3, :cond_6

    .line 54
    .line 55
    if-nez v1, :cond_5

    .line 56
    .line 57
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    :cond_5
    const-string v1, "requestCursorUpdate(int)"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    move v1, v2

    .line 66
    :cond_6
    and-int/lit8 v3, p0, 0x10

    .line 67
    .line 68
    if-eqz v3, :cond_8

    .line 69
    .line 70
    if-nez v1, :cond_7

    .line 71
    .line 72
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    :cond_7
    const-string v1, "deleteSurroundingTextInCodePoints(int, int)"

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_8
    move v2, v1

    .line 82
    :goto_1
    and-int/lit8 v1, p0, 0x20

    .line 83
    .line 84
    if-eqz v1, :cond_a

    .line 85
    .line 86
    if-nez v2, :cond_9

    .line 87
    .line 88
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    :cond_9
    const-string v1, "getHandler()"

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    :cond_a
    and-int/lit8 v1, p0, 0x40

    .line 97
    .line 98
    if-eqz v1, :cond_c

    .line 99
    .line 100
    if-nez v2, :cond_b

    .line 101
    .line 102
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    :cond_b
    const-string v1, "closeConnection()"

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    :cond_c
    and-int/lit16 p0, p0, 0x80

    .line 111
    .line 112
    if-eqz p0, :cond_e

    .line 113
    .line 114
    if-nez v2, :cond_d

    .line 115
    .line 116
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    :cond_d
    const-string p0, "commitContent(InputContentInfo, Bundle)"

    .line 120
    .line 121
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    return-object p0
.end method

.method public static getMissingMethodFlagsInternal(Ljava/lang/Class;)I
    .locals 3

    .line 1
    sget-object v0, Landroid/view/inputmethod/InputConnectionInspector;->sMissingMethodsMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Integer;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasGetSelectedText(Ljava/lang/Class;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    xor-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasSetComposingRegion(Ljava/lang/Class;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    or-int/lit8 v1, v1, 0x2

    .line 29
    .line 30
    :cond_1
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasCommitCorrection(Ljava/lang/Class;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    or-int/lit8 v1, v1, 0x4

    .line 37
    .line 38
    :cond_2
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasRequestCursorUpdate(Ljava/lang/Class;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    or-int/lit8 v1, v1, 0x8

    .line 45
    .line 46
    :cond_3
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasDeleteSurroundingTextInCodePoints(Ljava/lang/Class;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_4

    .line 51
    .line 52
    or-int/lit8 v1, v1, 0x10

    .line 53
    .line 54
    :cond_4
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasGetHandler(Ljava/lang/Class;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_5

    .line 59
    .line 60
    or-int/lit8 v1, v1, 0x20

    .line 61
    .line 62
    :cond_5
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasCloseConnection(Ljava/lang/Class;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_6

    .line 67
    .line 68
    or-int/lit8 v1, v1, 0x40

    .line 69
    .line 70
    :cond_6
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasCommitContent(Ljava/lang/Class;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_7

    .line 75
    .line 76
    or-int/lit16 v1, v1, 0x80

    .line 77
    .line 78
    :cond_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    return v1
.end method

.method private static hasCloseConnection(Ljava/lang/Class;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "closeConnection"

    .line 3
    .line 4
    new-array v2, v0, [Ljava/lang/Class;

    .line 5
    .line 6
    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    .line 15
    .line 16
    .line 17
    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    xor-int/lit8 p0, p0, 0x1

    .line 19
    .line 20
    return p0

    .line 21
    :catch_0
    return v0
.end method

.method private static hasCommitContent(Ljava/lang/Class;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "commitContent"

    .line 3
    .line 4
    const/4 v2, 0x3

    .line 5
    new-array v2, v2, [Ljava/lang/Class;

    .line 6
    .line 7
    const-class v3, Landroid/view/inputmethod/InputContentInfo;

    .line 8
    .line 9
    aput-object v3, v2, v0

    .line 10
    .line 11
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    aput-object v3, v2, v4

    .line 15
    .line 16
    const-class v3, Landroid/os/Bundle;

    .line 17
    .line 18
    const/4 v5, 0x2

    .line 19
    aput-object v3, v2, v5

    .line 20
    .line 21
    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    .line 30
    .line 31
    .line 32
    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    xor-int/2addr p0, v4

    .line 34
    return p0

    .line 35
    :catch_0
    return v0
.end method

.method private static hasCommitCorrection(Ljava/lang/Class;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "commitCorrection"

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    new-array v3, v2, [Ljava/lang/Class;

    .line 6
    .line 7
    const-class v4, Landroid/view/inputmethod/CorrectionInfo;

    .line 8
    .line 9
    aput-object v4, v3, v0

    .line 10
    .line 11
    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    .line 20
    .line 21
    .line 22
    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    xor-int/2addr p0, v2

    .line 24
    return p0

    .line 25
    :catch_0
    return v0
.end method

.method private static hasDeleteSurroundingTextInCodePoints(Ljava/lang/Class;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "deleteSurroundingTextInCodePoints"

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    new-array v2, v2, [Ljava/lang/Class;

    .line 6
    .line 7
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 8
    .line 9
    aput-object v3, v2, v0

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    aput-object v3, v2, v4

    .line 13
    .line 14
    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    .line 23
    .line 24
    .line 25
    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    xor-int/2addr p0, v4

    .line 27
    return p0

    .line 28
    :catch_0
    return v0
.end method

.method private static hasGetHandler(Ljava/lang/Class;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "getHandler"

    .line 3
    .line 4
    new-array v2, v0, [Ljava/lang/Class;

    .line 5
    .line 6
    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    .line 15
    .line 16
    .line 17
    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    xor-int/lit8 p0, p0, 0x1

    .line 19
    .line 20
    return p0

    .line 21
    :catch_0
    return v0
.end method

.method private static hasGetSelectedText(Ljava/lang/Class;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "getSelectedText"

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    new-array v3, v2, [Ljava/lang/Class;

    .line 6
    .line 7
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 8
    .line 9
    aput-object v4, v3, v0

    .line 10
    .line 11
    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    .line 20
    .line 21
    .line 22
    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    xor-int/2addr p0, v2

    .line 24
    return p0

    .line 25
    :catch_0
    return v0
.end method

.method private static hasRequestCursorUpdate(Ljava/lang/Class;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "requestCursorUpdates"

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    new-array v3, v2, [Ljava/lang/Class;

    .line 6
    .line 7
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 8
    .line 9
    aput-object v4, v3, v0

    .line 10
    .line 11
    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    .line 20
    .line 21
    .line 22
    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    xor-int/2addr p0, v2

    .line 24
    return p0

    .line 25
    :catch_0
    return v0
.end method

.method private static hasSetComposingRegion(Ljava/lang/Class;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "setComposingRegion"

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    new-array v2, v2, [Ljava/lang/Class;

    .line 6
    .line 7
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 8
    .line 9
    aput-object v3, v2, v0

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    aput-object v3, v2, v4

    .line 13
    .line 14
    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    .line 23
    .line 24
    .line 25
    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    xor-int/2addr p0, v4

    .line 27
    return p0

    .line 28
    :catch_0
    return v0
.end method
