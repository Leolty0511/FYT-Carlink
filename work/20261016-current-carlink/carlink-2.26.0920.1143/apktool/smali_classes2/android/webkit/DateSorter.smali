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

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v1, v0, [J

    .line 6
    .line 7
    iput-object v1, p0, Landroid/webkit/DateSorter;->mBins:[J

    .line 8
    .line 9
    const/4 v1, 0x5

    .line 10
    new-array v1, v1, [Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {p0, v2}, Landroid/webkit/DateSorter;->beginningOfDay(Ljava/util/Calendar;)V

    .line 23
    .line 24
    .line 25
    iget-object v3, p0, Landroid/webkit/DateSorter;->mBins:[J

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    const/4 v6, 0x0

    .line 32
    aput-wide v4, v3, v6

    .line 33
    .line 34
    const/4 v3, 0x6

    .line 35
    const/4 v4, -0x1

    .line 36
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 37
    .line 38
    .line 39
    iget-object v5, p0, Landroid/webkit/DateSorter;->mBins:[J

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v7

    .line 45
    const/4 v9, 0x1

    .line 46
    aput-wide v7, v5, v9

    .line 47
    .line 48
    const/4 v5, -0x6

    .line 49
    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->add(II)V

    .line 50
    .line 51
    .line 52
    iget-object v5, p0, Landroid/webkit/DateSorter;->mBins:[J

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 55
    .line 56
    .line 57
    move-result-wide v7

    .line 58
    const/4 v10, 0x2

    .line 59
    aput-wide v7, v5, v10

    .line 60
    .line 61
    const/4 v5, 0x7

    .line 62
    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->add(II)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v10, v4}, Ljava/util/Calendar;->add(II)V

    .line 66
    .line 67
    .line 68
    iget-object v3, p0, Landroid/webkit/DateSorter;->mBins:[J

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 71
    .line 72
    .line 73
    move-result-wide v7

    .line 74
    const/4 v2, 0x3

    .line 75
    aput-wide v7, v3, v2

    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 82
    .line 83
    if-nez v3, :cond_0

    .line 84
    .line 85
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    :cond_0
    invoke-static {v3}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    iget-object v4, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    .line 94
    .line 95
    iget-object v7, v3, Llibcore/icu/LocaleData;->today:Ljava/lang/String;

    .line 96
    .line 97
    aput-object v7, v4, v6

    .line 98
    .line 99
    iget-object v4, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    .line 100
    .line 101
    iget-object v3, v3, Llibcore/icu/LocaleData;->yesterday:Ljava/lang/String;

    .line 102
    .line 103
    aput-object v3, v4, v9

    .line 104
    .line 105
    const v3, 0x1150012

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    iget-object v3, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    .line 113
    .line 114
    new-array v4, v9, [Ljava/lang/Object;

    .line 115
    .line 116
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    aput-object v5, v4, v6

    .line 121
    .line 122
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    aput-object v1, v3, v10

    .line 127
    .line 128
    iget-object v1, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    .line 129
    .line 130
    const v3, 0x10402e2

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    aput-object v3, v1, v2

    .line 138
    .line 139
    iget-object v1, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    .line 140
    .line 141
    const v2, 0x10403ef

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    aput-object p1, v1, v0

    .line 149
    .line 150
    return-void
.end method

.method private beginningOfDay(Ljava/util/Calendar;)V
    .locals 2

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 5
    .line 6
    .line 7
    const/16 v0, 0xc

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 10
    .line 11
    .line 12
    const/16 v0, 0xd

    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 15
    .line 16
    .line 17
    const/16 v0, 0xe

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 20
    .line 21
    .line 22
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

    :cond_0
    iget-object v0, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method
