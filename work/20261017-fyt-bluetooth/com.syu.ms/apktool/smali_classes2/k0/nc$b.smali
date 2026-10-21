.class public Lk0/nc$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/nc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/nc;


# direct methods
.method public constructor <init>(Lk0/nc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/nc$b;->a:Lk0/nc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    sget-object v0, La/b;->O:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lo1/u;->k()V

    .line 3
    :cond_0
    iget-object v0, p0, Lk0/nc$b;->a:Lk0/nc;

    invoke-static {v0}, Lk0/nc;->b3(Lk0/nc;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    return-void
.end method
