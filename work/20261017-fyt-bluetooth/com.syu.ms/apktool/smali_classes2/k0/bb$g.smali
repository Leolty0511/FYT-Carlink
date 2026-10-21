.class public Lk0/bb$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/bb;


# direct methods
.method public constructor <init>(Lk0/bb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/bb$g;->a:Lk0/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->D:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lk0/bb$g;->a:Lk0/bb;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lk0/bb;->d3(Lk0/bb;I)V

    :cond_0
    return-void
.end method
