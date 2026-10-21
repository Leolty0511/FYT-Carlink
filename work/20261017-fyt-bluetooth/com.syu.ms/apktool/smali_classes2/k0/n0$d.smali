.class public Lk0/n0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/n0;


# direct methods
.method public constructor <init>(Lk0/n0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/n0$d;->a:Lk0/n0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/n0$d;->a:Lk0/n0;

    const/4 v1, 0x4

    iput v1, v0, Lk0/n0;->u:I

    .line 2
    invoke-static {v0}, Lk0/n0;->d3(Lk0/n0;)V

    return-void
.end method
