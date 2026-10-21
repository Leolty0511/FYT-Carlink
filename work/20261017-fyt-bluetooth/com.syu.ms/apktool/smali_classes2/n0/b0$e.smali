.class public Ln0/b0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/b0;


# direct methods
.method public constructor <init>(Ln0/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/b0$e;->a:Ln0/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->f:I

    if-nez v0, :cond_0

    sget v0, Ly0/f;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Ly0/b;->x()V

    :cond_0
    return-void
.end method
