.class public Landroid/webkit/DateSorter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DAY_COUNT:I = 0x5

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final NUM_DAYS_AGO:I = 0x7


# instance fields
.field private mBins:[J

.field private mLabels:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [J

    .line 2
    iput-object v1, p0, Landroid/webkit/DateSorter;->mBins:[J

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    .line 3
    iput-object v1, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 6
    invoke-direct {p0, v2}, Landroid/webkit/DateSorter;->beginningOfDay(Ljava/util/Calendar;)V

    .line 7
    iget-object v3, p0, Landroid/webkit/DateSorter;->mBins:[J

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    const/4 v3, 0x6

    const/4 v4, -0x1

    .line 8
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 9
    iget-object v5, p0, Landroid/webkit/DateSorter;->mBins:[J

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const/4 v9, 0x1

    aput-wide v7, v5, v9

    const/4 v5, -0x6

    .line 10
    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->add(II)V

    .line 11
    iget-object v5, p0, Landroid/webkit/DateSorter;->mBins:[J

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const/4 v10, 0x2

    aput-wide v7, v5, v10

    const/4 v5, 0x7

    .line 12
    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->add(II)V

    .line 13
    invoke-virtual {v2, v10, v4}, Ljava/util/Calendar;->add(II)V

    .line 14
    iget-object v3, p0, Landroid/webkit/DateSorter;->mBins:[J

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const/4 v2, 0x3

    aput-wide v7, v3, v2

    .line 15
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v3, :cond_0

    .line 16
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 17
    :cond_0
    invoke-static {v3}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v3

    .line 18
    iget-object v4, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    iget-object v7, v3, Llibcore/icu/LocaleData;->today:Ljava/lang/String;

    aput-object v7, v4, v6

    .line 19
    iget-object v4, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    iget-object v3, v3, Llibcore/icu/LocaleData;->yesterday:Ljava/lang/String;

    aput-object v3, v4, v9

    const v3, 0x1130004

    .line 20
    invoke-virtual {v1, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 21
    iget-object v3, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v10

    .line 22
    iget-object v1, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    const v3, 0x10403d3

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 23
    iget-object v1, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    const v2, 0x10403d4

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    return-void
.end method

.method private beginningOfDay(Ljava/util/Calendar;)V
    .locals 2

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 2
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 3
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 4
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    return-void
.end method


# virtual methods
.method public getBoundary(I)J
    .locals 3

    const/4 v0, 0x4

    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    if-ne p1, v0, :cond_2

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 1
    :cond_2
    iget-object v0, p0, Landroid/webkit/DateSorter;->mBins:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getIndex(J)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 1
    iget-object v1, p0, Landroid/webkit/DateSorter;->mBins:[J

    aget-wide v2, v1, v0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getLabel(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method
