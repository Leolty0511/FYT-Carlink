.class public Lcom/android/internal/app/procstats/PssTable;
.super Lcom/android/internal/app/procstats/SparseMappingTable$Table;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    return-void
.end method


# virtual methods
.method public mergeStats(IIJJJJJJ)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move-wide/from16 v10, p11

    move/from16 v12, p1

    move-wide/from16 v13, p13

    int-to-byte v12, v12

    const/4 v15, 0x7

    .line 12
    invoke-virtual {v0, v12, v15}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getOrAddKey(BI)I

    move-result v12

    const/4 v15, 0x0

    .line 13
    invoke-virtual {v0, v12, v15}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValue(II)J

    move-result-wide v13

    const-wide/16 v16, 0x0

    cmp-long v16, v13, v16

    const/4 v15, 0x1

    if-nez v16, :cond_0

    int-to-long v13, v1

    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v12, v1, v13, v14}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->setValue(IIJ)V

    .line 15
    invoke-virtual {v0, v12, v15, v2, v3}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->setValue(IIJ)V

    const/4 v1, 0x2

    .line 16
    invoke-virtual {v0, v12, v1, v4, v5}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->setValue(IIJ)V

    const/4 v1, 0x3

    .line 17
    invoke-virtual {v0, v12, v1, v6, v7}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->setValue(IIJ)V

    const/4 v1, 0x4

    .line 18
    invoke-virtual {v0, v12, v1, v8, v9}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->setValue(IIJ)V

    const/4 v1, 0x5

    .line 19
    invoke-virtual {v0, v12, v1, v10, v11}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->setValue(IIJ)V

    move-wide/from16 v13, p13

    const/4 v1, 0x6

    .line 20
    invoke-virtual {v0, v12, v1, v13, v14}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->setValue(IIJ)V

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    int-to-long v10, v1

    add-long/2addr v10, v13

    .line 21
    invoke-virtual {v0, v12, v15, v10, v11}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->setValue(IIJ)V

    const/4 v15, 0x1

    .line 22
    invoke-virtual {v0, v12, v15}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValue(II)J

    move-result-wide v18

    cmp-long v16, v18, v2

    if-lez v16, :cond_1

    .line 23
    invoke-virtual {v0, v12, v15, v2, v3}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->setValue(IIJ)V

    :cond_1
    const/4 v2, 0x2

    .line 24
    invoke-virtual {v0, v12, v2}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValue(II)J

    move-result-wide v8

    long-to-double v8, v8

    long-to-double v13, v13

    mul-double/2addr v8, v13

    long-to-double v3, v4

    move-wide v15, v13

    int-to-double v13, v1

    mul-double/2addr v3, v13

    add-double/2addr v3, v8

    long-to-double v8, v10

    div-double/2addr v3, v8

    double-to-long v3, v3

    .line 25
    invoke-virtual {v0, v12, v2, v3, v4}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->setValue(IIJ)V

    const/4 v1, 0x3

    .line 26
    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValue(II)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-gez v2, :cond_2

    .line 27
    invoke-virtual {v0, v12, v1, v6, v7}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->setValue(IIJ)V

    :cond_2
    const/4 v1, 0x4

    .line 28
    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValue(II)J

    move-result-wide v2

    move-wide/from16 v4, p9

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 29
    invoke-virtual {v0, v12, v1, v4, v5}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->setValue(IIJ)V

    :cond_3
    const/4 v1, 0x5

    .line 30
    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValue(II)J

    move-result-wide v2

    long-to-double v2, v2

    mul-double/2addr v2, v15

    move-wide/from16 v4, p11

    long-to-double v4, v4

    mul-double/2addr v4, v13

    add-double/2addr v4, v2

    div-double/2addr v4, v8

    double-to-long v2, v4

    .line 31
    invoke-virtual {v0, v12, v1, v2, v3}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->setValue(IIJ)V

    const/4 v1, 0x6

    .line 32
    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValue(II)J

    move-result-wide v2

    move-wide/from16 v4, p13

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    .line 33
    invoke-virtual {v0, v12, v1, v4, v5}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->setValue(IIJ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public mergeStats(Lcom/android/internal/app/procstats/PssTable;)V
    .locals 20

    move-object/from16 v0, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 2
    invoke-virtual {v0, v3}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyAt(I)I

    move-result v4

    .line 3
    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v6

    .line 4
    invoke-virtual {v0, v4, v2}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValue(II)J

    move-result-wide v7

    long-to-int v7, v7

    const/4 v5, 0x1

    .line 5
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValue(II)J

    move-result-wide v8

    const/4 v5, 0x2

    .line 6
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValue(II)J

    move-result-wide v10

    const/4 v5, 0x3

    .line 7
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValue(II)J

    move-result-wide v12

    const/4 v5, 0x4

    .line 8
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValue(II)J

    move-result-wide v14

    const/4 v5, 0x5

    .line 9
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValue(II)J

    move-result-wide v16

    const/4 v5, 0x6

    .line 10
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValue(II)J

    move-result-wide v18

    move-object/from16 v5, p0

    .line 11
    invoke-virtual/range {v5 .. v19}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(IIJJJJJJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
