.class public Ln0/y2$p;
.super Lc/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/y2;->L3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ln0/y2;


# direct methods
.method public constructor <init>(Ln0/y2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/y2$p;->e:Ln0/y2;

    invoke-direct {p0}, Lc/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)Z
    .locals 1

    const/4 p1, 0x7

    .line 1
    invoke-static {p1}, Lg/f;->f(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "com.syu.eq.dialog"

    const-string v0, "com.syu.eq"

    .line 2
    invoke-static {p1, v0}, Lo1/u;->C0(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
