.class public Lg/d$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg/d;


# direct methods
.method public constructor <init>(Lg/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/d$i;->a:Lg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    sget v0, La/b;->e0:I

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/d$i;->a:Lg/d;

    invoke-static {v0}, Lg/d;->g(Lg/d;)V

    .line 3
    sget-object v0, Le1/a;->b:Le1/l;

    invoke-virtual {v0}, Le1/l;->f()V

    :cond_0
    return-void
.end method
