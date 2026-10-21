.class Landroid/service/voice/VoiceInteractionSession$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/voice/VoiceInteractionSession;


# direct methods
.method public constructor <init>(Landroid/service/voice/VoiceInteractionSession;)V
    .locals 0

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$3;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$3;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 2
    .line 3
    iget-object v1, v0, Landroid/service/voice/VoiceInteractionSession;->mTmpInsets:Landroid/service/voice/VoiceInteractionSession$Insets;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/service/voice/VoiceInteractionSession;->onComputeInsets(Landroid/service/voice/VoiceInteractionSession$Insets;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    .line 9
    .line 10
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$3;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 11
    .line 12
    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mTmpInsets:Landroid/service/voice/VoiceInteractionSession$Insets;

    .line 13
    .line 14
    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    .line 20
    .line 21
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$3;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 22
    .line 23
    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mTmpInsets:Landroid/service/voice/VoiceInteractionSession$Insets;

    .line 24
    .line 25
    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    .line 31
    .line 32
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$3;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 33
    .line 34
    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mTmpInsets:Landroid/service/voice/VoiceInteractionSession$Insets;

    .line 35
    .line 36
    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession$Insets;->touchableRegion:Landroid/graphics/Region;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$3;->this$0:Landroid/service/voice/VoiceInteractionSession;

    .line 42
    .line 43
    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession;->mTmpInsets:Landroid/service/voice/VoiceInteractionSession$Insets;

    .line 44
    .line 45
    iget v0, v0, Landroid/service/voice/VoiceInteractionSession$Insets;->touchableInsets:I

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
