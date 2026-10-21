.class public Landroid/filterfw/io/TextGraphReader;
.super Landroid/filterfw/io/GraphReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterfw/io/TextGraphReader$ConnectCommand;,
        Landroid/filterfw/io/TextGraphReader$InitFilterCommand;,
        Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;,
        Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;,
        Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;,
        Landroid/filterfw/io/TextGraphReader$Command;
    }
.end annotation


# instance fields
.field private mBoundReferences:Landroid/filterfw/core/KeyValueMap;

.field private mCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/filterfw/io/TextGraphReader$Command;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentFilter:Landroid/filterfw/core/Filter;

.field private mCurrentGraph:Landroid/filterfw/core/FilterGraph;

.field private mFactory:Landroid/filterfw/core/FilterFactory;

.field private mSettings:Landroid/filterfw/core/KeyValueMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/filterfw/io/GraphReader;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic access$000(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterFactory;
    .locals 0

    iget-object p0, p0, Landroid/filterfw/io/TextGraphReader;->mFactory:Landroid/filterfw/core/FilterFactory;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/Filter;
    .locals 0

    iget-object p0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentFilter:Landroid/filterfw/core/Filter;

    return-object p0
.end method

.method public static synthetic access$102(Landroid/filterfw/io/TextGraphReader;Landroid/filterfw/core/Filter;)Landroid/filterfw/core/Filter;
    .locals 0

    iput-object p1, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentFilter:Landroid/filterfw/core/Filter;

    return-object p1
.end method

.method public static synthetic access$200(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterGraph;
    .locals 0

    iget-object p0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    return-object p0
.end method

.method private applySettings()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_5

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    iget-object v2, p0, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v3, "autoBranch"

    .line 30
    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_3

    .line 36
    .line 37
    const-class v3, Ljava/lang/String;

    .line 38
    .line 39
    invoke-direct {p0, v1, v2, v3}, Landroid/filterfw/io/TextGraphReader;->expectSettingClass(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 40
    .line 41
    .line 42
    const-string/jumbo v1, "synced"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    iget-object v1, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-virtual {v1, v2}, Landroid/filterfw/core/FilterGraph;->setAutoBranchMode(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const-string/jumbo v1, "unsynced"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    iget-object v1, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    .line 68
    .line 69
    const/4 v2, 0x2

    .line 70
    invoke-virtual {v1, v2}, Landroid/filterfw/core/FilterGraph;->setAutoBranchMode(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const-string/jumbo v1, "off"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    iget-object v1, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    .line 84
    .line 85
    const/4 v2, 0x0

    .line 86
    invoke-virtual {v1, v2}, Landroid/filterfw/core/FilterGraph;->setAutoBranchMode(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    .line 91
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v3, "Unknown autobranch setting: "

    .line 95
    .line 96
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v2, "!"

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-direct {v0, v1}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw v0

    .line 115
    :cond_3
    const-string v3, "discardUnconnectedOutputs"

    .line 116
    .line 117
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_4

    .line 122
    .line 123
    const-class v3, Ljava/lang/Boolean;

    .line 124
    .line 125
    invoke-direct {p0, v1, v2, v3}, Landroid/filterfw/io/TextGraphReader;->expectSettingClass(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    .line 129
    .line 130
    check-cast v2, Ljava/lang/Boolean;

    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    invoke-virtual {v1, v2}, Landroid/filterfw/core/FilterGraph;->setDiscardUnconnectedOutputs(Z)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_4
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    .line 141
    .line 142
    const-string v2, "Unknown @setting \'"

    .line 143
    .line 144
    const-string v3, "\'!"

    .line 145
    .line 146
    invoke-static {v2, v1, v3}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-direct {v0, v1}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw v0

    .line 154
    :cond_5
    return-void
.end method

.method private bindExternal(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/filterfw/io/GraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/filterfw/io/GraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    .line 16
    .line 17
    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    .line 22
    .line 23
    const-string v1, "Unknown external variable \'"

    .line 24
    .line 25
    const-string v2, "\'! You must add a reference to this external in the host program using addReference(...)!"

    .line 26
    .line 27
    invoke-static {v1, p1, v2}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, p1}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method

.method private checkReferences()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/filterfw/io/GraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    iget-object v2, p0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    .line 33
    .line 34
    const-string v2, "Host program specifies reference to \'"

    .line 35
    .line 36
    const-string v3, "\', which is not declared @external in graph file!"

    .line 37
    .line 38
    invoke-static {v2, v1, v3}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {v0, v1}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_1
    return-void
.end method

.method private executeCommands()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/filterfw/io/TextGraphReader$Command;

    .line 18
    .line 19
    invoke-interface {v1, p0}, Landroid/filterfw/io/TextGraphReader$Command;->execute(Landroid/filterfw/io/TextGraphReader;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private expectSettingClass(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-ne v0, p3, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    .line 9
    .line 10
    const-string v1, "Setting \'"

    .line 11
    .line 12
    const-string v2, "\' must have a value of type "

    .line 13
    .line 14
    invoke-static {v1, p1, v2}, Landroid/accessibilityservice/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p3, ", but found a value of type "

    .line 26
    .line 27
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p2, "!"

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {v0, p1}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0
.end method

.method private parseString(Ljava/lang/String;)V
    .locals 27

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    const-string v0, "@[a-zA-Z]+"

    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    .line 7
    .line 8
    move-result-object v7

    .line 9
    const-string v0, "\\}"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v8

    .line 15
    const-string v0, "\\{"

    .line 16
    .line 17
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 18
    .line 19
    .line 20
    move-result-object v9

    .line 21
    const-string v0, "(\\s+|//[^\\n]*\\n)+"

    .line 22
    .line 23
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "[a-zA-Z\\.]+"

    .line 28
    .line 29
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 30
    .line 31
    .line 32
    move-result-object v10

    .line 33
    const-string v1, "[a-zA-Z\\./:]+"

    .line 34
    .line 35
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 36
    .line 37
    .line 38
    move-result-object v11

    .line 39
    const-string v1, "\\[[a-zA-Z0-9\\-_]+\\]"

    .line 40
    .line 41
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 42
    .line 43
    .line 44
    move-result-object v12

    .line 45
    const-string v13, "=>"

    .line 46
    .line 47
    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 48
    .line 49
    .line 50
    move-result-object v14

    .line 51
    const-string v15, ";"

    .line 52
    .line 53
    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    const-string v1, "[a-zA-Z0-9\\-_]+"

    .line 58
    .line 59
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    new-instance v3, Landroid/filterfw/io/PatternScanner;

    .line 64
    .line 65
    move-object/from16 v1, p1

    .line 66
    .line 67
    invoke-direct {v3, v1, v0}, Landroid/filterfw/io/PatternScanner;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    .line 68
    .line 69
    .line 70
    const/16 v16, 0x0

    .line 71
    .line 72
    const/4 v0, 0x0

    .line 73
    move-object v2, v0

    .line 74
    move-object/from16 v17, v2

    .line 75
    .line 76
    move-object/from16 v18, v17

    .line 77
    .line 78
    move-object/from16 v19, v18

    .line 79
    .line 80
    move/from16 v0, v16

    .line 81
    .line 82
    :goto_0
    invoke-virtual {v3}, Landroid/filterfw/io/PatternScanner;->atEnd()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_7

    .line 87
    .line 88
    const/4 v1, 0x1

    .line 89
    packed-switch v0, :pswitch_data_0

    .line 90
    .line 91
    .line 92
    :goto_1
    move-object/from16 v25, v5

    .line 93
    .line 94
    move-object v5, v7

    .line 95
    move-object/from16 v21, v15

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :pswitch_0
    invoke-virtual {v3, v5, v15}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-object/from16 v25, v5

    .line 102
    .line 103
    move-object v5, v7

    .line 104
    move-object/from16 v21, v15

    .line 105
    .line 106
    move/from16 v0, v16

    .line 107
    .line 108
    :goto_2
    move-object v7, v4

    .line 109
    move-object v4, v10

    .line 110
    move-object/from16 v26, v3

    .line 111
    .line 112
    move-object v3, v2

    .line 113
    move-object v2, v11

    .line 114
    move-object/from16 v11, v26

    .line 115
    .line 116
    goto/16 :goto_8

    .line 117
    .line 118
    :pswitch_1
    invoke-direct {v6, v3, v5}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-object v1, v6, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    .line 123
    .line 124
    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :pswitch_2
    const-string v0, "<external-identifier>"

    .line 129
    .line 130
    invoke-virtual {v3, v4, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-direct {v6, v0}, Landroid/filterfw/io/TextGraphReader;->bindExternal(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    goto :goto_3

    .line 138
    :pswitch_3
    invoke-direct {v6, v3, v5}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iget-object v1, v6, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    .line 143
    .line 144
    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 145
    .line 146
    .line 147
    :goto_3
    const/16 v0, 0x10

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :pswitch_4
    const-string v0, "[<target-port-name>]"

    .line 151
    .line 152
    invoke-virtual {v3, v12, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 157
    .line 158
    .line 159
    move-result v20

    .line 160
    move-object/from16 p1, v2

    .line 161
    .line 162
    add-int/lit8 v2, v20, -0x1

    .line 163
    .line 164
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v20

    .line 168
    iget-object v2, v6, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    .line 169
    .line 170
    new-instance v1, Landroid/filterfw/io/TextGraphReader$ConnectCommand;

    .line 171
    .line 172
    move-object v0, v1

    .line 173
    move-object/from16 v21, v15

    .line 174
    .line 175
    move-object v15, v1

    .line 176
    move-object/from16 v1, p0

    .line 177
    .line 178
    move-object/from16 v22, v7

    .line 179
    .line 180
    move-object/from16 v23, v10

    .line 181
    .line 182
    move-object/from16 v7, p1

    .line 183
    .line 184
    move-object v10, v2

    .line 185
    move-object/from16 v2, v17

    .line 186
    .line 187
    move-object/from16 v24, v11

    .line 188
    .line 189
    move-object v11, v3

    .line 190
    move-object/from16 v3, v18

    .line 191
    .line 192
    move-object v7, v4

    .line 193
    move-object/from16 v4, v19

    .line 194
    .line 195
    move-object/from16 v25, v5

    .line 196
    .line 197
    move-object/from16 v5, v20

    .line 198
    .line 199
    invoke-direct/range {v0 .. v5}, Landroid/filterfw/io/TextGraphReader$ConnectCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-object/from16 v3, p1

    .line 206
    .line 207
    move-object/from16 v4, v23

    .line 208
    .line 209
    move-object/from16 v2, v24

    .line 210
    .line 211
    goto/16 :goto_7

    .line 212
    .line 213
    :pswitch_5
    move-object/from16 p1, v2

    .line 214
    .line 215
    move-object/from16 v25, v5

    .line 216
    .line 217
    move-object/from16 v22, v7

    .line 218
    .line 219
    move-object/from16 v23, v10

    .line 220
    .line 221
    move-object/from16 v24, v11

    .line 222
    .line 223
    move-object/from16 v21, v15

    .line 224
    .line 225
    move-object v11, v3

    .line 226
    move-object v7, v4

    .line 227
    const-string v0, "<target-filter-name>"

    .line 228
    .line 229
    invoke-virtual {v11, v7, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v19

    .line 233
    const/16 v0, 0xc

    .line 234
    .line 235
    goto/16 :goto_4

    .line 236
    .line 237
    :pswitch_6
    move-object/from16 p1, v2

    .line 238
    .line 239
    move-object/from16 v25, v5

    .line 240
    .line 241
    move-object/from16 v22, v7

    .line 242
    .line 243
    move-object/from16 v23, v10

    .line 244
    .line 245
    move-object/from16 v24, v11

    .line 246
    .line 247
    move-object/from16 v21, v15

    .line 248
    .line 249
    move-object v11, v3

    .line 250
    move-object v7, v4

    .line 251
    invoke-virtual {v11, v14, v13}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    const/16 v0, 0xb

    .line 255
    .line 256
    goto/16 :goto_4

    .line 257
    .line 258
    :pswitch_7
    move-object/from16 p1, v2

    .line 259
    .line 260
    move-object/from16 v25, v5

    .line 261
    .line 262
    move-object/from16 v22, v7

    .line 263
    .line 264
    move-object/from16 v23, v10

    .line 265
    .line 266
    move-object/from16 v24, v11

    .line 267
    .line 268
    move-object/from16 v21, v15

    .line 269
    .line 270
    move-object v11, v3

    .line 271
    move-object v7, v4

    .line 272
    const-string v0, "[<source-port-name>]"

    .line 273
    .line 274
    invoke-virtual {v11, v12, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    sub-int/2addr v2, v1

    .line 283
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v18

    .line 287
    const/16 v0, 0xa

    .line 288
    .line 289
    goto/16 :goto_4

    .line 290
    .line 291
    :pswitch_8
    move-object/from16 p1, v2

    .line 292
    .line 293
    move-object/from16 v25, v5

    .line 294
    .line 295
    move-object/from16 v22, v7

    .line 296
    .line 297
    move-object/from16 v23, v10

    .line 298
    .line 299
    move-object/from16 v24, v11

    .line 300
    .line 301
    move-object/from16 v21, v15

    .line 302
    .line 303
    move-object v11, v3

    .line 304
    move-object v7, v4

    .line 305
    const-string v0, "<source-filter-name>"

    .line 306
    .line 307
    invoke-virtual {v11, v7, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v17

    .line 311
    const/16 v0, 0x9

    .line 312
    .line 313
    goto :goto_4

    .line 314
    :pswitch_9
    move-object/from16 p1, v2

    .line 315
    .line 316
    move-object/from16 v25, v5

    .line 317
    .line 318
    move-object/from16 v22, v7

    .line 319
    .line 320
    move-object/from16 v23, v10

    .line 321
    .line 322
    move-object/from16 v24, v11

    .line 323
    .line 324
    move-object/from16 v21, v15

    .line 325
    .line 326
    move-object v11, v3

    .line 327
    move-object v7, v4

    .line 328
    const-string/jumbo v0, "}"

    .line 329
    .line 330
    .line 331
    invoke-virtual {v11, v8, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move/from16 v0, v16

    .line 335
    .line 336
    goto :goto_4

    .line 337
    :pswitch_a
    move-object/from16 p1, v2

    .line 338
    .line 339
    move-object/from16 v25, v5

    .line 340
    .line 341
    move-object/from16 v22, v7

    .line 342
    .line 343
    move-object/from16 v23, v10

    .line 344
    .line 345
    move-object/from16 v24, v11

    .line 346
    .line 347
    move-object/from16 v21, v15

    .line 348
    .line 349
    move-object v11, v3

    .line 350
    move-object v7, v4

    .line 351
    invoke-direct {v6, v11, v8}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    iget-object v1, v6, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    .line 356
    .line 357
    new-instance v2, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;

    .line 358
    .line 359
    invoke-direct {v2, v6, v0}, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Landroid/filterfw/core/KeyValueMap;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    const/4 v0, 0x7

    .line 366
    goto :goto_4

    .line 367
    :pswitch_b
    move-object/from16 p1, v2

    .line 368
    .line 369
    move-object/from16 v25, v5

    .line 370
    .line 371
    move-object/from16 v22, v7

    .line 372
    .line 373
    move-object/from16 v23, v10

    .line 374
    .line 375
    move-object/from16 v24, v11

    .line 376
    .line 377
    move-object/from16 v21, v15

    .line 378
    .line 379
    move-object v11, v3

    .line 380
    move-object v7, v4

    .line 381
    const-string/jumbo v0, "{"

    .line 382
    .line 383
    .line 384
    invoke-virtual {v11, v9, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    const/4 v0, 0x6

    .line 388
    :goto_4
    move-object/from16 v3, p1

    .line 389
    .line 390
    goto :goto_6

    .line 391
    :pswitch_c
    move-object/from16 p1, v2

    .line 392
    .line 393
    move-object/from16 v25, v5

    .line 394
    .line 395
    move-object/from16 v22, v7

    .line 396
    .line 397
    move-object/from16 v23, v10

    .line 398
    .line 399
    move-object/from16 v24, v11

    .line 400
    .line 401
    move-object/from16 v21, v15

    .line 402
    .line 403
    move-object v11, v3

    .line 404
    move-object v7, v4

    .line 405
    const-string v0, "<filter-name>"

    .line 406
    .line 407
    invoke-virtual {v11, v7, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    iget-object v1, v6, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    .line 412
    .line 413
    new-instance v2, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;

    .line 414
    .line 415
    move-object/from16 v3, p1

    .line 416
    .line 417
    invoke-direct {v2, v6, v3, v0}, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    const/4 v0, 0x5

    .line 424
    move-object v2, v3

    .line 425
    goto :goto_5

    .line 426
    :pswitch_d
    move-object/from16 v25, v5

    .line 427
    .line 428
    move-object/from16 v22, v7

    .line 429
    .line 430
    move-object/from16 v23, v10

    .line 431
    .line 432
    move-object/from16 v24, v11

    .line 433
    .line 434
    move-object/from16 v21, v15

    .line 435
    .line 436
    move-object v11, v3

    .line 437
    move-object v7, v4

    .line 438
    const-string v0, "<class-name>"

    .line 439
    .line 440
    invoke-virtual {v11, v7, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    const/4 v0, 0x4

    .line 445
    :goto_5
    move-object v3, v2

    .line 446
    :goto_6
    move-object/from16 v5, v22

    .line 447
    .line 448
    move-object/from16 v4, v23

    .line 449
    .line 450
    move-object/from16 v2, v24

    .line 451
    .line 452
    goto/16 :goto_8

    .line 453
    .line 454
    :pswitch_e
    move-object/from16 v25, v5

    .line 455
    .line 456
    move-object/from16 v22, v7

    .line 457
    .line 458
    move-object/from16 v23, v10

    .line 459
    .line 460
    move-object/from16 v24, v11

    .line 461
    .line 462
    move-object/from16 v21, v15

    .line 463
    .line 464
    move-object v11, v3

    .line 465
    move-object v7, v4

    .line 466
    move-object v3, v2

    .line 467
    const-string v0, "<library-name>"

    .line 468
    .line 469
    move-object/from16 v2, v24

    .line 470
    .line 471
    invoke-virtual {v11, v2, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    iget-object v1, v6, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    .line 476
    .line 477
    new-instance v4, Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;

    .line 478
    .line 479
    invoke-direct {v4, v6, v0}, Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    move-object/from16 v4, v23

    .line 486
    .line 487
    goto :goto_7

    .line 488
    :pswitch_f
    move-object/from16 v25, v5

    .line 489
    .line 490
    move-object/from16 v22, v7

    .line 491
    .line 492
    move-object/from16 v23, v10

    .line 493
    .line 494
    move-object/from16 v21, v15

    .line 495
    .line 496
    move-object v7, v4

    .line 497
    move-object/from16 v26, v3

    .line 498
    .line 499
    move-object v3, v2

    .line 500
    move-object v2, v11

    .line 501
    move-object/from16 v11, v26

    .line 502
    .line 503
    const-string v0, "<package-name>"

    .line 504
    .line 505
    move-object/from16 v4, v23

    .line 506
    .line 507
    invoke-virtual {v11, v4, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    iget-object v1, v6, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    .line 512
    .line 513
    new-instance v5, Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;

    .line 514
    .line 515
    invoke-direct {v5, v6, v0}, Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    .line 520
    .line 521
    :goto_7
    const/16 v0, 0x10

    .line 522
    .line 523
    move-object/from16 v5, v22

    .line 524
    .line 525
    goto/16 :goto_8

    .line 526
    .line 527
    :pswitch_10
    move-object/from16 v25, v5

    .line 528
    .line 529
    move-object/from16 v22, v7

    .line 530
    .line 531
    move-object/from16 v21, v15

    .line 532
    .line 533
    move-object v7, v4

    .line 534
    move-object v4, v10

    .line 535
    move-object/from16 v26, v3

    .line 536
    .line 537
    move-object v3, v2

    .line 538
    move-object v2, v11

    .line 539
    move-object/from16 v11, v26

    .line 540
    .line 541
    const-string v0, "<command>"

    .line 542
    .line 543
    move-object/from16 v5, v22

    .line 544
    .line 545
    invoke-virtual {v11, v5, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    const-string v10, "@import"

    .line 550
    .line 551
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 552
    .line 553
    .line 554
    move-result v10

    .line 555
    if-eqz v10, :cond_0

    .line 556
    .line 557
    move v0, v1

    .line 558
    goto :goto_8

    .line 559
    :cond_0
    const-string v1, "@library"

    .line 560
    .line 561
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 562
    .line 563
    .line 564
    move-result v1

    .line 565
    if-eqz v1, :cond_1

    .line 566
    .line 567
    const/4 v0, 0x2

    .line 568
    goto :goto_8

    .line 569
    :cond_1
    const-string v1, "@filter"

    .line 570
    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    move-result v1

    .line 575
    if-eqz v1, :cond_2

    .line 576
    .line 577
    const/4 v0, 0x3

    .line 578
    goto :goto_8

    .line 579
    :cond_2
    const-string v1, "@connect"

    .line 580
    .line 581
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 582
    .line 583
    .line 584
    move-result v1

    .line 585
    if-eqz v1, :cond_3

    .line 586
    .line 587
    const/16 v0, 0x8

    .line 588
    .line 589
    goto :goto_8

    .line 590
    :cond_3
    const-string v1, "@set"

    .line 591
    .line 592
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    move-result v1

    .line 596
    if-eqz v1, :cond_4

    .line 597
    .line 598
    const/16 v0, 0xd

    .line 599
    .line 600
    goto :goto_8

    .line 601
    :cond_4
    const-string v1, "@external"

    .line 602
    .line 603
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 604
    .line 605
    .line 606
    move-result v1

    .line 607
    if-eqz v1, :cond_5

    .line 608
    .line 609
    const/16 v0, 0xe

    .line 610
    .line 611
    goto :goto_8

    .line 612
    :cond_5
    const-string v1, "@setting"

    .line 613
    .line 614
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 615
    .line 616
    .line 617
    move-result v1

    .line 618
    if-eqz v1, :cond_6

    .line 619
    .line 620
    const/16 v0, 0xf

    .line 621
    .line 622
    goto :goto_8

    .line 623
    :cond_6
    new-instance v1, Landroid/filterfw/io/GraphIOException;

    .line 624
    .line 625
    const-string v2, "Unknown command \'"

    .line 626
    .line 627
    const-string v3, "\'!"

    .line 628
    .line 629
    invoke-static {v2, v0, v3}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    invoke-direct {v1, v0}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    .line 634
    .line 635
    .line 636
    throw v1

    .line 637
    :goto_8
    move-object v10, v4

    .line 638
    move-object v4, v7

    .line 639
    move-object/from16 v15, v21

    .line 640
    .line 641
    move-object v7, v5

    .line 642
    move-object/from16 v5, v25

    .line 643
    .line 644
    move-object/from16 v26, v11

    .line 645
    .line 646
    move-object v11, v2

    .line 647
    move-object v2, v3

    .line 648
    move-object/from16 v3, v26

    .line 649
    .line 650
    goto/16 :goto_0

    .line 651
    .line 652
    :cond_7
    const/16 v1, 0x10

    .line 653
    .line 654
    if-eq v0, v1, :cond_9

    .line 655
    .line 656
    if-nez v0, :cond_8

    .line 657
    .line 658
    goto :goto_9

    .line 659
    :cond_8
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    .line 660
    .line 661
    const-string v1, "Unexpected end of input!"

    .line 662
    .line 663
    invoke-direct {v0, v1}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    .line 664
    .line 665
    .line 666
    throw v0

    .line 667
    :cond_9
    :goto_9
    return-void

    .line 668
    nop

    .line 669
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "="

    .line 4
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v3, ";"

    .line 5
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    const-string v5, "[a-zA-Z]+[a-zA-Z0-9]*"

    .line 6
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    const-string v6, "\'[^\']*\'|\\\"[^\\\"]*\\\""

    .line 7
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    const-string v7, "[0-9]+"

    .line 8
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const-string v8, "[0-9]*\\.[0-9]+f?"

    .line 9
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    const-string v9, "\\$[a-zA-Z]+[a-zA-Z0-9]"

    .line 10
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    const-string/jumbo v10, "true|false"

    .line 11
    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 12
    new-instance v11, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v11}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 13
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/io/PatternScanner;->atEnd()Z

    move-result v14

    if-nez v14, :cond_c

    if-eqz p2, :cond_0

    invoke-virtual/range {p1 .. p2}, Landroid/filterfw/io/PatternScanner;->peek(Ljava/util/regex/Pattern;)Z

    move-result v14

    if-nez v14, :cond_c

    :cond_0
    const/4 v14, 0x1

    if-eqz v12, :cond_b

    const/4 v15, 0x2

    if-eq v12, v14, :cond_a

    if-eq v12, v15, :cond_2

    const/4 v14, 0x3

    if-eq v12, v14, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v0, v4, v3}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    const/4 v12, 0x0

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {v0, v6}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 16
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v15, v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v13, v12}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v14, p0

    goto :goto_2

    .line 17
    :cond_3
    invoke-virtual {v0, v9}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 18
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v12, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v14, p0

    .line 19
    iget-object v15, v14, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    if-eqz v15, :cond_4

    .line 20
    invoke-virtual {v15, v12}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    goto :goto_1

    :cond_4
    const/4 v15, 0x0

    :goto_1
    if-eqz v15, :cond_5

    .line 21
    invoke-virtual {v11, v13, v15}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 22
    :cond_5
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    const-string v1, "Unknown object reference to \'"

    const-string v2, "\'!"

    .line 23
    invoke-static {v1, v12, v2}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move-object/from16 v14, p0

    .line 25
    invoke-virtual {v0, v10}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 26
    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, v13, v12}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 27
    :cond_7
    invoke-virtual {v0, v8}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 28
    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v13, v12}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 29
    :cond_8
    invoke-virtual {v0, v7}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_9

    .line 30
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v13, v12}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const/4 v12, 0x3

    goto/16 :goto_0

    .line 31
    :cond_9
    new-instance v1, Landroid/filterfw/io/GraphIOException;

    const-string v2, "<value>"

    invoke-virtual {v0, v2}, Landroid/filterfw/io/PatternScanner;->unexpectedTokenMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    move-object/from16 v14, p0

    .line 32
    invoke-virtual {v0, v2, v1}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move v12, v15

    goto/16 :goto_0

    :cond_b
    const-string v12, "<identifier>"

    .line 33
    invoke-virtual {v0, v5, v12}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v13, v12

    move v12, v14

    goto/16 :goto_0

    :cond_c
    if-eqz v12, :cond_e

    const/4 v1, 0x3

    if-ne v12, v1, :cond_d

    goto :goto_3

    .line 34
    :cond_d
    new-instance v1, Landroid/filterfw/io/GraphIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected end of assignments on line "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/io/PatternScanner;->lineNo()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    :goto_3
    return-object v11
.end method

.method private reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    .line 3
    .line 4
    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentFilter:Landroid/filterfw/core/Filter;

    .line 5
    .line 6
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    .line 17
    .line 18
    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    .line 24
    .line 25
    new-instance v0, Landroid/filterfw/core/FilterFactory;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/filterfw/core/FilterFactory;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mFactory:Landroid/filterfw/core/FilterFactory;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public readGraphString(Ljava/lang/String;)Landroid/filterfw/core/FilterGraph;
    .locals 1

    .line 1
    new-instance v0, Landroid/filterfw/core/FilterGraph;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/filterfw/core/FilterGraph;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->reset()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    .line 10
    .line 11
    invoke-direct {p0, p1}, Landroid/filterfw/io/TextGraphReader;->parseString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->applySettings()V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->executeCommands()V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->reset()V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public readKeyValueAssignments(Ljava/lang/String;)Landroid/filterfw/core/KeyValueMap;
    .locals 2

    const-string v0, "\\s+"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/filterfw/io/PatternScanner;

    invoke-direct {v1, p1, v0}, Landroid/filterfw/io/PatternScanner;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, v1, p1}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    move-result-object p1

    return-object p1
.end method
