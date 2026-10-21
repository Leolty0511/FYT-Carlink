.class public Lk0/c4$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/c4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/c4;


# direct methods
.method public constructor <init>(Lk0/c4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/c4$d;->a:Lk0/c4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/c4$d;->a:Lk0/c4;

    invoke-static {v0}, Lk0/c4;->i3(Lk0/c4;)V

    return-void
.end method
