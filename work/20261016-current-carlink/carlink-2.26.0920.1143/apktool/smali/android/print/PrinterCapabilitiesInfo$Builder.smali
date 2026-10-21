.class public final Landroid/print/PrinterCapabilitiesInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrinterCapabilitiesInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mPrototype:Landroid/print/PrinterCapabilitiesInfo;


# direct methods
.method public constructor <init>(Landroid/print/PrinterId;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    new-instance p1, Landroid/print/PrinterCapabilitiesInfo;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/print/PrinterCapabilitiesInfo;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string/jumbo v0, "printerId cannot be null."

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public static synthetic a(I)V
    .locals 0

    invoke-static {p0}, Landroid/print/PrinterCapabilitiesInfo$Builder;->lambda$setColorModes$0(I)V

    return-void
.end method

.method public static synthetic b(I)V
    .locals 0

    invoke-static {p0}, Landroid/print/PrinterCapabilitiesInfo$Builder;->lambda$setDuplexModes$1(I)V

    return-void
.end method

.method private static synthetic lambda$setColorModes$0(I)V
    .locals 0

    invoke-static {p0}, Landroid/print/PrintAttributes;->enforceValidColorMode(I)V

    return-void
.end method

.method private static synthetic lambda$setDuplexModes$1(I)V
    .locals 0

    invoke-static {p0}, Landroid/print/PrintAttributes;->enforceValidDuplexMode(I)V

    return-void
.end method

.method private throwIfDefaultAlreadySpecified(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$100(Landroid/print/PrinterCapabilitiesInfo;)[I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v0, "Default already specified."

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1
.end method


# virtual methods
.method public addMediaSize(Landroid/print/PrintAttributes$MediaSize;Z)Landroid/print/PrinterCapabilitiesInfo$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$000(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/print/PrinterCapabilitiesInfo;->access$002(Landroid/print/PrinterCapabilitiesInfo;Ljava/util/List;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    .line 20
    .line 21
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$000(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    .line 30
    .line 31
    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->access$000(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/print/PrinterCapabilitiesInfo$Builder;->throwIfDefaultAlreadySpecified(I)V

    .line 42
    .line 43
    .line 44
    iget-object p2, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    .line 45
    .line 46
    invoke-static {p2}, Landroid/print/PrinterCapabilitiesInfo;->access$100(Landroid/print/PrinterCapabilitiesInfo;)[I

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    aput v0, p2, p1

    .line 51
    .line 52
    :cond_1
    return-object p0
.end method

.method public addResolution(Landroid/print/PrintAttributes$Resolution;Z)Landroid/print/PrinterCapabilitiesInfo$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$200(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/print/PrinterCapabilitiesInfo;->access$202(Landroid/print/PrinterCapabilitiesInfo;Ljava/util/List;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    .line 20
    .line 21
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$200(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    .line 30
    .line 31
    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->access$200(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    invoke-direct {p0, p1}, Landroid/print/PrinterCapabilitiesInfo$Builder;->throwIfDefaultAlreadySpecified(I)V

    .line 42
    .line 43
    .line 44
    iget-object p2, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    .line 45
    .line 46
    invoke-static {p2}, Landroid/print/PrinterCapabilitiesInfo;->access$100(Landroid/print/PrinterCapabilitiesInfo;)[I

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    aput v0, p2, p1

    .line 51
    .line 52
    :cond_1
    return-object p0
.end method

.method public build()Landroid/print/PrinterCapabilitiesInfo;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$000(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_7

    .line 8
    .line 9
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$000(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_7

    .line 20
    .line 21
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    .line 22
    .line 23
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$100(Landroid/print/PrinterCapabilitiesInfo;)[I

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    aget v0, v0, v1

    .line 29
    .line 30
    const/4 v1, -0x1

    .line 31
    if-eq v0, v1, :cond_6

    .line 32
    .line 33
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    .line 34
    .line 35
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$200(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_5

    .line 40
    .line 41
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    .line 42
    .line 43
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$200(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_5

    .line 52
    .line 53
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    .line 54
    .line 55
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$100(Landroid/print/PrinterCapabilitiesInfo;)[I

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const/4 v2, 0x1

    .line 60
    aget v0, v0, v2

    .line 61
    .line 62
    if-eq v0, v1, :cond_4

    .line 63
    .line 64
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    .line 65
    .line 66
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$500(Landroid/print/PrinterCapabilitiesInfo;)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    .line 73
    .line 74
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$100(Landroid/print/PrinterCapabilitiesInfo;)[I

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const/4 v3, 0x2

    .line 79
    aget v0, v0, v3

    .line 80
    .line 81
    if-eq v0, v1, :cond_2

    .line 82
    .line 83
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    .line 84
    .line 85
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$600(Landroid/print/PrinterCapabilitiesInfo;)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_0

    .line 90
    .line 91
    invoke-virtual {p0, v2, v2}, Landroid/print/PrinterCapabilitiesInfo$Builder;->setDuplexModes(II)Landroid/print/PrinterCapabilitiesInfo$Builder;

    .line 92
    .line 93
    .line 94
    :cond_0
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    .line 95
    .line 96
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$300(Landroid/print/PrinterCapabilitiesInfo;)Landroid/print/PrintAttributes$Margins;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-eqz v0, :cond_1

    .line 101
    .line 102
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    .line 103
    .line 104
    return-object v0

    .line 105
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 106
    .line 107
    const-string/jumbo v1, "margins cannot be null"

    .line 108
    .line 109
    .line 110
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v0

    .line 114
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 115
    .line 116
    const-string v1, "No default color mode specified."

    .line 117
    .line 118
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw v0

    .line 122
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 123
    .line 124
    const-string v1, "No color mode specified."

    .line 125
    .line 126
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw v0

    .line 130
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 131
    .line 132
    const-string v1, "No default resolution specified."

    .line 133
    .line 134
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v0

    .line 138
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 139
    .line 140
    const-string v1, "No resolution specified."

    .line 141
    .line 142
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v0

    .line 146
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 147
    .line 148
    const-string v1, "No default media size specified."

    .line 149
    .line 150
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw v0

    .line 154
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 155
    .line 156
    const-string v1, "No media size specified."

    .line 157
    .line 158
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw v0
.end method

.method public setColorModes(II)Landroid/print/PrinterCapabilitiesInfo$Builder;
    .locals 2

    .line 1
    new-instance v0, Landroid/print/a;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Landroid/print/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Landroid/print/PrinterCapabilitiesInfo;->access$400(ILjava/util/function/IntConsumer;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Landroid/print/PrintAttributes;->enforceValidColorMode(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    .line 14
    .line 15
    invoke-static {v0, p1}, Landroid/print/PrinterCapabilitiesInfo;->access$502(Landroid/print/PrinterCapabilitiesInfo;I)I

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    .line 19
    .line 20
    invoke-static {p1}, Landroid/print/PrinterCapabilitiesInfo;->access$100(Landroid/print/PrinterCapabilitiesInfo;)[I

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 v0, 0x2

    .line 25
    aput p2, p1, v0

    .line 26
    .line 27
    return-object p0
.end method

.method public setDuplexModes(II)Landroid/print/PrinterCapabilitiesInfo$Builder;
    .locals 2

    .line 1
    new-instance v0, Landroid/print/a;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Landroid/print/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Landroid/print/PrinterCapabilitiesInfo;->access$400(ILjava/util/function/IntConsumer;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Landroid/print/PrintAttributes;->enforceValidDuplexMode(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    .line 14
    .line 15
    invoke-static {v0, p1}, Landroid/print/PrinterCapabilitiesInfo;->access$602(Landroid/print/PrinterCapabilitiesInfo;I)I

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    .line 19
    .line 20
    invoke-static {p1}, Landroid/print/PrinterCapabilitiesInfo;->access$100(Landroid/print/PrinterCapabilitiesInfo;)[I

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 v0, 0x3

    .line 25
    aput p2, p1, v0

    .line 26
    .line 27
    return-object p0
.end method

.method public setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrinterCapabilitiesInfo$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroid/print/PrinterCapabilitiesInfo;->access$302(Landroid/print/PrinterCapabilitiesInfo;Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Margins;

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string/jumbo v0, "margins cannot be null"

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method
