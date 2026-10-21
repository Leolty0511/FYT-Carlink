.class public Lcom/android/internal/app/procstats/DurationsTable;
.super Lcom/android/internal/app/procstats/SparseMappingTable$Table;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    return-void
.end method


# virtual methods
.method public addDuration(IJ)V
    .locals 2

    .line 1
    int-to-byte p1, p1

    .line 2
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getOrAddKey(BI)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValue(I)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    add-long/2addr v0, p2

    .line 12
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->setValue(IJ)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyAt(I)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-virtual {p1, v2}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValue(I)J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method
