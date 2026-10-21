.class Landroid/media/MediaActionSound$SoundState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaActionSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SoundState"
.end annotation


# instance fields
.field public id:I

.field public final name:I

.field public state:I

.field final synthetic this$0:Landroid/media/MediaActionSound;


# direct methods
.method public constructor <init>(Landroid/media/MediaActionSound;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/MediaActionSound$SoundState;->this$0:Landroid/media/MediaActionSound;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Landroid/media/MediaActionSound$SoundState;->name:I

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Landroid/media/MediaActionSound$SoundState;->id:I

    .line 10
    .line 11
    iput p1, p0, Landroid/media/MediaActionSound$SoundState;->state:I

    .line 12
    .line 13
    return-void
.end method
