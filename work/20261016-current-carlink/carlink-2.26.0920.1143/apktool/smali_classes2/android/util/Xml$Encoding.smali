.class public final enum Landroid/util/Xml$Encoding;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Xml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Encoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/util/Xml$Encoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/util/Xml$Encoding;

.field public static final enum ISO_8859_1:Landroid/util/Xml$Encoding;

.field public static final enum US_ASCII:Landroid/util/Xml$Encoding;

.field public static final enum UTF_16:Landroid/util/Xml$Encoding;

.field public static final enum UTF_8:Landroid/util/Xml$Encoding;


# instance fields
.field final expatName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Landroid/util/Xml$Encoding;

    .line 2
    .line 3
    const-string v1, "US-ASCII"

    .line 4
    .line 5
    const-string v2, "US_ASCII"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Landroid/util/Xml$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Landroid/util/Xml$Encoding;->US_ASCII:Landroid/util/Xml$Encoding;

    .line 12
    .line 13
    new-instance v1, Landroid/util/Xml$Encoding;

    .line 14
    .line 15
    const-string v2, "UTF-8"

    .line 16
    .line 17
    const-string v4, "UTF_8"

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    invoke-direct {v1, v4, v5, v2}, Landroid/util/Xml$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    .line 24
    .line 25
    new-instance v2, Landroid/util/Xml$Encoding;

    .line 26
    .line 27
    const-string v4, "UTF-16"

    .line 28
    .line 29
    const-string v6, "UTF_16"

    .line 30
    .line 31
    const/4 v7, 0x2

    .line 32
    invoke-direct {v2, v6, v7, v4}, Landroid/util/Xml$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Landroid/util/Xml$Encoding;->UTF_16:Landroid/util/Xml$Encoding;

    .line 36
    .line 37
    new-instance v4, Landroid/util/Xml$Encoding;

    .line 38
    .line 39
    const-string v6, "ISO-8859-1"

    .line 40
    .line 41
    const-string v8, "ISO_8859_1"

    .line 42
    .line 43
    const/4 v9, 0x3

    .line 44
    invoke-direct {v4, v8, v9, v6}, Landroid/util/Xml$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v4, Landroid/util/Xml$Encoding;->ISO_8859_1:Landroid/util/Xml$Encoding;

    .line 48
    .line 49
    const/4 v6, 0x4

    .line 50
    new-array v6, v6, [Landroid/util/Xml$Encoding;

    .line 51
    .line 52
    aput-object v0, v6, v3

    .line 53
    .line 54
    aput-object v1, v6, v5

    .line 55
    .line 56
    aput-object v2, v6, v7

    .line 57
    .line 58
    aput-object v4, v6, v9

    .line 59
    .line 60
    sput-object v6, Landroid/util/Xml$Encoding;->$VALUES:[Landroid/util/Xml$Encoding;

    .line 61
    .line 62
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Landroid/util/Xml$Encoding;->expatName:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/util/Xml$Encoding;
    .locals 1

    const-class v0, Landroid/util/Xml$Encoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/util/Xml$Encoding;

    return-object p0
.end method

.method public static values()[Landroid/util/Xml$Encoding;
    .locals 1

    sget-object v0, Landroid/util/Xml$Encoding;->$VALUES:[Landroid/util/Xml$Encoding;

    invoke-virtual {v0}, [Landroid/util/Xml$Encoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Xml$Encoding;

    return-object v0
.end method
