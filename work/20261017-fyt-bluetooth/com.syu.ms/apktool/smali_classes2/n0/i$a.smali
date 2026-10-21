.class public Ln0/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/i;->P2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/i;


# direct methods
.method public constructor <init>(Ln0/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/i$a;->a:Ln0/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x6e

    .line 2
    invoke-static {v0}, Lo1/n0;->d(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lo1/n0;->b()V

    :goto_0
    return-void
.end method
