.class public final enum Lbase/Configure$Key;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbase/Configure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbase/Configure$Key;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lbase/Configure$Key;

.field public static final enum c:Lbase/Configure$Key;

.field public static final enum d:Lbase/Configure$Key;

.field public static final enum e:Lbase/Configure$Key;

.field public static final enum f:Lbase/Configure$Key;

.field public static final enum g:Lbase/Configure$Key;

.field public static final enum h:Lbase/Configure$Key;

.field public static final synthetic i:[Lbase/Configure$Key;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lbase/Configure$Key;

    const-string v1, "DVD_MODULE"

    const/4 v2, 0x0

    const-string v3, "dvd_module"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Key;->b:Lbase/Configure$Key;

    .line 2
    new-instance v0, Lbase/Configure$Key;

    const-string v1, "RADIO_MODULE"

    const/4 v2, 0x1

    const-string v3, "radio_module"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Key;->c:Lbase/Configure$Key;

    .line 3
    new-instance v0, Lbase/Configure$Key;

    const-string v1, "BLUETOOTH_MODULE"

    const/4 v2, 0x2

    const-string v3, "bt_module"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Key;->d:Lbase/Configure$Key;

    .line 4
    new-instance v0, Lbase/Configure$Key;

    const-string v1, "AUDIO_MODULE"

    const/4 v2, 0x3

    const-string v3, "audio_module"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Key;->e:Lbase/Configure$Key;

    .line 5
    new-instance v0, Lbase/Configure$Key;

    const-string v1, "IMAGE_MODULE"

    const/4 v2, 0x4

    const-string v3, "image_module"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Key;->f:Lbase/Configure$Key;

    .line 6
    new-instance v0, Lbase/Configure$Key;

    const-string v1, "KEEP_SERVICES"

    const/4 v2, 0x5

    const-string v3, "keep_services"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Key;->g:Lbase/Configure$Key;

    .line 7
    new-instance v0, Lbase/Configure$Key;

    const-string v1, "DISABLE_PACKAGES"

    const/4 v2, 0x6

    const-string v3, "disable_packages"

    invoke-direct {v0, v1, v2, v3}, Lbase/Configure$Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbase/Configure$Key;->h:Lbase/Configure$Key;

    .line 8
    invoke-static {}, Lbase/Configure$Key;->a()[Lbase/Configure$Key;

    move-result-object v0

    sput-object v0, Lbase/Configure$Key;->i:[Lbase/Configure$Key;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
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
    iput-object p3, p0, Lbase/Configure$Key;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a()[Lbase/Configure$Key;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lbase/Configure$Key;

    .line 1
    sget-object v1, Lbase/Configure$Key;->b:Lbase/Configure$Key;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Key;->c:Lbase/Configure$Key;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Key;->d:Lbase/Configure$Key;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Key;->e:Lbase/Configure$Key;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Key;->f:Lbase/Configure$Key;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Key;->g:Lbase/Configure$Key;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lbase/Configure$Key;->h:Lbase/Configure$Key;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lbase/Configure$Key;
    .locals 1

    .line 1
    const-class v0, Lbase/Configure$Key;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbase/Configure$Key;

    return-object p0
.end method

.method public static values()[Lbase/Configure$Key;
    .locals 1

    .line 1
    sget-object v0, Lbase/Configure$Key;->i:[Lbase/Configure$Key;

    invoke-virtual {v0}, [Lbase/Configure$Key;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbase/Configure$Key;

    return-object v0
.end method
