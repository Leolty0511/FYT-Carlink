.class Landroid/media/Cea608CCParser$StyleCode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea608CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StyleCode"
.end annotation


# static fields
.field static final COLOR_BLUE:I = 0x2

.field static final COLOR_CYAN:I = 0x3

.field static final COLOR_GREEN:I = 0x1

.field static final COLOR_INVALID:I = 0x7

.field static final COLOR_MAGENTA:I = 0x6

.field static final COLOR_RED:I = 0x4

.field static final COLOR_WHITE:I = 0x0

.field static final COLOR_YELLOW:I = 0x5

.field static final STYLE_ITALICS:I = 0x1

.field static final STYLE_UNDERLINE:I = 0x2

.field static final mColorMap:[Ljava/lang/String;


# instance fields
.field final mColor:I

.field final mStyle:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    const-string v0, "WHITE"

    .line 2
    .line 3
    const-string v1, "GREEN"

    .line 4
    .line 5
    const-string v2, "BLUE"

    .line 6
    .line 7
    const-string v3, "CYAN"

    .line 8
    .line 9
    const-string v4, "RED"

    .line 10
    .line 11
    const-string v5, "YELLOW"

    .line 12
    .line 13
    const-string v6, "MAGENTA"

    .line 14
    .line 15
    const-string v7, "INVALID"

    .line 16
    .line 17
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Landroid/media/Cea608CCParser$StyleCode;->mColorMap:[Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/media/Cea608CCParser$StyleCode;->mStyle:I

    .line 5
    .line 6
    iput p2, p0, Landroid/media/Cea608CCParser$StyleCode;->mColor:I

    .line 7
    .line 8
    return-void
.end method

.method public static fromByte(B)Landroid/media/Cea608CCParser$StyleCode;
    .locals 3

    shr-int/lit8 v0, p0, 0x1

    const/4 v1, 0x7

    and-int/2addr v0, v1

    and-int/lit8 p0, p0, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-ne v0, v1, :cond_1

    or-int/lit8 p0, p0, 0x1

    move v0, v2

    :cond_1
    new-instance v1, Landroid/media/Cea608CCParser$StyleCode;

    invoke-direct {v1, p0, v0}, Landroid/media/Cea608CCParser$StyleCode;-><init>(II)V

    return-object v1
.end method


# virtual methods
.method public getColor()I
    .locals 1

    iget v0, p0, Landroid/media/Cea608CCParser$StyleCode;->mColor:I

    return v0
.end method

.method public isItalics()Z
    .locals 2

    iget v0, p0, Landroid/media/Cea608CCParser$StyleCode;->mStyle:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isUnderline()Z
    .locals 1

    iget v0, p0, Landroid/media/Cea608CCParser$StyleCode;->mStyle:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "{"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object v1, Landroid/media/Cea608CCParser$StyleCode;->mColorMap:[Ljava/lang/String;

    .line 10
    .line 11
    iget v2, p0, Landroid/media/Cea608CCParser$StyleCode;->mColor:I

    .line 12
    .line 13
    aget-object v1, v1, v2

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroid/media/Cea608CCParser$StyleCode;->mStyle:I

    .line 19
    .line 20
    and-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const-string v1, ", ITALICS"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    :cond_0
    iget v1, p0, Landroid/media/Cea608CCParser$StyleCode;->mStyle:I

    .line 30
    .line 31
    and-int/lit8 v1, v1, 0x2

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    const-string v1, ", UNDERLINE"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    :cond_1
    const-string/jumbo v1, "}"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method
