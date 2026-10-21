.class Landroid/speech/RecognitionService$StartListeningArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/RecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StartListeningArgs"
.end annotation


# instance fields
.field public final mCallingUid:I

.field public final mIntent:Landroid/content/Intent;

.field public final mListener:Landroid/speech/IRecognitionListener;

.field final synthetic this$0:Landroid/speech/RecognitionService;


# direct methods
.method public constructor <init>(Landroid/speech/RecognitionService;Landroid/content/Intent;Landroid/speech/IRecognitionListener;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/speech/RecognitionService$StartListeningArgs;->this$0:Landroid/speech/RecognitionService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroid/speech/RecognitionService$StartListeningArgs;->mIntent:Landroid/content/Intent;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/speech/RecognitionService$StartListeningArgs;->mListener:Landroid/speech/IRecognitionListener;

    .line 9
    .line 10
    iput p4, p0, Landroid/speech/RecognitionService$StartListeningArgs;->mCallingUid:I

    .line 11
    .line 12
    return-void
.end method
