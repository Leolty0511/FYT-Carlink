.class public Lg/d$f;
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
    iput-object p1, p0, Lg/d$f;->a:Lg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lw0/d;->a:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lg/d$f;->a:Lg/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lg/d;->w(Lg/d;I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lg/d$f;->a:Lg/d;

    invoke-static {v0, v1}, Lg/d;->w(Lg/d;I)V

    :goto_0
    return-void
.end method
