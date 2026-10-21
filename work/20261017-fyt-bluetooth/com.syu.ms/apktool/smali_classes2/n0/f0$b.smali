.class public Ln0/f0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/f0;


# direct methods
.method public constructor <init>(Ln0/f0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/f0$b;->a:Ln0/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Ly0/f;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Ln0/f0$b;->a:Ln0/f0;

    invoke-static {v0}, Ln0/f0;->S3(Ln0/f0;)V

    :cond_1
    :goto_0
    return-void
.end method
