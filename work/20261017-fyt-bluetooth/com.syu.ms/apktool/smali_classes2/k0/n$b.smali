.class public Lk0/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/n;


# direct methods
.method public constructor <init>(Lk0/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/n$b;->a:Lk0/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/n$b;->a:Lk0/n;

    sget v1, Lu0/b;->K3:I

    invoke-static {v0, v1}, Lk0/n;->c3(Lk0/n;I)V

    return-void
.end method
