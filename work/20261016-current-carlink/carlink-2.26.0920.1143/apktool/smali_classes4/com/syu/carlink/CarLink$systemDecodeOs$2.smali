.class final Lcom/syu/carlink/CarLink$systemDecodeOs$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lz/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/carlink/CarLink;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lz/a;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/syu/carlink/CarLink$systemDecodeOs$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/syu/carlink/CarLink$systemDecodeOs$2;

    invoke-direct {v0}, Lcom/syu/carlink/CarLink$systemDecodeOs$2;-><init>()V

    sput-object v0, Lcom/syu/carlink/CarLink$systemDecodeOs$2;->INSTANCE:Lcom/syu/carlink/CarLink$systemDecodeOs$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 5

    const-string v0, "sys.fyt.platform"

    const-string v1, ""

    .line 2
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "6316"

    const-string v2, "6315"

    const-string v3, "6318"

    const-string v4, "6523"

    .line 3
    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lt/c;->I([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/syu/carlink/CarLink$systemDecodeOs$2;->invoke()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
