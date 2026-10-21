.class public Lk0/ye$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ye;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ye;


# direct methods
.method public constructor <init>(Lk0/ye;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ye$a;->a:Lk0/ye;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/ye$a;->a:Lk0/ye;

    iget v0, v0, Lk0/ye;->j:I

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ll0/c0;->x()V

    :cond_0
    return-void
.end method
