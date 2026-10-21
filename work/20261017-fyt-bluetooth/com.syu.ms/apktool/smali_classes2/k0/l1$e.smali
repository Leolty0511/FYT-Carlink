.class public Lk0/l1$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/l1;


# direct methods
.method public constructor <init>(Lk0/l1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/l1$e;->a:Lk0/l1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/l1$e;->a:Lk0/l1;

    const/4 v1, 0x0

    iput v1, v0, Lk0/l1;->B:I

    .line 2
    iput v1, v0, Lk0/l1;->A:I

    .line 3
    invoke-static {v0, v1}, Lk0/l1;->h3(Lk0/l1;I)V

    return-void
.end method
