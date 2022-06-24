<x-app-layout>

  <section class="text-gray-600 body-font overflow-hidden">
      <div class="container mx-auto px-5 py-24">

          <!-- {{-- Title --}} -->
          <div class="mb-12">
              <h2 class="text-2xl font-medium text-gray-900 title-font">
                  {{ $listing->title }}
              </h2>
              <!-- {{-- Tags --}} -->
              <div class="md:flex-grow mr-8 mt-2 flex items-center justify-start">
                  @foreach ($listing->tags as $tag )
                      <span class="inline-block ml-2 tracking-wide text-xs font-medium title-font py-0.5 px-1.5 border border-indigo-500 uppercase {{ $tag->slug === request()->get('tag') ? 'bg-indigo-500 text-white' : 'bg-white text-indigo-500' }}">
                          {{ $tag->name }}
                      </span>
                  @endforeach
              </div>
          </div>

          <!-- {{-- Content --}} -->
          <div class="-my-6">
              <div class="flex flex-wrap md:flex-nowrap">
                  <div class="content w-full md:w-3/4 pr-4 leading-relaxed text-base">
                    <!-- {{-- Echo  HTML content  --}} -->
                      {!! $listing->content !!}
                  </div>
                  <!-- {{-- Sidebar Area --}} -->
                  <div class="w-full md:w-1/4 pl-4">
                      {{-- Image --}}
                      <!-- asset('storage/uploads/pic1.png)
                      src="/storage/{{ $listing->logo  }}" -->
                      <img 
                        src="/storage/{{ $listing->logo }}" 
                        alt="{{ $listing->company }} logo" 
                        class="max-w-full mb-4"
                      >
                      <!-- {{-- Location AND Company name --}} -->
                      <p class="leading-relaxed text-base">
                          <strong> Location: </strong> {{ $listing->location }} <br>
                          <strong> Company: </strong> {{ $listing->company }} <br>                         
                      </p>
                      <!-- {{-- Application link --}} -->
                      <a href="{{ route('listings.apply',$listing->id) }}" class="block text-center my-4 tracking-wide bg-white text-indigo-500 text-sm font-medium title-font py-2 border border-indigo-500 hover:bg-indigo-500 hover:text-white uppercase">Apply Now</a>
                  </div>
              </div>
          </div>
          
      </div>
  </section>

</x-app-layout>
