.class final Lcom/syu/carlink/MainActivity$replace$2$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lz/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lz/l;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/syu/carlink/MainActivity$replace$2$2$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/syu/carlink/MainActivity$replace$2$2$1;

    invoke-direct {v0}, Lcom/syu/carlink/MainActivity$replace$2$2$1;-><init>()V

    sput-object v0, Lcom/syu/carlink/MainActivity$replace$2$2$1;->INSTANCE:Lcom/syu/carlink/MainActivity$replace$2$2$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/syu/carlink/MainActivity$replace$2$2$1;->invoke(Z)V

    sget-object p1, Ls/c;->a:Ls/c;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 2

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "persist.lsec.carlink.ionger"

    const-string v1, "value"

    .line 3
    invoke-static {p1, v1}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
