.class public Lg/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf1/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg/m;


# direct methods
.method public constructor <init>(Lg/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/m$a;->a:Lg/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf1/q;I)V
    .locals 1

    .line 1
    sget-object p2, Lg/m;->Q0:[I

    invoke-virtual {p1, p2}, Lf1/q;->q([I)Z

    const-string p2, "persist.lsec.params"

    const-string v0, ""

    .line 2
    invoke-static {p2, v0}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {p2}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {p2}, Lo1/s0;->D(Ljava/lang/String;)[I

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p1, p2}, Lf1/q;->q([I)Z

    :cond_0
    return-void
.end method
