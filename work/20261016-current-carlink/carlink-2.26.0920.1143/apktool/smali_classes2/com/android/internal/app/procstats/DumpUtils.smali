.class public final Lcom/android/internal/app/procstats/DumpUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

.field static final ADJ_MEM_TAGS:[Ljava/lang/String;

.field public static final ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

.field static final ADJ_SCREEN_TAGS:[Ljava/lang/String;

.field static final CSV_SEP:Ljava/lang/String; = "\t"

.field public static final STATE_NAMES:[Ljava/lang/String;

.field public static final STATE_NAMES_CSV:[Ljava/lang/String;

.field static final STATE_TAGS:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    const-string v0, "Persist"

    .line 2
    .line 3
    const-string v1, "Top    "

    .line 4
    .line 5
    const-string v2, "ImpFg  "

    .line 6
    .line 7
    const-string v3, "ImpBg  "

    .line 8
    .line 9
    const-string v4, "Backup "

    .line 10
    .line 11
    const-string v5, "HeavyWt"

    .line 12
    .line 13
    const-string v6, "Service"

    .line 14
    .line 15
    const-string v7, "ServRst"

    .line 16
    .line 17
    const-string v8, "Receivr"

    .line 18
    .line 19
    const-string v9, "Home   "

    .line 20
    .line 21
    const-string v10, "LastAct"

    .line 22
    .line 23
    const-string v11, "CchAct "

    .line 24
    .line 25
    const-string v12, "CchCAct"

    .line 26
    .line 27
    const-string v13, "CchEmty"

    .line 28
    .line 29
    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    .line 34
    .line 35
    const-string v0, "off"

    .line 36
    .line 37
    const-string v1, "on"

    .line 38
    .line 39
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    .line 44
    .line 45
    const-string v0, "low"

    .line 46
    .line 47
    const-string v1, "crit"

    .line 48
    .line 49
    const-string v2, "norm"

    .line 50
    .line 51
    const-string v3, "mod"

    .line 52
    .line 53
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    .line 58
    .line 59
    const-string v1, "pers"

    .line 60
    .line 61
    const-string/jumbo v2, "top"

    .line 62
    .line 63
    .line 64
    const-string v3, "impfg"

    .line 65
    .line 66
    const-string v4, "impbg"

    .line 67
    .line 68
    const-string v5, "backup"

    .line 69
    .line 70
    const-string v6, "heavy"

    .line 71
    .line 72
    const-string v7, "service"

    .line 73
    .line 74
    const-string v8, "service-rs"

    .line 75
    .line 76
    const-string v9, "receiver"

    .line 77
    .line 78
    const-string v10, "home"

    .line 79
    .line 80
    const-string v11, "lastact"

    .line 81
    .line 82
    const-string v12, "cch-activity"

    .line 83
    .line 84
    const-string v13, "cch-aclient"

    .line 85
    .line 86
    const-string v14, "cch-empty"

    .line 87
    .line 88
    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    .line 93
    .line 94
    const-string v0, "0"

    .line 95
    .line 96
    const-string v1, "1"

    .line 97
    .line 98
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    .line 103
    .line 104
    const-string v0, "l"

    .line 105
    .line 106
    const-string v1, "c"

    .line 107
    .line 108
    const-string v2, "n"

    .line 109
    .line 110
    const-string v3, "m"

    .line 111
    .line 112
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_TAGS:[Ljava/lang/String;

    .line 117
    .line 118
    const-string v1, "p"

    .line 119
    .line 120
    const-string/jumbo v2, "t"

    .line 121
    .line 122
    .line 123
    const-string v3, "f"

    .line 124
    .line 125
    const-string v4, "b"

    .line 126
    .line 127
    const-string/jumbo v5, "u"

    .line 128
    .line 129
    .line 130
    const-string/jumbo v6, "w"

    .line 131
    .line 132
    .line 133
    const-string v7, "s"

    .line 134
    .line 135
    const-string/jumbo v8, "x"

    .line 136
    .line 137
    .line 138
    const-string v9, "r"

    .line 139
    .line 140
    const-string v10, "h"

    .line 141
    .line 142
    const-string v11, "l"

    .line 143
    .line 144
    const-string v12, "a"

    .line 145
    .line 146
    const-string v13, "c"

    .line 147
    .line 148
    const-string v14, "e"

    .line 149
    .line 150
    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    sput-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    .line 155
    .line 156
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-ne v0, p0, :cond_0

    .line 16
    .line 17
    const-string p0, ""

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    if-lt v0, p0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/16 v1, 0x2e

    .line 27
    .line 28
    if-ne v0, v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_1
    return-object p1
.end method

.method public static dumpAdjTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)V
    .locals 7

    .line 1
    const/4 p1, 0x0

    .line 2
    move v0, p1

    .line 3
    :goto_0
    const/16 v1, 0x8

    .line 4
    .line 5
    if-ge v0, v1, :cond_3

    .line 6
    .line 7
    move v1, p1

    .line 8
    :goto_1
    const/4 v2, 0x4

    .line 9
    if-ge v1, v2, :cond_2

    .line 10
    .line 11
    add-int v2, v1, v0

    .line 12
    .line 13
    aget-wide v3, p2, v2

    .line 14
    .line 15
    if-ne p3, v2, :cond_0

    .line 16
    .line 17
    sub-long v5, p6, p4

    .line 18
    .line 19
    add-long/2addr v3, v5

    .line 20
    :cond_0
    const-wide/16 v5, 0x0

    .line 21
    .line 22
    cmp-long v5, v3, v5

    .line 23
    .line 24
    if-eqz v5, :cond_1

    .line 25
    .line 26
    invoke-static {p0, v2, v3, v4}, Lcom/android/internal/app/procstats/DumpUtils;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 27
    .line 28
    .line 29
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    add-int/lit8 v0, v0, 0x4

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    return-void
.end method

.method public static dumpProcessListCsv(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z[IZ[IZ[IJ)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;Z[IZ[IZ[IJ)V"
        }
    .end annotation

    .line 1
    move-object v10, p0

    .line 2
    const-string v0, "process"

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v11, "\t"

    .line 8
    .line 9
    invoke-virtual {p0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v0, "uid"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string/jumbo v0, "vers"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    move-object/from16 v1, p3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object v1, v0

    .line 34
    :goto_0
    if-eqz p4, :cond_1

    .line 35
    .line 36
    move-object/from16 v2, p5

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move-object v2, v0

    .line 40
    :goto_1
    if-eqz p6, :cond_2

    .line 41
    .line 42
    move-object/from16 v0, p7

    .line 43
    .line 44
    :cond_2
    invoke-static {p0, v11, v1, v2, v0}, Lcom/android/internal/app/procstats/DumpUtils;->dumpStateHeadersCsv(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    add-int/lit8 v0, v0, -0x1

    .line 55
    .line 56
    move v12, v0

    .line 57
    :goto_2
    if-ltz v12, :cond_3

    .line 58
    .line 59
    move-object v13, p1

    .line 60
    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/android/internal/app/procstats/ProcessState;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getUid()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-static {p0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 91
    .line 92
    .line 93
    move-object v1, p0

    .line 94
    move/from16 v2, p2

    .line 95
    .line 96
    move-object/from16 v3, p3

    .line 97
    .line 98
    move/from16 v4, p4

    .line 99
    .line 100
    move-object/from16 v5, p5

    .line 101
    .line 102
    move/from16 v6, p6

    .line 103
    .line 104
    move-object/from16 v7, p7

    .line 105
    .line 106
    move-wide/from16 v8, p8

    .line 107
    .line 108
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/app/procstats/ProcessState;->dumpCsv(Ljava/io/PrintWriter;Z[IZ[IZ[IJ)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 112
    .line 113
    .line 114
    add-int/lit8 v12, v12, -0x1

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_3
    return-void
.end method

.method public static dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJJ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;[I[I[IJJ)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_0

    .line 8
    .line 9
    move-object v1, p2

    .line 10
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    move-object v3, v2

    .line 15
    check-cast v3, Lcom/android/internal/app/procstats/ProcessState;

    .line 16
    .line 17
    move-object v4, p0

    .line 18
    move-object v5, p1

    .line 19
    move-object/from16 v6, p3

    .line 20
    .line 21
    move-object/from16 v7, p4

    .line 22
    .line 23
    move-object/from16 v8, p5

    .line 24
    .line 25
    move-wide/from16 v9, p6

    .line 26
    .line 27
    move-wide/from16 v11, p8

    .line 28
    .line 29
    invoke-virtual/range {v3 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpSummary(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJJ)V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v0, v0, -0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method

.method public static dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    const/4 v3, -0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    move-wide v6, v1

    .line 8
    move v8, v3

    .line 9
    move v5, v4

    .line 10
    :goto_0
    const/16 v9, 0x8

    .line 11
    .line 12
    if-ge v5, v9, :cond_6

    .line 13
    .line 14
    move v10, v3

    .line 15
    move v9, v4

    .line 16
    :goto_1
    const/4 v11, 0x4

    .line 17
    if-ge v9, v11, :cond_5

    .line 18
    .line 19
    add-int v11, v9, v5

    .line 20
    .line 21
    aget-wide v12, p2, v11

    .line 22
    .line 23
    const-string v14, ""

    .line 24
    .line 25
    move/from16 v15, p3

    .line 26
    .line 27
    if-ne v15, v11, :cond_0

    .line 28
    .line 29
    sub-long v16, p6, p4

    .line 30
    .line 31
    add-long v12, v16, v12

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    const-string v14, " (running)"

    .line 36
    .line 37
    :cond_0
    cmp-long v11, v12, v1

    .line 38
    .line 39
    if-eqz v11, :cond_4

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    if-eq v8, v5, :cond_1

    .line 47
    .line 48
    move v8, v5

    .line 49
    goto :goto_2

    .line 50
    :cond_1
    move v8, v3

    .line 51
    :goto_2
    invoke-static {v0, v8}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 52
    .line 53
    .line 54
    if-eq v10, v9, :cond_2

    .line 55
    .line 56
    move v8, v9

    .line 57
    goto :goto_3

    .line 58
    :cond_2
    move v8, v3

    .line 59
    :goto_3
    invoke-static {v0, v8, v4}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 60
    .line 61
    .line 62
    const-string v8, ": "

    .line 63
    .line 64
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    move v8, v5

    .line 74
    move v10, v9

    .line 75
    :cond_3
    add-long/2addr v6, v12

    .line 76
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_5
    move/from16 v15, p3

    .line 80
    .line 81
    add-int/lit8 v5, v5, 0x4

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_6
    cmp-long v1, v6, v1

    .line 85
    .line 86
    if-eqz v1, :cond_7

    .line 87
    .line 88
    if-eqz v0, :cond_7

    .line 89
    .line 90
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string v1, "    TOTAL: "

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    .line 102
    .line 103
    .line 104
    :cond_7
    return-wide v6
.end method

.method private static dumpStateHeadersCsv(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    array-length v1, p2

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move v1, v0

    .line 7
    :goto_0
    if-eqz p3, :cond_1

    .line 8
    .line 9
    array-length v2, p3

    .line 10
    goto :goto_1

    .line 11
    :cond_1
    move v2, v0

    .line 12
    :goto_1
    if-eqz p4, :cond_2

    .line 13
    .line 14
    array-length v3, p4

    .line 15
    goto :goto_2

    .line 16
    :cond_2
    move v3, v0

    .line 17
    :goto_2
    const/4 v4, 0x0

    .line 18
    move v5, v4

    .line 19
    :goto_3
    if-ge v5, v1, :cond_a

    .line 20
    .line 21
    move v6, v4

    .line 22
    :goto_4
    if-ge v6, v2, :cond_9

    .line 23
    .line 24
    move v7, v4

    .line 25
    :goto_5
    if-ge v7, v3, :cond_8

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    if-eqz p2, :cond_3

    .line 31
    .line 32
    array-length v8, p2

    .line 33
    if-le v8, v0, :cond_3

    .line 34
    .line 35
    aget v8, p2, v5

    .line 36
    .line 37
    invoke-static {p0, v8}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabelCsv(Ljava/io/PrintWriter;I)V

    .line 38
    .line 39
    .line 40
    move v8, v0

    .line 41
    goto :goto_6

    .line 42
    :cond_3
    move v8, v4

    .line 43
    :goto_6
    const-string v9, "-"

    .line 44
    .line 45
    if-eqz p3, :cond_5

    .line 46
    .line 47
    array-length v10, p3

    .line 48
    if-le v10, v0, :cond_5

    .line 49
    .line 50
    if-eqz v8, :cond_4

    .line 51
    .line 52
    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_4
    aget v8, p3, v6

    .line 56
    .line 57
    invoke-static {p0, v8}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabelCsv(Ljava/io/PrintWriter;I)V

    .line 58
    .line 59
    .line 60
    move v8, v0

    .line 61
    :cond_5
    if-eqz p4, :cond_7

    .line 62
    .line 63
    array-length v10, p4

    .line 64
    if-le v10, v0, :cond_7

    .line 65
    .line 66
    if-eqz v8, :cond_6

    .line 67
    .line 68
    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_6
    sget-object v8, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    .line 72
    .line 73
    aget v9, p4, v7

    .line 74
    .line 75
    aget-object v8, v8, v9

    .line 76
    .line 77
    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 81
    .line 82
    goto :goto_5

    .line 83
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_a
    return-void
.end method

.method public static printAdjTag(Ljava/io/PrintWriter;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_TAGS:[Ljava/lang/String;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V
    .locals 1

    .line 1
    const/16 v0, 0x2c

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/android/internal/app/procstats/DumpUtils;->printAdjTag(Ljava/io/PrintWriter;I)V

    .line 7
    .line 8
    .line 9
    const/16 p1, 0x3a

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(C)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I
    .locals 2

    .line 1
    div-int v0, p2, p3

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    array-length v1, p1

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    aget-object p1, p1, v0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 p1, 0x3f

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(C)V

    .line 17
    .line 18
    .line 19
    :goto_0
    mul-int/2addr v0, p3

    .line 20
    sub-int/2addr p2, v0

    .line 21
    return p2
.end method

.method public static printMemLabel(Ljava/io/PrintWriter;IC)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_4

    .line 3
    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    const-string p1, "????"

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    if-eqz p2, :cond_5

    .line 21
    .line 22
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string p1, "Crit"

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    if-eqz p2, :cond_5

    .line 32
    .line 33
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-string p1, "Low "

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    if-eqz p2, :cond_5

    .line 43
    .line 44
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const-string p1, "Mod "

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    if-eqz p2, :cond_5

    .line 54
    .line 55
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const-string p1, "Norm"

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    if-eqz p2, :cond_5

    .line 65
    .line 66
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    const-string p1, "    "

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    if-eqz p2, :cond_5

    .line 76
    .line 77
    const/16 p1, 0x20

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(C)V

    .line 80
    .line 81
    .line 82
    :cond_5
    :goto_0
    return-void
.end method

.method public static printMemLabelCsv(Ljava/io/PrintWriter;I)V
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    if-gt p1, v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    .line 7
    .line 8
    aget-object p1, v0, p1

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string p1, "???"

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    return-void
.end method

.method public static printPercent(Ljava/io/PrintWriter;D)V
    .locals 5

    .line 1
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 2
    .line 3
    mul-double/2addr p1, v0

    .line 4
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 5
    .line 6
    cmpg-double v0, p1, v0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-gez v0, :cond_0

    .line 11
    .line 12
    new-array v0, v2, [Ljava/lang/Object;

    .line 13
    .line 14
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    aput-object p1, v0, v1

    .line 19
    .line 20
    const-string p1, "%.2f"

    .line 21
    .line 22
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    .line 31
    .line 32
    cmpg-double v0, p1, v3

    .line 33
    .line 34
    if-gez v0, :cond_1

    .line 35
    .line 36
    new-array v0, v2, [Ljava/lang/Object;

    .line 37
    .line 38
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    aput-object p1, v0, v1

    .line 43
    .line 44
    const-string p1, "%.1f"

    .line 45
    .line 46
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    .line 55
    .line 56
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    aput-object p1, v0, v1

    .line 61
    .line 62
    const-string p1, "%.0f"

    .line 63
    .line 64
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :goto_0
    const-string p1, "%"

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public static printProcStateTag(Ljava/io/PrintWriter;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    .line 2
    .line 3
    const/16 v1, 0x38

    .line 4
    .line 5
    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_TAGS:[Ljava/lang/String;

    .line 10
    .line 11
    const/16 v1, 0xe

    .line 12
    .line 13
    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V
    .locals 1

    .line 1
    const/16 v0, 0x2c

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTag(Ljava/io/PrintWriter;I)V

    .line 7
    .line 8
    .line 9
    const/16 p1, 0x3a

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(C)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static printScreenLabel(Ljava/io/PrintWriter;I)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_2

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    const-string p1, "????/"

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string p1, "SOn /"

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const-string p1, "SOff/"

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const-string p1, "     "

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public static printScreenLabelCsv(Ljava/io/PrintWriter;I)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_2

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    const-string p1, "???"

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object p1, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    aget-object p1, p1, v0

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    sget-object p1, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    aget-object p1, p1, v0

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_0
    return-void
.end method
