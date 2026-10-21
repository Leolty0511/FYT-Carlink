.class public Lk0/hj$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/hj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/hj;


# direct methods
.method public constructor <init>(Lk0/hj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/hj$e;->a:Lk0/hj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/hj$e;->a:Lk0/hj;

    invoke-virtual {v0}, Lk0/hj;->c3()V

    return-void
.end method
