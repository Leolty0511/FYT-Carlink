.class public Lk0/dh$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/dh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/dh;


# direct methods
.method public constructor <init>(Lk0/dh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/dh$b;->a:Lk0/dh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/dh$b;->a:Lk0/dh;

    sget v1, Lu0/b;->K3:I

    invoke-static {v0, v1}, Lk0/dh;->f3(Lk0/dh;I)V

    return-void
.end method
