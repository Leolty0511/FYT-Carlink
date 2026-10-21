.class public Lcom/android/internal/app/procstats/SysMemUsageTable;
.super Lcom/android/internal/app/procstats/SparseMappingTable$Table;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    return-void
.end method

.method private dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string p2, ": "

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    int-to-byte p2, p4

    .line 13
    invoke-virtual {p0, p2, p5}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValueForId(BI)J

    .line 14
    .line 15
    .line 16
    move-result-wide p3

    .line 17
    const-wide/16 v0, 0x400

    .line 18
    .line 19
    mul-long/2addr p3, v0

    .line 20
    invoke-static {p1, p3, p4}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 21
    .line 22
    .line 23
    const-string p3, " min, "

    .line 24
    .line 25
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    add-int/lit8 p3, p5, 0x1

    .line 29
    .line 30
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValueForId(BI)J

    .line 31
    .line 32
    .line 33
    move-result-wide p3

    .line 34
    mul-long/2addr p3, v0

    .line 35
    invoke-static {p1, p3, p4}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 36
    .line 37
    .line 38
    const-string p3, " avg, "

    .line 39
    .line 40
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    add-int/lit8 p5, p5, 0x2

    .line 44
    .line 45
    invoke-virtual {p0, p2, p5}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValueForId(BI)J

    .line 46
    .line 47
    .line 48
    move-result-wide p2

    .line 49
    mul-long/2addr p2, v0

    .line 50
    invoke-static {p1, p2, p3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 51
    .line 52
    .line 53
    const-string p2, " max"

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public static mergeSysMemUsage([JI[JI)V
    .locals 16

    .line 1
    add-int/lit8 v0, p1, 0x0

    .line 2
    .line 3
    aget-wide v1, p0, v0

    .line 4
    .line 5
    add-int/lit8 v3, p3, 0x0

    .line 6
    .line 7
    aget-wide v3, p2, v3

    .line 8
    .line 9
    const-wide/16 v5, 0x0

    .line 10
    .line 11
    cmp-long v7, v1, v5

    .line 12
    .line 13
    const/16 v8, 0x10

    .line 14
    .line 15
    const/4 v9, 0x1

    .line 16
    if-nez v7, :cond_0

    .line 17
    .line 18
    aput-wide v3, p0, v0

    .line 19
    .line 20
    :goto_0
    if-ge v9, v8, :cond_3

    .line 21
    .line 22
    add-int v0, p1, v9

    .line 23
    .line 24
    add-int v1, p3, v9

    .line 25
    .line 26
    aget-wide v1, p2, v1

    .line 27
    .line 28
    aput-wide v1, p0, v0

    .line 29
    .line 30
    add-int/lit8 v9, v9, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    cmp-long v5, v3, v5

    .line 34
    .line 35
    if-lez v5, :cond_3

    .line 36
    .line 37
    add-long v5, v1, v3

    .line 38
    .line 39
    aput-wide v5, p0, v0

    .line 40
    .line 41
    :goto_1
    if-ge v9, v8, :cond_3

    .line 42
    .line 43
    add-int v0, p1, v9

    .line 44
    .line 45
    aget-wide v10, p0, v0

    .line 46
    .line 47
    add-int v7, p3, v9

    .line 48
    .line 49
    aget-wide v12, p2, v7

    .line 50
    .line 51
    cmp-long v10, v10, v12

    .line 52
    .line 53
    if-lez v10, :cond_1

    .line 54
    .line 55
    aput-wide v12, p0, v0

    .line 56
    .line 57
    :cond_1
    add-int/lit8 v10, v0, 0x1

    .line 58
    .line 59
    aget-wide v11, p0, v10

    .line 60
    .line 61
    long-to-double v11, v11

    .line 62
    long-to-double v13, v1

    .line 63
    mul-double/2addr v11, v13

    .line 64
    add-int/lit8 v13, v7, 0x1

    .line 65
    .line 66
    aget-wide v13, p2, v13

    .line 67
    .line 68
    long-to-double v13, v13

    .line 69
    move v15, v9

    .line 70
    long-to-double v8, v3

    .line 71
    mul-double/2addr v13, v8

    .line 72
    add-double/2addr v13, v11

    .line 73
    long-to-double v8, v5

    .line 74
    div-double/2addr v13, v8

    .line 75
    double-to-long v8, v13

    .line 76
    aput-wide v8, p0, v10

    .line 77
    .line 78
    add-int/lit8 v0, v0, 0x2

    .line 79
    .line 80
    aget-wide v8, p0, v0

    .line 81
    .line 82
    add-int/lit8 v7, v7, 0x2

    .line 83
    .line 84
    aget-wide v10, p2, v7

    .line 85
    .line 86
    cmp-long v7, v8, v10

    .line 87
    .line 88
    if-gez v7, :cond_2

    .line 89
    .line 90
    aput-wide v10, p0, v0

    .line 91
    .line 92
    :cond_2
    add-int/lit8 v9, v15, 0x3

    .line 93
    .line 94
    const/16 v8, 0x10

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;[I[I)V
    .locals 17

    .line 1
    move-object/from16 v6, p1

    .line 2
    .line 3
    move-object/from16 v7, p3

    .line 4
    .line 5
    move-object/from16 v8, p4

    .line 6
    .line 7
    const/4 v10, 0x0

    .line 8
    move v11, v10

    .line 9
    const/4 v0, -0x1

    .line 10
    :goto_0
    array-length v1, v7

    .line 11
    if-ge v11, v1, :cond_6

    .line 12
    .line 13
    move v12, v10

    .line 14
    const/4 v1, -0x1

    .line 15
    :goto_1
    array-length v2, v8

    .line 16
    if-ge v12, v2, :cond_5

    .line 17
    .line 18
    aget v2, v7, v11

    .line 19
    .line 20
    aget v3, v8, v12

    .line 21
    .line 22
    add-int v4, v2, v3

    .line 23
    .line 24
    mul-int/lit8 v13, v4, 0xe

    .line 25
    .line 26
    int-to-byte v4, v13

    .line 27
    move-object/from16 v14, p0

    .line 28
    .line 29
    invoke-virtual {v14, v4, v10}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValueForId(BI)J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    const-wide/16 v15, 0x0

    .line 34
    .line 35
    cmp-long v15, v4, v15

    .line 36
    .line 37
    if-lez v15, :cond_4

    .line 38
    .line 39
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    array-length v15, v7

    .line 43
    const/4 v9, 0x1

    .line 44
    if-le v15, v9, :cond_1

    .line 45
    .line 46
    if-eq v0, v2, :cond_0

    .line 47
    .line 48
    move v0, v2

    .line 49
    goto :goto_2

    .line 50
    :cond_0
    const/4 v0, -0x1

    .line 51
    :goto_2
    invoke-static {v6, v0}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 52
    .line 53
    .line 54
    move v15, v2

    .line 55
    goto :goto_3

    .line 56
    :cond_1
    move v15, v0

    .line 57
    :goto_3
    array-length v0, v8

    .line 58
    if-le v0, v9, :cond_3

    .line 59
    .line 60
    if-eq v1, v3, :cond_2

    .line 61
    .line 62
    move v0, v3

    .line 63
    goto :goto_4

    .line 64
    :cond_2
    const/4 v0, -0x1

    .line 65
    :goto_4
    invoke-static {v6, v0, v10}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 66
    .line 67
    .line 68
    move v9, v3

    .line 69
    goto :goto_5

    .line 70
    :cond_3
    move v9, v1

    .line 71
    :goto_5
    const-string v0, ": "

    .line 72
    .line 73
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 77
    .line 78
    .line 79
    const-string v0, " samples:"

    .line 80
    .line 81
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string v3, "  Cached"

    .line 85
    .line 86
    const/4 v5, 0x1

    .line 87
    move-object/from16 v0, p0

    .line 88
    .line 89
    move-object/from16 v1, p1

    .line 90
    .line 91
    move-object/from16 v2, p2

    .line 92
    .line 93
    move v4, v13

    .line 94
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    .line 95
    .line 96
    .line 97
    const-string v3, "  Free"

    .line 98
    .line 99
    const/4 v5, 0x4

    .line 100
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    .line 101
    .line 102
    .line 103
    const-string v3, "  ZRam"

    .line 104
    .line 105
    const/4 v5, 0x7

    .line 106
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    .line 107
    .line 108
    .line 109
    const-string v3, "  Kernel"

    .line 110
    .line 111
    const/16 v5, 0xa

    .line 112
    .line 113
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    .line 114
    .line 115
    .line 116
    const-string v3, "  Native"

    .line 117
    .line 118
    const/16 v5, 0xd

    .line 119
    .line 120
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    .line 121
    .line 122
    .line 123
    move v1, v9

    .line 124
    move v0, v15

    .line 125
    :cond_4
    add-int/lit8 v12, v12, 0x1

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_5
    move-object/from16 v14, p0

    .line 129
    .line 130
    add-int/lit8 v11, v11, 0x1

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_6
    move-object/from16 v14, p0

    .line 134
    .line 135
    return-void
.end method

.method public getTotalMemUsage()[J
    .locals 6

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [J

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    if-ge v3, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v3}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyAt(I)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-virtual {p0, v4}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getArrayForKey(I)[J

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-static {v0, v2, v5, v4}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeSysMemUsage([JI[JI)V

    .line 26
    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-object v0
.end method

.method public mergeStats(I[JI)V
    .locals 1

    int-to-byte p1, p1

    const/16 v0, 0x10

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getOrAddKey(BI)I

    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getArrayForKey(I)[J

    move-result-object v0

    .line 9
    invoke-static {p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result p1

    .line 10
    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeSysMemUsage([JI[JI)V

    return-void
.end method

.method public mergeStats(Lcom/android/internal/app/procstats/SysMemUsageTable;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyAt(I)I

    move-result v2

    .line 3
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    .line 4
    invoke-virtual {p1, v2}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getArrayForKey(I)[J

    move-result-object v4

    .line 5
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v2

    .line 6
    invoke-virtual {p0, v3, v4, v2}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeStats(I[JI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
