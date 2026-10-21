.class public Ln0/e0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/e0;


# direct methods
.method public constructor <init>(Ln0/e0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/e0$c;->a:Ln0/e0;

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
    iget-object v0, p0, Ln0/e0$c;->a:Ln0/e0;

    invoke-static {v0}, Ln0/e0;->S3(Ln0/e0;)V

    :goto_0
    return-void
.end method
