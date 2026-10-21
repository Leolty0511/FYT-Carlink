.class public Lk0/o3$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/o3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/o3;


# direct methods
.method public constructor <init>(Lk0/o3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/o3$c;->a:Lk0/o3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/o3$c;->a:Lk0/o3;

    sget v1, Lu0/b;->K3:I

    invoke-static {v0, v1}, Lk0/o3;->d3(Lk0/o3;I)V

    return-void
.end method
