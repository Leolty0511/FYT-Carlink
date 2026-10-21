.class public Ln0/c4$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/c4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/c4;


# direct methods
.method public constructor <init>(Ln0/c4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/c4$q;->a:Ln0/c4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public R(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "com.dofun.dofunweather.main"

    .line 1
    invoke-static {p1}, La/i;->C(Ljava/lang/String;)V

    const-string p1, "com.dofun.variety"

    .line 2
    invoke-static {p1}, La/i;->C(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
